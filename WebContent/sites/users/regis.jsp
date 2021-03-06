<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
<!doctype html>
<html lang="en">

<head>
<title>Title</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body>
	<div class="container">
		<div class="row my-5">
			<form class="col-6 mx-auto" onsubmit="return validation()"
				name="form" action="${pageContext.request.contextPath }/regis"
				method="post">
				<div class="card">
					<div class="card-header">
						<h5 class="text-primary">Registration</h5>
					</div>
					<div class="card-body">
						<div class="row">
							<jsp:include page="/sites/common/inform.jsp"></jsp:include>
						</div>
						<div class="row">

							<div class="form-group col">
								<label for="">Username:</label> <input type="text"
									name="username" required id="" class="form-control"
									value="${user.username }"> <small id="helpId"
									class="text-muted">Username is required</small>
							</div>

							<div class="form-group col">
								<label for="">Password:</label> <input type="password" required
									name="password" id="" class="form-control"> <small
									id="helpId" class="text-muted">Password is required</small>
							</div>
						</div>

						<div class="row">
							<div class="form-group col">
								<label for="">Fullname:</label> <input type="text"
									name="fullname" required id="" class="form-control"
									value="${user.fullname }"> <small id="helpId"
									class="text-muted">Fullname is required</small>
							</div>

							<div class="form-group col">
								<label for="">Email Address:</label> <input type="email"
									required name="email" id="" class="form-control"
									value="${user.email }"> <small id="helpId"
									class="text-muted">Email Address is required</small>
							</div>
						</div>
					</div>
					<div class="card-footer text-right">
						<button class="btn btn-primary">
							<i class="fas fa-sign-in-alt"></i> Regis
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>

</html>