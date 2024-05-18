package com.contact.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

public class FileManagerService {
	
	public final static String FILE_UPLOAD_PATH = "/Users/sohyun/eclipse-workspace/ContactStorage/src/main/resources/static/images/";

	private static Logger logger = LoggerFactory.getLogger(FileManagerService.class);
	
	// add File
	public static String saveFile(MultipartFile file) {
		
		if(file == null) {
			logger.error("FileManagerService::saveFile - 업로드 파일 없음");
			return null;
		}
		
		// Img Path : contactId, 올린시간 별로 파일 이름 부여
		String directoryName = System.currentTimeMillis() + "/";
		
		String filePath = FILE_UPLOAD_PATH + directoryName;
		
		// create directory 
		File directory = new File(filePath);
		if(directory.mkdir() == false) {
			logger.error("FileManagerService::saveFile - 디렉토리 생성 에러");
			return null;
		}
		
		try {
			byte[] bytes = file.getBytes();
			Path path = Paths.get(filePath + file.getOriginalFilename());
			Files.write(path, bytes);
		} catch (IOException e) {
			logger.error("FileManagerService::saveFile -  파일 저장 에러");
			e.printStackTrace();
			return null;
		}
		
		return "/images" + directoryName + file.getOriginalFilename();
	}
	
	// remove File
	public static void removeFile(String filePath) {
		
		String realFilePath = FILE_UPLOAD_PATH + filePath.replace("/images/", "");
		
		// remove file
		Path path = Paths.get(realFilePath);
		if(Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				logger.error("FileManagerService::removeFile - 파일 삭제 실패");
				e.printStackTrace();
			}
		}
		
		// remove directory
		path = path.getParent();
		
		if(Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				logger.error("FileManagerService::removeFile - 디렉토리 삭제 실패");
				e.printStackTrace();
			}
		}
	}
	
	
	
	
}
