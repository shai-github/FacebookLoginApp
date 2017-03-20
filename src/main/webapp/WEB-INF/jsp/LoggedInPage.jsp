<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Medical Entrance Preparation DashBoard</title>
<link href="css/default.css" rel="stylesheet">
<link href="css/modal-content.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.0.0/bootstrap-social.css" rel="stylesheet">


<style>
html {
  position: relative;
  min-height: 100%;
}
body {
  /* Margin bottom by footer height */
  margin-bottom: 60px;
}

.img-overlay {
    position: relative;
    max-width: 500px;  
}
.row {
    margin-right: 15px !important;
    margin-left: 15px !important;
}

</style>
</head>
<body>
<!-- top Navigation bar starts -->
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"><strong>EntranceHome</strong></a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="about.jsp">About</a></li>
					<li><a href="pricing.jsp">Pricing</a></li>
					<li><a href="contactUs.jsp">Contact Us</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> <b>Shailendra Sah</b>
							<i class="fa fa-caret-down"></i>
					</a>
						<ul class="dropdown-menu dropdown-user">
							<li><a href="#"><i class="fa fa-user fa-fw"></i> User
									Profile</a></li>
							<li><a href="#"><i class="fa fa-gear fa-fw"></i>
									Settings</a></li>
							<li class="divider"></li>
							<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
									Logout</a></li>
						</ul> </li>
				</ul>
				<div class="col-sm-3 col-md-3 pull-center">
					<form class="navbar-form" role="search">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search"
								name="srch-term" id="srch-term">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</nav>

<!-- thumbnails -->
	
	
	 <div class="container" style="padding-top: 50px;">
	   <div class="well well-sm" style="width: 95%;">
		<div class="row">
		         <ul class="nav nav-pills" style="display:inline-block;margin:auto;"><!-- 'tabs-right' for right tabs -->
				    <li class="active"><a href="#subjectWiseTests" data-toggle="tab"><b>Subject Wise Tests</b></a></li>
				    <li><a href="#practiceTests" data-toggle="tab"><b>Practice Tests</b></a></li>
				  </ul>
		</div>
		</div>
	
	<div class="tab-content">
	   <div id="subjectWiseTests"  class="tab-pane fade in active">
		    <div class="row" style="padding-top: 50px;">
				<div class="col-xs-12 col-sm-12 col-md-4">
				  <a href="physicsLandingPage.jsp" class="thumbnail" style="width: 320px; height: 190px;">
						<img src="images/physicsImg.jpg" alt="Physics">
						 
					</a>  
				</div>
				<div class="col-xs-12 col-sm-12 col-md-4">
					<a href="chemistryLandingPage.jsp" class="thumbnail" style="width: 320px; height: 190px;">
						<img src="images/chemistryImg.jpg" alt="Chemistry">
						
					</a>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-4">
					<a href="botanyLandingPage.jsp" class="thumbnail" style="width: 320px; height: 190px;">
						<img src="images/botanyImg.jpg" alt="Botany">
					</a>
				</div>
				
			</div>
			<div class="row" style="padding-top:50px;">
				<div class="col-xs-12 col-sm-12 col-md-4">
					<a href="zoologyLandingPage.jsp" class="thumbnail" style="width: 320px; height: 190px;">
						<img src="images/zoologyImg.jpg" alt="Zoology">
					</a>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-4">
					<a href="englishLandingPage.jsp" class="thumbnail" style="width: 320px; height: 190px;">
						<img src="images/englishImg.jpg" alt="English">
					</a>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-4">
					<a href="healthLandingPage.jsp" class="thumbnail" style="width: 320px; height: 190px;">
						<img src="images/healthImg.jpg" alt="Health Science">
					</a>
				</div>
		</div>
	 </div>
	 <div id="practiceTests" class="tab-pane fade">
	    <div class="row" style="padding-top: 50px;">
			<div class="col-md-4">
				<a href="#" class="thumbnail" style="width: 320px; height: 190px;">
					<img src="images/iomTestImg.jpg" alt="IOM">
				</a>
			</div>
			<div class="col-md-4">
				<a href="#" class="thumbnail" style="width: 320px; height: 190px;">
					<img src="images/moeTestImg.jpg" alt="MOE">
				</a>
			</div>
			<div class="col-md-4">
				<a href="#" class="thumbnail" style="width: 320px; height: 190px;">
					<img src="images/bpkihsTestImg.jpg" alt="BPKIHS">
				</a>
			</div>
			
		</div>
		<div class="row" style="padding-top:50px;">
			<div class="col-md-4">
				<a href="#" class="thumbnail" style="width: 320px; height: 190px;">
					<img src="images/indianEmbassyImg.jpg" alt="Indian Embassy">
				</a>
			</div>
			<div class="col-md-4">
				<a href="#" class="thumbnail" style="width: 320px; height: 190px;">
					<img src="images/kuTestImg.jpg" alt="KU">
				</a>
			</div>
			<div class="col-md-4">
				<!-- <a href="#" class="thumbnail" style="width: 320px; height: 190px;">
					<img src="images/others.jpg" alt="Others">
				</a> -->
			</div>
	</div>
	</div>
	</div>
</div>


	 
	<!-- Go to Top  -->
	<ul class="nav pull-right scroll-top">
 		 <li><a href="#" title="Scroll to top"><i class="glyphicon glyphicon-chevron-up"></i></a></li>
	</ul>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>


</html>