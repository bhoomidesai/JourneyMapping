<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> 
<title>Student Journey Mapping</title>
</head>
<body>


<div class="container">
	<!-- container start -->
	<div class="row">
		<!-- row Start -->

		<div class="col-lg-3">
			<!-- empty column for space from right -->
		</div>
		<div class="col-lg-6">
			<!-- col Start -->
			<h3 class="text-leftr">
				<i class="fa fa-lock"></i>Enter Student ID :
			</h3>
			<form action="/JourneyMapping/login" method="post">
				<div class="form-group">
					<label id = "studentID" class="sr-only">Student ID </label>
					<input type="text" name = "studentID" class="form-control"/>
				</div>

				<input type = "submit" class="btn btn-sm btn-primary"  value = "Submit"/>
			</form>
		</div>
	</div>
</div>

<%@ include file="foot.jsp"%>