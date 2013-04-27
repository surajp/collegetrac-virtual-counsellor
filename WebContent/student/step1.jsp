<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>CollegeTrac - Step 1</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<!-- Le fonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Gentium+Book+Basic' rel='stylesheet' type='text/css'>

    <!-- Le styles -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="../css/bootstrap-responsive.css" rel="stylesheet">
	<link href="../css/theme.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="../../ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">CollegeTrac</a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              Logged in as <a href="#" class="navbar-link">Demo</a>
            </p>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

	
	<div class="row">
	<div class="orange-background big-container">
	
		<div class="container">
		
		<div class="step-header">
            <h1>STEP ONE</h1>
            <h5>On this page we collect information about you, in order to help us determine where you fit.</h5>
        </div>
		
		<div class="paper-fold"></div>
		<div class="paper-container">

		
    <div class="container">
      <div class="row-fluid">
        
		
		<div class="paper-padding">
		
		<div class="span4">
		
			<div class="step-by-step">
			  <div class="well sidebar-nav">
				<ul id="orange" class="nav nav-list">
				  <li class="active"><a href="#">Your Information</a></li>
				  <li><a href="#">Qualifying Schools</a></li>
				  <li><a href="#">Make it happen</a></li>
				</ul>
			  </div><!--/.well -->
			
			<!--<h4>Get started!</h4>-->
			<ul class="unstyled">
				<li>Your progress<span class="pull-right strong">0%</span>
					<div class="progress progress-success">
						<div class="bar" style="width: 0%;"></div>
					</div>
				</li>
			</ul>
			</div>
	
        </div><!--/span4-->
		
		
        <div class="span8 pull-right border-left">
          <div class="row-fluid">
				<div class="span12">
				<h2 class="form-header">Your information</h2>
				<div class="span8 center">
					    <s:form  cssClass="form-horizontal" action='addinfo' method="POST">
						<fieldset>
						
						<div class="control-group">
						<!-- first name -->
						<label class="control-label" for="firstname">First Name</label>
						<div class="controls">
							<s:textfield name="student.firstname" cssClass="input-xlarge" theme="simple"/>
						</div>
						</div>

						<div class="control-group">
						<!-- last name -->
						<label class="control-label" for="lastname">Last Name</label>
						<div class="controls">
							<s:textfield name="student.lastname" cssClass="input-xlarge" theme="simple"/>
						</div>
						</div>
						
						<div class="control-group">
						<!-- Email -->
						<label class="control-label" for="email">Email</label>
						<div class="controls">
							<s:textfield name="student.email" cssClass="input-xlarge" theme="simple" disabled="false"/>
						</div>
						</div>
						
						<div class="control-group">
						<!-- Age -->
						<label class="control-label" for="age">Age</label>
						<div class="controls">
							<s:textfield name="student.age" cssClass="input-xlarge" theme="simple"/>
						</div>
						</div>
						 
						<div class="control-group">
						<!-- Grade -->
						<label class="control-label" for="grade">Grade</label>
						<div class="controls">
							<s:textfield name="student.grade" cssClass="input-xlarge" theme="simple"/>
						</div>
						</div>
						 
						<div class="control-group">
						<!-- Favorite Subject -->
						<label class="control-label" for="favoritesubject">Favorite Subject</label>
						<div class="controls">
							<s:select name="student.favoritesub" headerKey="-1" theme="simple" headerValue="Favorite Subject"
							 list="#{'1':'Math', '2':'History', '3':'Science', '4':'English', '5':'Social Studies'}">
							</s:select>
						</div>
						</div>
						
						<div class="control-group">
						<!-- Least Favorite Subject -->
						<label class="control-label" for="favoritesubject">Least Favorite Subject</label>
						<div class="controls">
							<s:select name="student.leastfavoritesub" theme="simple" headerKey="-1" headerValue="Least Favorite Subject"
							 list="#{'1':'Math', '2':'History', '3':'Science', '4':'English', '5':'Social Studies'}">
							</s:select>
						</div>
						</div>

						</fieldset>
						</s:form>	
						<s:fielderror />		
				</div><!-- /span8 center -->
				</div><!-- /span12 -->
			
		  </div><!-- /.row-fluid -->

				<div class="row-fluid">
					<p class="pull-right">
						<s:submit type="button" theme="simple" onclick="document.forms[0].submit();" cssClass="btn btn-large btn-primary" value="Next Step"></s:submit>
					</p>
				</div>
				
        </div><!--/span-->
      </div><!--/row-->
</div>
      



    </div><!--/.fluid-container-->		
		
		
		
		
		</div>	
			
		</div>
	</div>
	</div>
	


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap-transition.js"></script>
    <script src="../js/bootstrap-alert.js"></script>
    <script src="../js/bootstrap-dropdown.js"></script>
    <script src="../js/bootstrap-scrollspy.js"></script>
    <script src="../js/bootstrap-tab.js"></script>
    <script src="../js/bootstrap-tooltip.js"></script>
    <script src="../js/bootstrap-popover.js"></script>
    <script src="../js/bootstrap-button.js"></script>
    <script src="../js/bootstrap-collapse.js"></script>
    <script src="../js/bootstrap-carousel.js"></script>
    <script src="../js/bootstrap-typeahead.js"></script>

  </body>
</html>