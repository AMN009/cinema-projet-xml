
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method='html' />

<xsl:template match="/cinema">
	
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width,initial-scale=1"/>
		<title>movies</title>
		<!-- Favicon icon -->
		<link rel="icon" type="image/png" sizes="16x16" href="../../style/images/favicon.png"/>
			<link href="../../style/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet"/>
		<link href="../../style/css/style.css" rel="stylesheet"/>
	
	</head>
	
	<body>
	
		<!--*******************
			Preloader start
		********************-->
		<div id="preloader">
			<div class="sk-three-bounce">
				<div class="sk-child sk-bounce1"></div>
				<div class="sk-child sk-bounce2"></div>
				<div class="sk-child sk-bounce3"></div>
			</div>
		</div>
		<!--*******************
			Preloader end
		********************-->
	
	
		<!--**********************************
			Main wrapper start
		***********************************-->
		<div id="main-wrapper">
	
			<!--**********************************
				Nav header start
			***********************************-->
			<div class="nav-header">
				<a href="index.html" class="brand-logo">
					<img class="logo-abbr" src="../../style/images/logo.png" alt=""/>
					<img class="logo-compact" src="../../style/images/logo-text.png" alt=""/>
					<img class="brand-title" src="../../style/images/logo-text.png" alt=""/>
				</a>
	
				<div class="nav-control">
					<div class="hamburger">
						<span class="line"></span><span class="line"></span><span class="line"></span>
					</div>
				</div>
			</div>
			<!--**********************************
				Nav header end
			***********************************-->
			<!--**********************************
				Header start
			***********************************-->
			<div class="header">
				<div class="header-content">
					<nav class="navbar navbar-expand">
						<div class="collapse navbar-collapse justify-content-between">
							<div class="header-left">
								<div class="search_bar dropdown show">
									<div class="dropdown-menu p-0 m-0 show">
										<form>
											<input class="form-control" type="search" placeholder="Search Here" aria-label="Search"/>
										</form>
									</div>
									<span class="search_icon p-3 c-pointer" data-toggle="dropdown">
										<svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M23.7871 22.7761L17.9548 16.9437C19.5193 15.145 20.4665 12.7982 20.4665 10.2333C20.4665 4.58714 15.8741 0 10.2333 0C4.58714 0 0 4.59246 0 10.2333C0 15.8741 4.59246 20.4665 10.2333 20.4665C12.7982 20.4665 15.145 19.5193 16.9437 17.9548L22.7761 23.7871C22.9144 23.9255 23.1007 24 23.2816 24C23.4625 24 23.6488 23.9308 23.7871 23.7871C24.0639 23.5104 24.0639 23.0528 23.7871 22.7761ZM1.43149 10.2333C1.43149 5.38004 5.38004 1.43681 10.2279 1.43681C15.0812 1.43681 19.0244 5.38537 19.0244 10.2333C19.0244 15.0812 15.0812 19.035 10.2279 19.035C5.38004 19.035 1.43149 15.0865 1.43149 10.2333Z" fill="#A4A4A4"/></svg>
									</span>
								</div>
							</div>
	
							<ul class="navbar-nav header-right">
								<li class="nav-item dropdown header-profile">
									<a class="nav-link" href="#" role="button" data-toggle="dropdown">
										<div class="header-info">
											<span>Hello, <strong>Samuel</strong></span>
										</div>
										<img src="../../style/images/profile/pic1.jpg" width="20" alt=""/>
									</a>
									<div class="dropdown-menu dropdown-menu-right">
										<a href="../../style/app-profile.html" class="dropdown-item ai-icon">
											<svg id="icon-user1" xmlns="http://www.w3.org/2000/svg" class="text-primary" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
											<span class="ml-2">Profile </span>
										</a>
										<a href="../../style/email-inbox.html" class="dropdown-item ai-icon">
											<svg id="icon-inbox" xmlns="http://www.w3.org/2000/svg" class="text-success" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
											<span class="ml-2">Inbox </span>
										</a>
										<a href="../logout.php" class="dropdown-item ai-icon">
											<svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
											<span class="ml-2">Logout </span>
										</a>
									</div>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
			<!--**********************************
				Header end ti-comment-alt
			***********************************-->
	
			<!--**********************************
				Sidebar start
			***********************************-->
			<div class="deznav">
				<div class="deznav-scroll">
					<ul class="metismenu" id="menu">
						<li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
								<i class="flaticon-381-networking"></i>
								<span class="nav-text">Dashboard</span>
							</a>
							<ul aria-expanded="false">
								<li><a href="index.html">Dashboard</a></li>
								<li><a href="page-analytics.html">Analytics</a></li>
								<li><a href="page-review.html">Review</a></li>
								<li><a href="page-order.html">Order</a></li>
								<li><a href="page-order-list.html">Order List</a></li>
								<li><a href="page-general-customers.html">General Customers</a></li>
							</ul>
						</li>
						<li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
								<i class="flaticon-381-television"></i>
								<span class="nav-text">Apps</span>
							</a>
							<ul aria-expanded="false">
								<li><a href="../../style/app-profile.html">Profile</a></li>
								<li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Email</a>
									<ul aria-expanded="false">
										<li><a href="../../style/email-compose.html">Compose</a></li>
										<li><a href="../../style/email-inbox.html">Inbox</a></li>
										<li><a href="../../style/email-read.html">Read</a></li>
									</ul>
								</li>
								<li><a href="../../style/app-calender.html">Calendar</a></li>
								<li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Shop</a>
									<ul aria-expanded="false">
										<li><a href="../../style/ecom-product-grid.html">Product Grid</a></li>
										<li><a href="../../style/ecom-product-list.html">Product List</a></li>
										<li><a href="../../style/ecom-product-detail.html">Product Details</a></li>
										<li><a href="../../style/ecom-product-order.html">Order</a></li>
										<li><a href="../../style/ecom-checkout.html">Checkout</a></li>
										<li><a href="../../style/ecom-invoice.html">Invoice</a></li>
										<li><a href="../../style/ecom-customers.html">Customers</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
								<i class="flaticon-381-controls-3"></i>
								<span class="nav-text">Charts</span>
							</a>
							<ul aria-expanded="false">
								<li><a href="../../style/chart-flot.html">Flot</a></li>
								<li><a href="../../style/chart-morris.html">Morris</a></li>
								<li><a href="../../style/chart-chartjs.html">Chartjs</a></li>
								<li><a href="../../style/chart-chartist.html">Chartist</a></li>
								<li><a href="../../style/chart-sparkline.html">Sparkline</a></li>
								<li><a href="../../style/chart-peity.html">Peity</a></li>
							</ul>
						</li>
						<li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
								<i class="flaticon-381-internet"></i>
								<span class="nav-text">Bootstrap</span>
							</a>
							<ul aria-expanded="false">
								<li><a href="../../style/ui-accordion.html">Accordion</a></li>
								<li><a href="../../style/ui-alert.html">Alert</a></li>
								<li><a href="../../style/ui-badge.html">Badge</a></li>
								<li><a href="../../style/ui-button.html">Button</a></li>
								<li><a href="../../style/ui-modal.html">Modal</a></li>
								<li><a href="../../style/ui-button-group.html">Button Group</a></li>
								<li><a href="../../style/ui-list-group.html">List Group</a></li>
								<li><a href="../../style/ui-media-object.html">Media Object</a></li>
								<li><a href="../../style/ui-card.html">Cards</a></li>
								<li><a href="../../style/ui-carousel.html">Carousel</a></li>
								<li><a href="../../style/ui-dropdown.html">Dropdown</a></li>
								<li><a href="../../style/ui-popover.html">Popover</a></li>
								<li><a href="../../style/ui-progressbar.html">Progressbar</a></li>
								<li><a href="../../style/ui-tab.html">Tab</a></li>
								<li><a href="../../style/ui-typography.html">Typography</a></li>
								<li><a href="../../style/ui-pagination.html">Pagination</a></li>
								<li><a href="../../style/ui-grid.html">Grid</a></li>
	
							</ul>
						</li>
						<li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
								<i class="flaticon-381-heart"></i>
								<span class="nav-text">Plugins</span>
							</a>
							<ul aria-expanded="false">
								<li><a href="../../style/uc-select2.html">Select 2</a></li>
								<li><a href="../../style/uc-nestable.html">Nestedable</a></li>
								<li><a href="../../style/uc-noui-slider.html">Noui Slider</a></li>
								<li><a href="../../style/uc-sweetalert.html">Sweet Alert</a></li>
								<li><a href="../../style/uc-toastr.html">Toastr</a></li>
								<li><a href="../../style/map-jqvmap.html">Jqv Map</a></li>
							</ul>
						</li>
						<li><a href="widget-basic.html" class="ai-icon" aria-expanded="false">
								<i class="flaticon-381-settings-2"></i>
								<span class="nav-text">Widget</span>
							</a>
						</li>
						<li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
								<i class="flaticon-381-notepad"></i>
								<span class="nav-text">Forms</span>
							</a>
							<ul aria-expanded="false">
								<li><a href="../../style/form-element.html">Form Elements</a></li>
								<li><a href="../../style/form-wizard.html">Wizard</a></li>
								<li><a href="../../style/form-editor-summernote.html">Summernote</a></li>
								<li><a href="form-pickers.html">Pickers</a></li>
								<li><a href="form-validation-jquery.html">Jquery Validate</a></li>
							</ul>
						</li>
						<li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
								<i class="flaticon-381-network"></i>
								<span class="nav-text">Table</span>
							</a>
							<ul aria-expanded="false">
								<li><a href="table-bootstrap-basic.html">Bootstrap</a></li>
								<li><a href="table-datatable-basic.html">Datatable</a></li>
							</ul>
						</li>
						<li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
								<i class="flaticon-381-layer-1"></i>
								<span class="nav-text">Pages</span>
							</a>
							<ul aria-expanded="false">
								<li><a href="../../style/page-register.html">Register</a></li>
								<li><a href="../../style/page-login.html">Login</a></li>
								<li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Error</a>
									<ul aria-expanded="false">
										<li><a href="../../style/page-error-400.html">Error 400</a></li>
										<li><a href="../../style/page-error-403.html">Error 403</a></li>
										<li><a href="../../style/page-error-404.html">Error 404</a></li>
										<li><a href="../../style/page-error-500.html">Error 500</a></li>
										<li><a href="../../style/page-error-503.html">Error 503</a></li>
									</ul>
								</li>
								<li><a href="../../style/page-lock-screen.html">Lock Screen</a></li>
							</ul>
						</li>
					</ul>
				
					<div class="add-menu-sidebar">
						<img src="../../style/images/icon1.png" alt=""/>
						<p>Organize your menus through button bellow</p>
						<a href="javascript:void(0);" class="btn btn-primary btn-block light">+ Add Menus</a>
					</div>
					<div class="copyright">
						<p><strong>Davur - Restaurant Admin Dashboard</strong> © 2020 All Rights Reserved</p>
						<p>Made with <i class="fa fa-heart"></i> by DexignZone</p>
					</div>
				</div>
			</div>
			<!--**********************************
				Sidebar end
			***********************************-->
	
			<!--**********************************
				Content body start
			***********************************-->
			<div class="content-body">
				<div class="container-fluid">
					<div class="row page-titles mx-0">
						<div class="col-sm-6 p-md-0">
							<div class="welcome-text">
								<h4>liste des films</h4>
								<p class="mb-0">Your business dashboard template</p>
							</div>
						</div>
						<div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="javascript:void(0)">Layout</a></li>
								<li class="breadcrumb-item active"><a href="javascript:void(0)">Blank</a></li>
							</ol>
						</div>
					</div>
					<div class="row">

						<xsl:for-each select="films/film">
						<div class="col-xl-4 col-lg-7 col-md-5 col-sm-7">
							<div class="card">
								<div class="card-body">
									<div class="new-arrival-product">
										<div class="new-arrivals-img-contnent">
											<img class="img-fluid" src="{poster/@source}" alt=""/>
										</div>
										<div class="new-arrival-content text-center mt-3">
											<h4><a href="#"><xsl:value-of select="titre"></xsl:value-of></a> </h4>
											<ul class="star-rating">
												<li><i class="fa fa-star"></i></li>
												<li><i class="fa fa-star"></i></li>
												<li><i class="fa fa-star"></i></li>
												<li><i class="fa fa-star-half-empty"></i></li>
												<li><i class="fa fa-star-half-empty"></i></li>
											</ul>
											<span class="price"><xsl:value-of select="genre"></xsl:value-of></span>
											<h6><a href="#">more details</a> </h6>
										</div>
									</div>
								</div>
							</div>
						</div>


						</xsl:for-each>
						
					</div>
				</div>
			</div>
			<!--**********************************
				Content body end
			***********************************-->
	
	
			<!--**********************************
				Footer start
			***********************************-->
			<div class="footer">
				<div class="copyright">
					<p>Copyright © Designed &amp; Developed by <a href="http://dexignzone.com/" target="_blank">DexignZone</a> 2020</p>
				</div>
			</div>
			<!--**********************************
				Footer end
			***********************************-->
	
			<!--**********************************
			   Support ticket button start
			***********************************-->
	
			<!--**********************************
			   Support ticket button end
			***********************************-->
	
	
		</div>
		<!--**********************************
			Main wrapper end
		***********************************-->
	
		<!--**********************************
			Scripts
		***********************************-->
		<!-- Required vendors -->
		<script src="../../style/vendor/global/global.min.js"></script>
		<script src="../../style/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
		<script src="../../style/vendor/chart.js/Chart.bundle.min.js"></script>
		<script src="../../style/js/custom.min.js"></script>
		<script src="../../style/js/deznav-init.js"></script>
		<!-- Apex Chart -->
		<script src="../../style/vendor/apexchart/apexchart.js"></script>
	
		<script src="../../style/vendor/highlightjs/highlight.pack.min.js"></script>
		<!-- Circle progress -->
	
	
	
	</body>
	
	</html>


</xsl:template>
</xsl:stylesheet>
