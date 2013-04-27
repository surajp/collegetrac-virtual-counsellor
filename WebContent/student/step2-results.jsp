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
    
    
    
    
    
    
    <script src="../js/jquery.js"></script>
	<script src="../js/jquery-ui.js"></script>
	<script src="../js/bootstrap-dropdown.js"></script>
	<script src="../js/bootstrap-scrollspy.js"></script>
	<script src="../js/bootstrap-button.js"></script>
	<script src="../js/bootstrap-collapse.js"></script>
	<script src="../js/bootstrap-carousel.js"></script>
    
    
    
    
    
  </head>

  <body>

	<div class="row">
	<div class="blue-background big-container">
	
		<div class="container">
		
		<div class="step-header">
            <h1>STEP TWO - Results</h1>
            <h5>Take a look at the results that have been returned from your search</h5>
        </div>
		
		<div class="paper-fold"></div>
		<div class="paper-container">

		
    <div class="container">
      <div class="row-fluid">
        
		
		<div class="paper-padding">
		
		<div class="span4">
		
			<div class="step-by-step">
			  <div class="well sidebar-nav">
				<ul id="blue" class="nav nav-list">
				  <li><a href="#">Your Information</a></li>
				  <li><a href="#">Qualifying Schools</a></li>
				  <li class="active inset"><a href="#">Search Results</a></li>
				  <li><a href="#">Make it happen</a></li>
				</ul>
			  </div><!--/.well -->
			
			<!--<h4>Get started!</h4>-->
			<ul class="unstyled">
				<li>Your progress<span class="pull-right strong">50%</span>
					<div class="progress progress-success">
						<div class="bar" style="width: 50%;"></div>
					</div>
				</li>
			</ul>
			</div>
	
        </div><!--/span4-->
		
		
        <div class="span8 pull-right border-left">
          <div class="row-fluid">
				<div class="span12">
				<h2 class="form-header">Search Results</h2>

				<div class="span11 center">
				
				<table class="table table-hover">
				<thead>
					<tr>
						<th>College Name</th>
						<th>No. of Students</th>
						<th>Total Cost</th>
						<th>Location</th>
						<th>Tel:</th>
					</tr>
				</thead>
				<tbody>
				<s:iterator var="college" value="collegelist">
					<tr>
						<td><s:a href="%{#college.url}" target="_blank"><s:property value="name" /></s:a></td>
						<td><s:property value="strength" /></td>
						<td><s:property value="cost" /></td>
						<td><s:property value="location" /></td>
						<td><s:property value="phone" /></td>
					</tr>
					</s:iterator>
				</tbody>
				</table>

				</div>
				</div><!-- /span12 -->
		
		  </div><!-- /.row-fluid -->

				
        </div><!--/span-->
      </div><!--/row-->

      



    </div><!--/.fluid-container-->		
		
		
		
		
		</div>	
			
		</div>
	</div>
	</div>
	
	<script>

            $(function() {
                $( "#slider-range-min" ).slider({
                    range: "min",
                    value: 14000,
                    min: 14000,
                    max: 100000,
                    slide: function( event, ui ) {
                        $( "#amount" ).val( "$" + ui.value );
                    }
                });
                $( "#amount" ).val( "$" + $( "#slider-range-min" ).slider( "value" ) );
            });
	
	</script>
</div>
</body>
</html>