package com.contact.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactDAO {
	
	public int insertContact(@Param("profileImg") String profileImg
							, @Param("name") String name
							, @Param("phoneNumber") String phoneNumber
							, @Param("email") String email);

}
