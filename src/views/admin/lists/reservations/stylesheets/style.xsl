<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method='html' />

    <xsl:template match="/cinema">
 
    <html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <title>liste des reservations</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../../../../style/images/favicon.png"/>
	<link href="../../../../style/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet"/>
    <link href="../../../../style/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet"/>
    <link href="../../../../style/css/style.css" rel="stylesheet"/>
	<link href="https://cdn.lineicons.com/2.0/LineIcons.css" rel="stylesheet"/>

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
                <img class="logo-abbr" src="../../../../style/images/logo.png" alt=""/>
                <img class="logo-compact" src="../../../../style/images/logo-text.png" alt=""/>
                <img class="brand-title" src="../../../../style/images/logo-text.png" alt=""/>
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
										<span>Hello, <strong><xsl:value-of select="utilisateurs/utilisateur[@id=$id]/nom"/></strong></span>
									</div>
                                    <img src="../../../../style/images/profile/pic1.jpg" width="20" alt=""/>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="./app-profile.html" class="dropdown-item ai-icon">
                                        <svg id="icon-user1" xmlns="http://www.w3.org/2000/svg" class="text-primary" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                        <span class="ml-2">Profile </span>
                                    </a>
                                    <a href="./email-inbox.html" class="dropdown-item ai-icon">
                                        <svg id="icon-inbox" xmlns="http://www.w3.org/2000/svg" class="text-success" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
                                        <span class="ml-2">Inbox </span>
                                    </a>
                                    <a href="./page-login.html" class="dropdown-item ai-icon">
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
                </ul>
			</div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->
		
		<!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">
            <!-- row -->
			<div class="container-fluid">
				<div class="form-head d-flex mb-3 align-items-start">
					<div class="mr-auto d-none d-lg-block">
						<h2 class="text-black font-w600 mb-0">liste des Reservations</h2>
					</div>
					<div class="dropdown custom-dropdown">
						<button type="button" class="btn btn-primary light d-flex align-items-center svg-btn" data-toggle="dropdown" aria-expanded="false">
							<svg width="16" class="scale5" height="16" viewBox="0 0 22 28" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9.16647 27.9558C9.25682 27.9856 9.34946 28.0001 9.44106 28.0001C9.71269 28.0001 9.97541 27.8732 10.1437 27.6467L21.5954 12.2248C21.7926 11.9594 21.8232 11.6055 21.6746 11.31C21.526 11.0146 21.2236 10.8282 20.893 10.8282H13.1053V0.874999C13.1053 0.495358 12.8606 0.15903 12.4993 0.042327C12.1381 -0.0743215 11.7428 0.0551786 11.5207 0.363124L0.397278 15.7849C0.205106 16.0514 0.178364 16.403 0.327989 16.6954C0.477614 16.9878 0.77845 17.1718 1.10696 17.1718H8.56622V27.125C8.56622 27.5024 8.80816 27.8373 9.16647 27.9558ZM2.81693 15.4218L11.3553 3.58389V11.7032C11.3553 12.1865 11.7471 12.5782 12.2303 12.5782H19.1533L10.3162 24.479V16.2968C10.3162 15.8136 9.92444 15.4218 9.44122 15.4218H2.81693Z" fill="#2F4CDD"/></svg>
							<span class="fs-16 ml-3">Filter</span>
							<i class="fa fa-angle-down scale5 ml-3"></i>
						</button>
						<div class="dropdown-menu dropdown-menu-right">
							<a class="dropdown-item" href="#">2020</a>
							<a class="dropdown-item" href="#">2019</a>
							<a class="dropdown-item" href="#">2018</a>
							<a class="dropdown-item" href="#">2017</a>
							<a class="dropdown-item" href="#">2016</a>
						</div>
					</div>
				</div>
                <div class="row">
					<div class="col-12">
						<div class="table-responsive">
							<table id="example5" class="display mb-4 dataTablesCard" style="min-width: 845px;">
								<thead>
                                    
									<tr>
                                        <th>code</th>
                                        <th>date</th>
                                        <th>heure</th>
                                        <th>utilisateur</th>
                                        <th>siege</th>
                                        <th>seance</th>
									</tr>
								</thead>
								<tbody>
                                    <xsl:for-each select="reservations/reservation">
                                    <tr>
                                        <td>
                                            <xsl:value-of select="@code"></xsl:value-of>
                                        </td>
                                        <td>
                                            <xsl:value-of select="date"></xsl:value-of>
                                        </td>
                                        <td>
                                            <xsl:value-of select="heure"></xsl:value-of>
                                        </td>
                                        <xsl:variable name="utilisateur" select="utilisateur" />
                                        <td>
                                            <xsl:value-of select="../../utilisateurs/utilisateur[@id=$utilisateur]/nom"></xsl:value-of>
                                        </td>
                                        <td>
                                            <xsl:value-of select="siege"></xsl:value-of>
                                        </td>
                                        <td>
                                            <xsl:value-of select="seance"></xsl:value-of>
                                        </td>
                                        <td>
                                        <div class="dropdown ml-auto text-right">
                                            <div class="btn-link" data-toggle="dropdown">
                                                <svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg>
                                            </div>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Edit</a>
                                                <a class="dropdown-item" href="../../../../../parsers/ReservationParser.php?code={@code}">Delete</a>
                                            </div>
                                        </div>
                                    </td>
                                    </tr>
                                </xsl:for-each>            																					
								</tbody>
							</table>
						</div>
                    </div>
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
    <script src="../../../../style/vendor/global/global.min.js"></script>
	<script src="../../../../style/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="../../../../style/js/custom.min.js"></script>
	<script src="../../../../style/js/deznav-init.js"></script>
	
	
	<!-- Datatable -->
    <script src="../../../../style/vendor/datatables/js/jquery.dataTables.min.js"></script>
	
	<script>
	(function($) {
	 
		var table = $('#example5').DataTable({
			searching: true,
			paging:true,
			select: false,
			//info: false,         
			lengthChange:true 
			
		});
		$('#example tbody').on('click', 'tr', function () {
			var data = table.row( this ).data();
			
		});
	   
	})(jQuery);
	</script>
	
</body>
</html>
    </xsl:template>
</xsl:stylesheet>
