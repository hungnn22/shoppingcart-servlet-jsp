<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">

<head>
<title>${page.title }</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<base href="/Asm_Sof301/">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/fontawesome-free-5.15.3-web/css/all.css">
<style>
table {
	width: 70rem !important;
}
</style>
</head>

<body>
	<div class="container border">
		<nav
			class="navbar row sticky-top navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">Online Entertainment</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<li class="nav-item"><a href="sites/home"
						class="nav-link active"><i class="fas fa-house-user"></i> Home</a></li>
					<li class="nav-item"><a href="sites/favorite" class="nav-link"><i class="fas fa-clipboard-list"></i> My Favorite</a></li>
				</div>

				<div class="dropdown ml-auto">
					<button class="btn border border-secondary dropdown-toggle"
						type="button" id="acc" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						<i class="fas fa-user-circle"></i> ${username }
					</button>
					<div class="dropdown-menu" aria-labelledby="acc">
						<a class="dropdown-item" href="sites/users/change_password">Change
							Password</a> <a class="dropdown-item" href="sites/users/edit_profile">Edit
							Profile</a> <a class="dropdown-item" href="logoff">Sign Out</a>
					</div>
				</div>
			</div>
		</nav>
		<main class="row p-4">
			<jsp:include page="${view }"></jsp:include>
		</main>
		<footer class="row footer bg-light p-2">
			<div class="col text-center">FPT Polytechnic &copy;2021. All
				rights reserved.</div>
		</footer>

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