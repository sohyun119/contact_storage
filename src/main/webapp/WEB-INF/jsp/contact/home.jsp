<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<!-- jQuery 로드 -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- ajax -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <!-- Bootstrap JS, Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    
    <title>contact storage home</title>
</head>
<body>
	
	<c:if test="${not empty alertMessage}">
        <script type="text/javascript">
            alert("${alertMessage}");
        </script>
    </c:if>

	<div>
		<section class=" justify-content-center" style="padding: 30px;">
			<div class="d-flex justify-content-between">
				<div>
					<a href="/contact/createView" class="btn btn-dark mb-3 col-12"> + 연락처 추가 </a>
				</div>
				<div class="input-group mb-3" style="width:auto;">
					<input type="text" id="nameInput"><button id="nameSearchBtn" class="btn btn-dark">검색</button>
				</div>
			</div>
			<div style="margin-top:10px;">
				<table class="table table-dark" >
					<thead>
						<tr>
							<th>프로필</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>이메일</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="Contact" varStatus="i" items="${contactList }">
							<tr class="table-active " style="vertical-align: text-top;">
								<td>
									<img src="${Contact.profileImg }" class="border border-white col-2 " style="width:50px; height:70px; object-fit: cover">
								</td>
								<td>
									${Contact.name }
								</td>
						      	<td>
						      		${Contact.phoneNumber }
						      	</td>
						      	<td>
						      		${Contact.email }
						      	</td>
						      	<td>
						      		<button class="updateBtn btn text-white" name="updateBtn" data-update-id="${Contact.contactId }">수정</button>
						      	</td>
						      	<td>
						      		<button class="deleteBtn btn text-white" name="deleteBtn" data-delete-id="${Contact.contactId }">삭제</button>
						      	</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</section>
	</div>

	
	<script>
	
		$(document).ready(function(){
			
			$(".deleteBtn").on("click",function(){
				
				let contactId = $(this).data("delete-id");
				
				$.ajax({
					type:"get",
					url:"/contact/delete",
					data:{"contactId":contactId},
					success:function(data){
						alert("연락처를 삭제했습니다.");
						location.reload();
					},
					error:function(){
						alert("연락처 삭제실패");
					}
				});
				
			});
			
			$(".updateBtn").on("click",function(){
				
				let contactId = $(this).data("update-id");
				alert(contactId);
				
				location.href="/contact/updateView?contactId="+contactId;
				
			});
			
			
			
		});
	
	</script>

</body>
</html>