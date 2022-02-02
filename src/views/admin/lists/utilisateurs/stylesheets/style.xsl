<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method='html' />

	<xsl:template match="/cinema">

		<html>
			<head>
				<meta charset="utf-8" />
				<meta http-equiv="X-UA-Compatible" content="IE=edge" />
				<meta name="viewport" content="width=device-width,initial-scale=1" />
				<title>liste des utilisateurs</title>
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
            Chat box start
        ***********************************-->

					<!--**********************************
            Chat box End
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
														<strong>
															<xsl:value-of select="utilisateurs/utilisateur[@id = $id]/nom" />
														</strong>
													</span>
												</div>
												<img src="../../../../style/images/profile/unknown.jpg" width="20" alt="" />
											</a>
											<div class="dropdown-menu dropdown-menu-right">
												<a href="../../../../user/logout.php" class="dropdown-item ai-icon">
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
											<a href="../../reservations/scripts/script.php">Toutes les reservations</a>
										</li>
										<li>
											<a href="../../salles/scripts/script.php">Toutes les salles</a>
										</li>
										<li>
											<a href="../../seances/scripts/script.php">Toutes les séances</a>
										</li>
										<li>
											<a href="../scripts/script.php">Tous les utilisateurs</a>
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
									<h2 class="text-black font-w600 mb-0">Liste des utilisateurs</h2>
								</div>
							</div>
							<div class="row">
								<div class="col-12">
									<div class="table-responsive">
										<table id="example5" class="display mb-4 dataTablesCard" style="min-width: 845px;">
											<thead>

												<tr>
													<th>ID Utilisateur</th>
													<th>Nom</th>
													<th>E-Mail</th>
													<th>Téléphone</th>
												</tr>
											</thead>
											<tbody>
												<xsl:for-each select="utilisateurs/utilisateur">
													<tr>
														<td>
															<xsl:value-of select="@id"></xsl:value-of>
														</td>
														<td>
															<xsl:value-of select="nom"></xsl:value-of>
														</td>
														<td>
															<xsl:value-of select="email"></xsl:value-of>
														</td>
														<td>
															<xsl:value-of select="tel"></xsl:value-of>
														</td>
														<!-- <td>
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
																	<a class="dropdown-item" href="../../../../../parsers/UtilisateurParser.php?id={@id}">Delete</a>
																</div>
															</div>
														</td> -->
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
					Designed &amp; Developed by
					<a href="#">Fahd Bouachrine &amp; Aymen Rhalloussi</a>
					2022
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