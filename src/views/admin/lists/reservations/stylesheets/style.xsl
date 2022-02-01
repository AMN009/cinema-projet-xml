<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method='html' />

	<xsl:template match="/cinema">

		<html>
			<head>
				<meta charset="utf-8" />
				<meta http-equiv="X-UA-Compatible" content="IE=edge" />
				<meta name="viewport" content="width=device-width,initial-scale=1" />
				<title>CINEWEB - Liste des réservations</title>
				<!-- Favicon icon -->
				<link rel="icon" type="image/png" sizes="16x16" href="../../../../style/images/favicon.png" />
				<link href="../../../../style/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
				<link href="../../../../style/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
				<link href="../../../../style/css/style.css" rel="stylesheet" />
				<link href="https://cdn.lineicons.com/2.0/LineIcons.css" rel="stylesheet" />

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
							<img class="logo-abbr" src="../../../../style/images/movie-logo.png" alt="" />
						</a>

						<div class="nav-control">
							<div class="hamburger">
								<span class="line"></span>
								<span class="line"></span>
								<span class="line"></span>
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
										<!-- EMPTY -->
									</div>

									<ul class="navbar-nav header-right">
										<li class="nav-item dropdown header-profile">
											<a class="nav-link" href="#" role="button" data-toggle="dropdown">
												<div class="header-info">
													<span>
														Bonjour,
														<strong>ADMIN</strong>
													</span>
												</div>
												<img src="../../../../style/images/profile/unknown.jpg" width="20" alt="" />
											</a>
											<div class="dropdown-menu dropdown-menu-right">
												<a href="#" class="dropdown-item ai-icon">
													<svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
														<path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
														<polyline points="16 17 21 12 16 7"></polyline>
														<line x1="21" y1="12" x2="9" y2="12"></line>
													</svg>
													<span class="ml-2">Se déconnecter </span>
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
								<li>
									<a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
										<i class="flaticon-381-networking"></i>
										<span class="nav-text">Toutes les listes</span>
									</a>
									<ul aria-expanded="false">
										<li>
											<a href="../../films/scripts/script.php">Tous les films</a>
										</li>
										<li>
											<a href="../scripts/script.php">Toutes les reservations</a>
										</li>
										<li>
											<a href="../../salles/scripts/script.php">Toutes les salles</a>
										</li>
										<li>
											<a href="../../seances/scripts/script.php">Toutes les séances</a>
										</li>
										<li>
											<a href="../../utilisateurs/scripts/script.php">Tous les utilisateurs</a>
										</li>
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
										<svg width="16" class="scale5" height="16" viewBox="0 0 22 28" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path d="M9.16647 27.9558C9.25682 27.9856 9.34946 28.0001 9.44106 28.0001C9.71269 28.0001 9.97541 27.8732 10.1437 27.6467L21.5954 12.2248C21.7926 11.9594 21.8232 11.6055 21.6746 11.31C21.526 11.0146 21.2236 10.8282 20.893 10.8282H13.1053V0.874999C13.1053 0.495358 12.8606 0.15903 12.4993 0.042327C12.1381 -0.0743215 11.7428 0.0551786 11.5207 0.363124L0.397278 15.7849C0.205106 16.0514 0.178364 16.403 0.327989 16.6954C0.477614 16.9878 0.77845 17.1718 1.10696 17.1718H8.56622V27.125C8.56622 27.5024 8.80816 27.8373 9.16647 27.9558ZM2.81693 15.4218L11.3553 3.58389V11.7032C11.3553 12.1865 11.7471 12.5782 12.2303 12.5782H19.1533L10.3162 24.479V16.2968C10.3162 15.8136 9.92444 15.4218 9.44122 15.4218H2.81693Z" fill="#2F4CDD" />
										</svg>
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
																	<svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																		<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																			<rect x="0" y="0" width="24" height="24"></rect>
																			<circle fill="#000000" cx="5" cy="12" r="2"></circle>
																			<circle fill="#000000" cx="12" cy="12" r="2"></circle>
																			<circle fill="#000000" cx="19" cy="12" r="2"></circle>
																		</g>
																	</svg>
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
							<p>
								Copyright © Designed &amp; Developed by
								<a href="http://dexignzone.com/" target="_blank">DexignZone</a>
								2020
							</p>
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
                        searching: false,
                        paging:true,
                        select: false,
                        //info: false,         
                        lengthChange:false 
                        
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