<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery 로드 -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!-- ajax -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
<title>create contact</title>
</head>
<body>

	<div>
		<section class="d-flex justify-content-center mt-7">
			<form action="/contact/create" method="post" enctype="multipart/form-data">
				<div>
					프로필이미지 선택 : 
					<input type="file" id="profileImgInput" name="profileImgInput">
				</div>
				<div>
					이름 : <input type="text" id="nameInput" name="nameInput" class="d-none">
				</div>
				<div>
					전화번호 : <input type="text" id="phoneNumberInput" name="phoneNumberInput" class="">
				</div>
				<div>
					이메일 : <input type="text" id="emailInput" name="emailInput">
				</div>
				<div>
					<button type="submit">저장</button>
				</div>
			</form>
		</section>
	</div>

</body>
</html>