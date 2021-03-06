<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to Student Journey Mapping</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
/* Timeline */
.timeline, .timeline-horizontal {
	list-style: none;
	padding: 20px;
	position: relative;
}

.timeline:before {
	top: 40px;
	bottom: 0;
	position: absolute;
	content: " ";
	width: 3px;
	background-color: #eeeeee;
	left: 50%;
	margin-left: -1.5px;
}

.timeline .timeline-item {
	margin-bottom: 20px;
	position: relative;
}

.timeline .timeline-item:before, .timeline .timeline-item:after {
	content: "";
	display: table;
}

.timeline .timeline-item:after {
	clear: both;
}

.timeline .timeline-item .timeline-badge {
	color: #fff;
	width: 54px;
	height: 54px;
	line-height: 52px;
	font-size: 22px;
	text-align: center;
	position: absolute;
	top: 18px;
	left: 50%;
	margin-left: -25px;
	background-color: #7c7c7c;
	border: 3px solid #ffffff;
	z-index: 100;
	border-top-right-radius: 50%;
	border-top-left-radius: 50%;
	border-bottom-right-radius: 50%;
	border-bottom-left-radius: 50%;
}

.timeline .timeline-item .timeline-badge i, .timeline .timeline-item .timeline-badge .fa,
	.timeline .timeline-item .timeline-badge .glyphicon {
	top: 2px;
	left: 0px;
}

.timeline .timeline-item .timeline-badge.primary {
	background-color: #1f9eba;
}

.timeline .timeline-item .timeline-badge.info {
	background-color: #5bc0de;
}

.timeline .timeline-item .timeline-badge.success {
	background-color: #59ba1f;
}

.timeline .timeline-item .timeline-badge.warning {
	background-color: #d1bd10;
}

.timeline .timeline-item .timeline-badge.danger {
	background-color: #ba1f1f;
}

.timeline .timeline-item .timeline-panel {
	position: relative;
	width: 46%;
	float: left;
	right: 16px;
	border: 1px solid #c0c0c0;
	background: #ffffff;
	border-radius: 2px;
	padding: 20px;
	-webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
	box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
}

.timeline .timeline-item .timeline-panel:before {
	position: absolute;
	top: 26px;
	right: -16px;
	display: inline-block;
	border-top: 16px solid transparent;
	border-left: 16px solid #c0c0c0;
	border-right: 0 solid #c0c0c0;
	border-bottom: 16px solid transparent;
	content: " ";
}

.timeline .timeline-item .timeline-panel .timeline-title {
	margin-top: 0;
	color: inherit;
}

.timeline .timeline-item .timeline-panel .timeline-body>p, .timeline .timeline-item .timeline-panel .timeline-body>ul
	{
	margin-bottom: 0;
}

.timeline .timeline-item .timeline-panel .timeline-body>p+p {
	margin-top: 5px;
}

.timeline .timeline-item:last-child:nth-child(even) {
	float: right;
}

.timeline .timeline-item:nth-child(even) .timeline-panel {
	float: right;
	left: 16px;
}

.timeline .timeline-item:nth-child(even) .timeline-panel:before {
	border-left-width: 0;
	border-right-width: 14px;
	left: -14px;
	right: auto;
}

.timeline-horizontal {
	list-style: none;
	position: relative;
	padding: 20px 0px 20px 0px;
	display: inline-block;
}

.timeline-horizontal:before {
	height: 3px;
	top: auto;
	bottom: 26px;
	left: 56px;
	right: 0;
	width: 100%;
	margin-bottom: 20px;
}

.timeline-horizontal .timeline-item {
	display: table-cell;
	height: 280px;
	width: 20%;
	min-width: 280px;
	float: none !important;
	padding-left: 0px;
	padding-right: 20px;
	margin: 0 auto;
	vertical-align: bottom;
}

.timeline-horizontal .timeline-item .timeline-panel {
	top: auto;
	bottom: 64px;
	display: inline-block;
	float: none !important;
	left: 0 !important;
	right: 0 !important;
	width: 100%;
	margin-bottom: 20px;
}

.timeline-horizontal .timeline-item .timeline-panel:before {
	top: auto;
	bottom: -16px;
	left: 28px !important;
	right: auto;
	border-right: 16px solid transparent !important;
	border-top: 16px solid #c0c0c0 !important;
	border-bottom: 0 solid #c0c0c0 !important;
	border-left: 16px solid transparent !important;
}

.timeline-horizontal .timeline-item:before, .timeline-horizontal .timeline-item:after
	{
	display: none;
}

.timeline-horizontal .timeline-item .timeline-badge {
	top: auto;
	bottom: 0px;
	left: 43px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-16">
				<div class="page-header">
					<h1>Student Journey Mapping</h1>
				</div>
				<div style="display: inline-block; width: 100%; overflow-y: auto;">
					<ul class="timeline timeline-horizontal">
						<li class="timeline-item">
							<div class="timeline-badge primary">
								<i class="glyphicon glyphicon-check"></i>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">NIIT welcomes you!</h4>
									<p>
										<small class="text-muted"><i
											class="glyphicon glyphicon-time"></i> &nbsp<fmt:formatDate
												value="${student.regDate}" pattern="dd-MM-yyyy" /></small>
									</p>
								</div>
								<div class="timeline-body">
									<p>Date of registration.</p>
								</div>
							</div>
						</li>
						<fmt:parseDate type="both" value ="${student.regDate }" var="var" pattern="yyyy-MM-dd HH:mm:ss" />
						<c:forEach var="batch" items="${batch}">

							<li class="timeline-item">
								<div class="timeline-badge success">
									<i class="glyphicon glyphicon-check"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">${batch.batchCode} - ${batch.courseCode}</h4>
										<p>
											<small class="text-muted"><i
												class="glyphicon glyphicon-time"></i>&nbsp<fmt:formatDate
													value="${batch.startDate }" pattern="dd-MM-yyyy" /> </small>
										</p>
									</div>
									<div class="timeline-body">
										<p>
											awaited for

											
											<c:set var="reg" value="${var}" />
											<c:set var="diff"  value="${(batch.startDate.time - reg.time)/ (1000*60*60*24)}"  />
											<fmt:parseNumber integerOnly = "true"  type = "number" value = "${diff}" />
											<fmt:parseDate type="both" value ="${batch.endDate }" var="var" pattern="yyyy-MM-dd HH:mm:ss" />
											<%-- <jsp:useBean id="now" class="java.util.Date" />
											<fmt:parseNumber
												value="${(batch.startDate.time - student.regDate.time) / (1000*60*60*24) }"
												integerOnly="true" /> --%>
											Days
										</p>
										<fmt:formatDate value="${batch.endDate}" pattern="dd-MM-yyyy"
											var="reg" />
										<p>
											Status :
											<fmt:formatDate value="${batch.endDate}" pattern="dd-MM-yyyy"
												var="endDay" />
											<c:set var="today" value="<%=new java.util.Date()%>" />
											<c:if test="${endDay le today }">
											    Completed on <fmt:formatDate value="${batch.endDate }"
													pattern="dd-MM-yyyy" />

											</c:if>

										</p>
									</div>
								</div><c:set var="lastBatchEnd" value="${batch.endDate}" />
							</li>
						</c:forEach>
						<li class="timeline-item">
							<div class="timeline-badge danger">
								<i class="glyphicon glyphicon-check"></i>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">Current Status :</h4>
									<p>
										<small class="text-muted"><i
											class="glyphicon glyphicon-time"></i> ${student.studentStatus}</small>
									</p>
								</div>
								<div class="timeline-body">
									<p>
										
									<c:set var="status" value="${student.studentStatus}" />
									<c:choose>
										<c:when test="${status eq 'VALID'}">
												   Batch will be Completed on <b> <fmt:formatDate value="${lastBatchEnd}" pattern="dd-MM-yyyy" /> </b>wait for new batch allocation.
										</c:when>
										<c:when test="${status eq 'BREAK'}">
												   <p> On break since date:___ Please contact your centre to join back</p>
										</c:when>
										<c:when test="${status eq 'DFLT'}">
												   <p> You're defaulter please pay the fees to continue service!</p>
										</c:when>
										<c:when test="${status eq 'DRPOUT'}">
												   <p> You're defaulter please pay the fees to continue service!</p>
										</c:when>
										<c:when test="${status eq 'COMPL'}">
												   <p> You're course is completed. Please apply for certificate</p>
										</c:when>
										<c:when test="${status eq 'PPWTN'}">
												   <p> Waiting for Placement</p>
										</c:when>
										<c:when test="${status eq 'CERTF'}">
												<c:set var="certf" value="true" />
												  <p> Certified</p>
										</c:when>
										<c:otherwise><p>Please Contact centre for your Current Status</p></c:otherwise>
									</c:choose>
										
									</p>								
								</div>
							</div>
						</li>
						<li class="timeline-item">
							<div class="timeline-badge info">
								<i class="glyphicon glyphicon-check"></i>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">Certificate</h4>
									<p>
										<small class="text-muted"><i
											class="glyphicon glyphicon-time"></i> 
									
									<c:choose>
										<c:when test="${not empty student.certReqDate}">
										Requested on<b> <fmt:formatDate value="${student.certReqDate}" pattern="dd-MM-yyyy" /> </b>
										</c:when> 
										<c:otherwise><p>Certificate request pending!</p></c:otherwise>
									</c:choose>
										</small>
									</p>
								</div>
								<div class="timeline-body">
									<p>
										<c:choose>
										<c:when test="${not empty student.certReqDate}">
											<c:choose>
												<c:when test="${(not empty student.certIssueDate) && (empty student.certRecvDate)}">
													certificate has arrived at centre on<b> <fmt:formatDate value="${student.certIssueDate}" pattern="dd-MM-yyyy" /> </b>
												</c:when>
												<c:when test="${(empty student.certIssueDate) && (empty student.certRecvDate)}">
													<c:set var="days" value="${student.certReqDate}" />
													<c:set target="${days}" property="time" value="${days.time + 86400000 * 7}" />
													<p>Your certificate is dispatched, will receive on <b><fmt:formatDate value="${days}" pattern="dd-MM-yyyy" /></b></p>
												</c:when>
											</c:choose>
											
											<c:choose>
												<c:when test="${not empty student.certRecvDate}">
													Certificate received on <b> <fmt:formatDate value="${student.certRecvDate }" pattern="dd-MM-yyyy" /> </b>
												</c:when>
												<c:otherwise><p>Please collect your certificate from centre or contact centre to get it couriered.</p></c:otherwise>
											</c:choose>
										</c:when> 
										<c:otherwise><p>Certificate is not requested yet. please request for certificate.</p></c:otherwise>
										</c:choose>
									</p>
								</div>
							</div>
						</li>
						<li class="timeline-item">
							<div class="timeline-badge warning">
								<i class="glyphicon glyphicon-check"></i>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">Placement</h4>
									<p>
										<small class="text-muted"><i
											class="glyphicon glyphicon-time"></i> 11 hours ago via
											Twitter</small>
									</p>
								</div>
								<div class="timeline-body">
									<p>PP down graded</p>
								</div>
							</div>
						</li>
						<li class="timeline-item">
							<div class="timeline-badge">
								<i class="glyphicon glyphicon-check"></i>
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">SOL Date</h4>
									<p>
										<small class="text-muted"><i
											class="glyphicon glyphicon-time"></i> &nbsp<fmt:formatDate
												value="${student.SOLDate}" pattern="dd-MM-yyyy" /></small>
									</p>
								</div>
								<div class="timeline-body">
									<p>Your service with NIIT is going to expire in
									
									<jsp:useBean id="now" class="java.util.Date" />
											<fmt:parseNumber
												value="${(student.SOLDate.time - now.time) / (1000*60*60*24) }"
												integerOnly="true" /> 
									 Days.</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>

	</div>

</body>
</html>
