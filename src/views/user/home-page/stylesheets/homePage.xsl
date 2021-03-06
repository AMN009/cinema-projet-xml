<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method='html' />

	<xsl:template match="/cinema">

		<html lang="en">
			<head>
				<meta charset="utf-8" />
				<meta http-equiv="X-UA-Compatible" content="IE=edge" />
				<meta name="viewport" content="width=device-width,initial-scale=1" />
				<title>CINEWEB - Accueil</title>
				<!-- Favicon icon -->
				<link rel="icon" type="image/png" sizes="16x16" href="../../../style/images/favicon.png" />
				<link href="../../../style/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
				<link href="../../../style/css/style.css" rel="stylesheet" />

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
						<a href="../scripts/script.php" class="brand-logo">
							<img class="logo-abbr" src="../../../style/images/movie-logo.png" alt="" />
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
														<xsl:choose>
															<xsl:when test="$id = 'visiteur'">
																<strong>Visiteur</strong>
															</xsl:when>
															<xsl:otherwise>
																<strong>
																	<xsl:value-of select="utilisateurs/utilisateur[@id = $id]/nom" />
																</strong>
															</xsl:otherwise>
														</xsl:choose>
													</span>
												</div>
												<img src="../../../style/images/profile/unknown.jpg" width="20" alt="" />
											</a>
											<div class="dropdown-menu dropdown-menu-right">
												<xsl:choose>
													<xsl:when test="$id = 'visiteur'">
														<a href="../../signup/scripts/signup-form.php" class="dropdown-item ai-icon">
															<svg id="icon-signup" xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-plus text-primary">
																<path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
																<circle cx="8.5" cy="7" r="4"></circle>
																<line x1="20" y1="8" x2="20" y2="14"></line>
																<line x1="23" y1="11" x2="17" y2="11"></line>
															</svg>
															<span class="ml-2">S'inscrire </span>
														</a>
														<a href="../../login/scripts/login-form.php" class="dropdown-item ai-icon">
															<svg id="icon-login" xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-in text-success">
																<path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
																<polyline points="10 17 15 12 10 7"></polyline>
																<line x1="15" y1="12" x2="3" y2="12"></line>
															</svg>
															<span class="ml-2">S'authentifier </span>
														</a>
													</xsl:when>
													<xsl:otherwise>
														<a href="../../reservations-history/scripts/reservations-history.php" class="dropdown-item ai-icon">
															<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-book text-warning">
																<path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path>
																<path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path>
															</svg>
															<span class="ml-2">Mes r??servations </span>
														</a>
														<a href="../../logout.php" class="dropdown-item ai-icon">
															<svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
																<path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
																<polyline points="16 17 21 12 16 7"></polyline>
																<line x1="21" y1="12" x2="9" y2="12"></line>
															</svg>
															<span class="ml-2">Se d??connecter </span>
														</a>
													</xsl:otherwise>
												</xsl:choose>
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
										<span class="nav-text">Menu</span>
									</a>
									<ul aria-expanded="false">
										<li>
											<a href="../scripts/script.php">Les films disponibles</a>
										</li>
										<xsl:if test="$id = 'visiteur'">
											<li>
												<a href="../../signup/scripts/signup-form.php">S'inscrire</a>
											</li>
											<li>
												<a href="../../login/scripts/login-form.php">Se connecter</a>
											</li>
										</xsl:if>
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
						<div class="container-fluid">
							<div class="row page-titles mx-0">
								<div class="col-sm-6 p-md-0">
									<div class="welcome-text">
										<h4>Films disponibles maintenant</h4>
									</div>
								</div>
								<div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
									<ol class="breadcrumb">
										<li class="breadcrumb-item">
											<a href="javascript:void(0)">Liste</a>
										</li>
										<li class="breadcrumb-item active">
											<a href="javascript:void(0)">Films disponibles</a>
										</li>
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
														<img class="img-fluid" src="../../../posters/{poster/@source}" alt="" />
													</div>
													<div class="new-arrival-content text-center mt-3">
														<h4>
															<a href="../../film-details/scripts/film-details.php?film={@id}">
																<xsl:value-of select="titre"></xsl:value-of>
															</a>
														</h4>
														<ul class="star-rating">
															<li>
																<i class="fa fa-star"></i>
															</li>
															<li>
																<i class="fa fa-star"></i>
															</li>
															<li>
																<i class="fa fa-star"></i>
															</li>
															<li>
																<i class="fa fa-star-half-empty"></i>
															</li>
															<li>
																<i class="fa fa-star-half-empty"></i>
															</li>
														</ul>
														<span class="price">
															<xsl:value-of select="genre"></xsl:value-of>
														</span>
														<h6>
															<a href="../../film-details/scripts/film-details.php?film={@id}">Plus de d??tails</a>
														</h6>
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
				<script src="../../../style/vendor/global/global.min.js"></script>
				<script src="../../../style/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
				<script src="../../../style/vendor/chart.js/Chart.bundle.min.js"></script>
				<script src="../../../style/js/custom.min.js"></script>
				<script src="../../../style/js/deznav-init.js"></script>
				<!-- Apex Chart -->
				<script src="../../../style/vendor/apexchart/apexchart.js"></script>

				<script src="../../../style/vendor/highlightjs/highlight.pack.min.js"></script>
				<!-- Circle progress -->


			</body>

		</html>


	</xsl:template>
</xsl:stylesheet>