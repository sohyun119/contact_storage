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
    
    <!-- Bootstrap JS, Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    
<title>create contact</title>
</head>
<body>

	<div>
		
		<section class="d-flex justify-content-center align-items-center flex-column mt-7">
			<div style="margin-top:50px; width: full;">
				<a href="home" class="btn btn-dark btn-big">GO HOME</a>
			</div>
			
			
			
			<div style="margin:30px;">
				<form action="/contact/create" method="post" enctype="multipart/form-data">
					<div id="contactId" value="${contactId }"></div>
					<div class="mb-3" style="">
						<i class="bi bi-person-square color-black" id="imgBtn"></i><span> 이미지 선택</span>
						<input type="file" id="profileImgInput" name="profileImgInput" style="display: none">
					</div>
					<div>
						<input class="input-group mb-3" type="text" id="nameInput" name="nameInput" value="이름" >
					</div>
					<div>
						<input class="input-group mb-3" type="text" id="phoneNumberInput" name="phoneNumberInput" value="전화번호" >
					</div>
					<div>
						<input class="input-group mb-3" type="text" id="emailInput" name="emailInput" value="이메일">
					</div>
					<div>
						<button class="btn btn-dark btn-sm" type="submit" id="saveBtn">저장</button>
					</div>
				</form>
				
				
			</div>
		</section>
	</div>
	
	<script>
	
		
		
		$(document).ready(function(){
			
			$("#imgBtn").on("click",function(){
				$("#profileImgInput").click();
			});
			
			
			
		});
	
	</script>
</body>
</html>