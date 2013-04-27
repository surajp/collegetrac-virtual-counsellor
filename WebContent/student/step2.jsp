<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>CollegeTrac - Step 2</title>
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
	<link href="../css/jquery-ui.css" rel="stylesheet">
	
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
    
    
    <script>

            $(function() {
            	
                 $( "#slider-range-min" ).slider({
                    range: "min",
                    value: 2000,
                    min: 2000,
                    max: 71000,
                    slide: function( event, ui ) {
                        $( "#amount" ).val(parseInt(ui.value));
                    }
                });
                $( "#amount" ).val(parseInt($( "#slider-range-min" ).slider( "value" )));
            	
            });
	
	</script>
    
    
  </head>

  <body>
	
	<div class="row">
	<div class="blue-background big-container">
	
		<div class="container">
		
		<div class="step-header">
            <h1>STEP TWO</h1>
            <h5>Here, we encourage you to think about what school you might want to go to.</h5>
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
				  <li class="active"><a href="#">Qualifying Schools</a></li>
				  <li><a href="#">Make it happen</a></li>
				</ul>
			  </div><!--/.well -->
			
			<!--<h4>Get started!</h4>-->
			<ul class="unstyled">
				<li>Your progress<span class="pull-right strong">25%</span>
					<div class="progress progress-success">
						<div class="bar" style="width: 25%;"></div>
					</div>
				</li>
			</ul>
			</div>
	
        </div><!--/span4-->
		
		
        <div class="span8 pull-right border-left">
          <div class="row-fluid">
				<div class="span12">
				<h2 class="form-header">BEGIN YOUR SEARCH</h2>
				<div class="span8 center">
					    <s:form cssClass="form-horizontal" action="search" method="POST" theme="simple">
						<fieldset>
						
						<div class="control-group">
						<!-- College Name -->
						<label class="control-label" for="collegename">College Name</label>
						<div class="controls">
							<s:textfield name="collegename" theme="simple" cssClass="input-xlarge"/>
						</div>
						</div>
						 
						<div class="control-group">
						<!-- Number of Student -->
						<label class="control-label" for="studentnumber"># of Students</label>
						<div class="controls">
							<s:select name="desiredstrength" cssClass="input-xlarge" theme="simple" 
							list="#{'5000':'5000 or less','15000':'5,000 to 15,000','50000':'15,000 to 50,000', '100000': '50,000 to 100,000','110000':'Above 100,000'}">
							</s:select>
						</div>
						</div>

						<div class="control-group">
						<!-- Cost -->
						<label class="control-label" for="studentnumber">Cost</label>
						<div class="controls">

							<div class="college-price">								
								<div class="span11">
									<div class="slider-show">
										<div class="demo" style="margin:0 0 0 15px;">
											<div id="slider-range-min"></div>
											<s:textfield id="amount" name="cost" theme="simple" style="border:0; color:#444; font-size:12px; height:20px; background-color: transparent; border:none; margin:2px 0 0 -60px; box-shadow:none; font-weight:bold;" />
										</div>
									</div>
								</div>
							</div>
				
						
						</div>
						</div>
						
						
						<div class="control-group">
						<!-- Location -->
						<label class="control-label" for="location">Location</label>
						<div class="controls">
							<s:select name="location" list="states" headerKey="0" headerValue="--Select location--" class="input-xlarge">
							</s:select>
						</div>
						</div>

						</fieldset>
						</s:form>			
				</div><!-- /span8 center -->
				</div><!-- /span12 -->
		
		  </div><!-- /.row-fluid -->

				<div class="row-fluid">
					<p class="pull-right">
						<s:submit cssClass="btn btn-large btn-primary" type="button" onclick="document.forms[0].submit();" value="Search"/>
					</p>
				</div>
				
        </div><!--/span-->
      </div><!--/row-->

      



    </div><!--/.fluid-container-->		
		
		
		
		
		</div>	
			
		</div>
	</div>
	</div>
	

	
</div>
</body>
</html>

