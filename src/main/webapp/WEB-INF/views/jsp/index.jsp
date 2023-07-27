<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Maven Jenkins Docker</title>

<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Create a CI/CD pipeline for a web application</a>
		</div>
	</div>
</nav>

<div class="jumbotron">
	<div class="container">
		<h1>${title}</h1>
		<p>
			<c:if test="${not empty msg}">
				Hello ${msg}
			</c:if>

			<c:if test="${empty msg}">
				Welcome Welcome!
			</c:if>
		<p>
			<img src="https://media.licdn.com/dms/image/D4D12AQHST_rCJfp4JQ/article-cover_image-shrink_720_1280/0/1664373479168?e=2147483647&v=beta&t=FHd1kLlK0_3XVhF7tkxI0zvE2vdKPOtiEHqOaNBDl1o" style="width:200px;height:150px">
		</p>
	</div>
</div>

<div class="container">

	<div class="row">
		<div class="col-md-8">
			<h2>Welcome to LinuxWorld, Singapore,  CI CD PIPELINE PROJECT</h2>
			<h3> Republic Polytechnic FYP C300 @ Team : SOI-2023-0086 </h3>
		</div>	
	</div>


	<hr>
	<footer>
		<p>&copy; LW 2023</p>
	</footer>
</div>

<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>
