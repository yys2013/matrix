<!DOCTYPE html>
<%
	String path = request.getContextPath();
%>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Index</title>
        <!-- Bootstrap -->
        <link href="<%=path%>/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=path%>/resources/css/style_v1.css" rel="stylesheet">
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="plugins/html5shiv.min.js"></script>
            <script src="plugins/respond.min.js"></script>
        <![endif]-->
        <script src="<%=path%>/resources/plugins/jquery.min.js"></script>
        <script src="<%=path%>/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=path%>/resources/js/mgnt_v1.js"></script>
    </head>
    <body>
        <!--Start Header-->
        <header class="navbar">
        	<div class="container-fluid expanded-panel">
        		<div class="row">
        			<div id="logo" class="col-xs-12 col-sm-2">
        				<a href="index.html">Mgnt System V1</a>
        			</div>
        			<div id="top-panel" class="col-xs-12 col-sm-10">
        				<div class="row">
        					<div class="col-xs-8 col-sm-4">
        						<div id="search">
        							<input type="text" placeholder="search"/>
        							<i class="fa fa-search"></i>
        						</div>
        					</div>
        					<div class="col-xs-4 col-sm-8 top-panel-right">
        						<a href="#" class="about">about</a>
        						<a href="index_v1.html" class="style1"></a>
        						<ul class="nav navbar-nav pull-right panel-menu">
        							<li class="hidden-xs">
        								<a href="index.html" class="modal-link">
        									<i class="fa fa-bell"></i>
        									<span class="badge">7</span>
        								</a>
        							</li>
        							<li class="hidden-xs">
        								<a class="ajax-link" href="ajax/calendar.html">
        									<i class="fa fa-calendar"></i>
        									<span class="badge">7</span>
        								</a>
        							</li>
        							<li class="hidden-xs">
        								<a href="ajax/page_messages.html" class="ajax-link">
        									<i class="fa fa-envelope"></i>
        									<span class="badge">7</span>
        								</a>
        							</li>
        							<li class="dropdown">
        								<a href="#" class="dropdown-toggle account" data-toggle="dropdown">
        									<div class="avatar">
        										<img src="<%=path%>/resources/img/avatar.jpg" class="img-circle" alt="avatar" />
        									</div>
        									<i class="fa fa-angle-down pull-right"></i>
        									<div class="user-mini pull-right">
        										<span class="welcome">Welcome,</span>
        										<span>Jane Devoops</span>
        									</div>
        								</a>
        								<ul class="dropdown-menu">
        									<li>
        										<a href="#">
        											<i class="fa fa-user"></i>
        											<span>Profile</span>
        										</a>
        									</li>
        									<li>
        										<a href="ajax/page_messages.html" class="ajax-link">
        											<i class="fa fa-envelope"></i>
        											<span>Messages</span>
        										</a>
        									</li>
        									<li>
        										<a href="ajax/gallery_simple.html" class="ajax-link">
        											<i class="fa fa-picture-o"></i>
        											<span>Albums</span>
        										</a>
        									</li>
        									<li>
        										<a href="ajax/calendar.html" class="ajax-link">
        											<i class="fa fa-tasks"></i>
        											<span>Tasks</span>
        										</a>
        									</li>
        									<li>
        										<a href="#">
        											<i class="fa fa-cog"></i>
        											<span>Settings</span>
        										</a>
        									</li>
        									<li>
        										<a href="#">
        											<i class="fa fa-power-off"></i>
        											<span>Logout</span>
        										</a>
        									</li>
        								</ul>
        							</li>
        						</ul>
        					</div>
        				</div>
        			</div>
        		</div>
        	</div>
        </header>
        <!--End Header-->
        <!--Start Container-->
        <div id="main" class="container-fluid">
        	<div class="row">
        		<div id="sidebar-left" class="col-xs-2 col-sm-2">
                    <ul class="nav main-menu">
        				<li>
        					<a href="index.jsp" class="active ajax-link">
        						<i class="fa fa-dashboard"></i>
        						<span class="hidden-xs">Dashboard</span>
        					</a>
        				</li>
        				<li class="dropdown">
        					<a href="#" class="dropdown-toggle">
        						<i class="fa fa-bar-chart-o"></i>
        						<span class="hidden-xs">Charts</span>
        					</a>
        					<ul class="dropdown-menu">
        						<li><a class="ajax-link" href="<%=path%>/html/tables_simple.html">xCharts</a></li>
        						<li><a class="ajax-link" href="ajax/charts_flot.html">Flot Charts</a></li>
        						<li><a class="ajax-link" href="ajax/charts_google.html">Google Charts</a></li>
        						<li><a class="ajax-link" href="ajax/charts_morris.html">Morris Charts</a></li>
        						<li><a class="ajax-link" href="ajax/charts_amcharts.html">AmCharts</a></li>
        						<li><a class="ajax-link" href="ajax/charts_chartist.html">Chartist</a></li>
        						<li><a class="ajax-link" href="ajax/charts_coindesk.html">CoinDesk realtime</a></li>
        					</ul>
        				</li>
                        <li class="dropdown">
        					<a href="#" class="dropdown-toggle">
        						<i class="fa fa-table"></i>
        						 <span class="hidden-xs">Tables</span>
        					</a>
        					<ul class="dropdown-menu">
        						<li><a class="ajax-link" href="ajax/tables_simple.html">Simple Tables</a></li>
        						<li><a class="ajax-link" href="ajax/tables_datatables.html">Data Tables</a></li>
        						<li><a class="ajax-link" href="ajax/tables_beauty.html">Beauty Tables</a></li>
        					</ul>
        				</li>
        		    </ul>
                </div>
                <!--Start Content-->
        		<div id="content" class="col-xs-12 col-sm-10">
        			<div id="about">
        				<div class="about-inner">
        					<h4 class="page-header">Open-source admin theme for you</h4>
        					<p>DevOOPS team</p>
        					<p>Homepage - <a href="http://devoops.me" target="_blank">http://devoops.me</a></p>
        					<p>Email - <a href="mailto:devoopsme@gmail.com">devoopsme@gmail.com</a></p>
        					<p>Twitter - <a href="http://twitter.com/devoopsme" target="_blank">http://twitter.com/devoopsme</a></p>
        					<p>Donate - BTC 123Ci1ZFK5V7gyLsyVU36yPNWSB5TDqKn3</p>
        				</div>
        			</div>
        			<div class="preloader">
        				<img src="<%=path%>/resources/img/devoops_getdata.gif" class="devoops-getdata" alt="preloader"/>
        			</div>
        			<div id="ajax-content"></div>
        		</div>
        		<!--End Content-->
        	</div>
        </div>


    </body>
</html>