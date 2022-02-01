<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method='html' />

    <!-- <xsl:key name="date" match="/cinema/seances/seance[film = 'F4']/date/text()" use="." /> -->
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>
                    CINEWEB - Détailles du film
                    <xsl:value-of select="$filmId" />
                </title>
                <!-- Favicon icon -->
                <link rel="icon" type="image/png" sizes="16x16" href="../../../style/images/favicon.png" />

                <!-- Custom Stylesheet -->
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
                        <a href="../../home-page/scripts/script.php" class="brand-logo">
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
                                        <!-- <li class="nav-item dropdown notification_dropdown">
                                            <a class="nav-link dz-fullscreen primary" href="#">
                                                <svg id="Capa_1" enable-background="new 0 0 482.239 482.239" height="22" viewBox="0 0 482.239 482.239" width="22" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="m0 17.223v120.56h34.446v-103.337h103.337v-34.446h-120.56c-9.52 0-17.223 7.703-17.223 17.223z" fill="" />
                                                    <path d="m465.016 0h-120.56v34.446h103.337v103.337h34.446v-120.56c0-9.52-7.703-17.223-17.223-17.223z" fill="" />
                                                    <path d="m447.793 447.793h-103.337v34.446h120.56c9.52 0 17.223-7.703 17.223-17.223v-120.56h-34.446z" fill="" />
                                                    <path d="m34.446 344.456h-34.446v120.56c0 9.52 7.703 17.223 17.223 17.223h120.56v-34.446h-103.337z" fill="" />
                                                </svg>
                                            </a>
                                        </li> -->
                                        <li class="nav-item dropdown header-profile">
                                            <a class="nav-link" href="#" role="button" data-toggle="dropdown">
                                                <div class="header-info">
                                                    <span>
                                                        Bonjour,
                                                        <strong>Visiteur</strong>
                                                    </span>
                                                </div>
                                                <img src="../../../style/images/profile/unknown.jpg" width="20" alt="" />
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
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

                                                <a href="../../reservations-history/scripts/reservations-history.php" class="dropdown-item ai-icon">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-book text-warning">
                                                        <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path>
                                                        <path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path>
                                                    </svg>
                                                    <span class="ml-2">Mes réservations </span>
                                                </a>
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
                                        <span class="nav-text">Menu</span>
                                    </a>
                                    <ul aria-expanded="false">
                                        <li>
                                            <a href="../../home-page/scripts/script.php">Les films disponibles</a>
                                        </li>
                                        <li>
                                            <a href="../../signup/scripts/signup-form.php">S'inscrire</a>
                                        </li>
                                        <li>
                                            <a href="../../login/scripts/login-form.php">Se connecter</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <!-- <div class="copyright">
                                <p>
                                    <strong>CINEWEB - ADMIN Dashboard</strong>
                                    © 2022 All Rights Reserved
                                </p>
                                <p>
                                    Made with
                                    <i class="fa fa-heart"></i>
                                    by Fahd &amp; Aymen
                                </p>
                            </div> -->
                        </div>
                    </div>
                    <!--**********************************
            Sidebar end
        ***********************************-->

                    <!--**********************************
            Content body start
        ***********************************-->
                    <xsl:variable name="film" select="/cinema/films/film[@id = $filmId]" />
                    <div class="content-body">
                        <div class="container-fluid">
                            <div class="row page-titles mx-0">
                                <div class="col-sm-6 p-md-0">
                                    <div class="welcome-text">
                                        <h4>
                                            <xsl:value-of select="$film/titre" />
                                        </h4>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-xl-3 ">
                                                    <div class="tab-content">
                                                        <div role="tabpanel" class="tab-pane fade show active" id="first">
                                                            <img class="img-fluid" src="../../../posters/{$film/poster/@source}" alt="" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--Tab slider End-->
                                                <div class="col-xl-9 col-sm-12">
                                                    <div class="product-detail-content">
                                                        <!--Product details-->
                                                        <div class="new-arrival-content pr">
                                                            <h4>
                                                                <xsl:value-of select="$film/titre" />
                                                            </h4>
                                                            <div class="star-rating mb-2">
                                                                <ul class="produtct-detail-tag">
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
                                                                        <i class="fa fa-star"></i>
                                                                    </li>
                                                                    <li>
                                                                        <i class="fa fa-star"></i>
                                                                    </li>
                                                                </ul>
                                                                <span class="review-text">(34 reviews) </span>
                                                            </div>
                                                            <p class="price">
                                                                <xsl:variable name="minPrix">
                                                                    <xsl:for-each select="/cinema/seances/seance[film = $filmId]/prix">
                                                                        <xsl:sort data-type="number" />
                                                                        <xsl:if test="position()=1">
                                                                            <xsl:value-of select="." />
                                                                        </xsl:if>
                                                                    </xsl:for-each>
                                                                </xsl:variable>
                                                                <xsl:variable name="maxPrix">
                                                                    <xsl:for-each select="/cinema/seances/seance[film = $filmId]/prix">
                                                                        <xsl:sort data-type="number" order="descending" />
                                                                        <xsl:if test="position()=1">
                                                                            <xsl:value-of select="." />
                                                                        </xsl:if>
                                                                    </xsl:for-each>
                                                                </xsl:variable>
                                                                <xsl:choose>
                                                                    <xsl:when test="$minPrix = $maxPrix">
                                                                        <xsl:value-of select="$maxPrix" />
                                                                        DH
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                        <xsl:value-of select="$minPrix" />
                                                                        DH -
                                                                        <xsl:value-of select="$maxPrix" />
                                                                        DH
                                                                    </xsl:otherwise>
                                                                </xsl:choose>
                                                            </p>
                                                            <p>
                                                                Année:
                                                                <span class="item">
                                                                    <xsl:value-of select="$film/@annee" />
                                                                </span>
                                                            </p>
                                                            <p>
                                                                Durée:
                                                                <span class="item">
                                                                    <xsl:value-of select="$film/duree" />
                                                                    <!-- <i class="fa fa-clock-o"></i> -->
                                                                </span>
                                                            </p>
                                                            <p>
                                                                Réalisateur:
                                                                <span class="item">
                                                                    <xsl:value-of select="$film/realisateur" />
                                                                </span>
                                                            </p>
                                                            <p>
                                                                Genre:
                                                                <span class="badge badge-success light">
                                                                    <xsl:value-of select="$film/genre" />
                                                                </span>
                                                            </p>
                                                            <p class="text-content">
                                                                <xsl:value-of select="$film/description" />
                                                            </p>
                                                            <div class="filtaring-area my-3">
                                                                <div class="size-filter">
                                                                    <h4 class="m-b-15">Séances</h4>
                                                                    <xsl:variable name="dates" select="/cinema/seances/seance[film = $filmId]/date" />
                                                                    <xsl:variable name="filmSeances" select="/cinema/seances/seance[film = $filmId]" />
                                                                    <ul class="nav nav-pills mb-4 light">
                                                                        <!-- <xsl:for-each select="/cinema/seances/seance[film = $filmId]/date/text()[generate-id() = generate-id(key('date',.)[1])]"> -->
                                                                        <xsl:for-each select="$dates">
                                                                            <xsl:if test="generate-id() = generate-id($dates[. = current()][1])">
                                                                                <xsl:choose>
                                                                                    <xsl:when test="position() = 1">
                                                                                        <li class=" nav-item">
                                                                                            <a href="#navpills-{position()}" class="nav-link active" data-toggle="tab" aria-expanded="false">
                                                                                                <xsl:value-of select="." />
                                                                                            </a>
                                                                                        </li>
                                                                                    </xsl:when>
                                                                                    <xsl:when test="position() = last()">
                                                                                        <li class=" nav-item">
                                                                                            <a href="#navpills-{position()}" class="nav-link" data-toggle="tab" aria-expanded="true">
                                                                                                <xsl:value-of select="." />
                                                                                            </a>
                                                                                        </li>
                                                                                    </xsl:when>
                                                                                    <xsl:otherwise>
                                                                                        <li class=" nav-item">
                                                                                            <a href="#navpills-{position()}" class="nav-link" data-toggle="tab" aria-expanded="false">
                                                                                                <xsl:value-of select="." />
                                                                                            </a>
                                                                                        </li>
                                                                                    </xsl:otherwise>
                                                                                </xsl:choose>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </ul>
                                                                    <div class="tab-content">
                                                                        <xsl:for-each select="$dates">
                                                                            <xsl:if test="generate-id() = generate-id($dates[. = current()][1])">
                                                                                <xsl:variable name="date" select="." />
                                                                                <xsl:choose>
                                                                                    <xsl:when test="position() = 1">
                                                                                        <div id="navpills-{position()}" class="tab-pane active">
                                                                                            <div class="row">
                                                                                                <div class="col-md-12">
                                                                                                    <xsl:for-each select="$filmSeances[date = $date]/heure">
                                                                                                        <button type="button" class="btn-xs btn-rounded btn-warning mr-1" onclick="document.getElementById('seanceId').value = '{./../@id}';">
                                                                                                            <xsl:value-of select="." />
                                                                                                            :
                                                                                                            <xsl:value-of select="./../prix" />
                                                                                                            DH
                                                                                                        </button>
                                                                                                    </xsl:for-each>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </xsl:when>
                                                                                    <xsl:otherwise>
                                                                                        <div id="navpills-{position()}" class="tab-pane">
                                                                                            <div class="row">
                                                                                                <div class="col-md-12">
                                                                                                    <xsl:for-each select="$filmSeances[date = $date]/heure">
                                                                                                        <button type="button" class="btn-xs btn-rounded btn-warning mr-1" onclick="document.getElementById('seanceId').value = '{./../@id}';">
                                                                                                            <xsl:value-of select="." />
                                                                                                            :
                                                                                                            <xsl:value-of select="./../prix" />
                                                                                                            DH
                                                                                                        </button>
                                                                                                    </xsl:for-each>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </xsl:otherwise>
                                                                                </xsl:choose>
                                                                            </xsl:if>
                                                                        </xsl:for-each>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!--Quantity start-->
                                                            <!-- <div class="col-2 px-0">
                                                                <input type="number" name="num" class="form-control input-btn input-number" value="1" />
                                                            </div> -->
                                                            <!--Quanatity End-->
                                                            <form action="../../film-details/scripts/reservation.php" method="post">
                                                                <input name="utilisateur" type="hidden" value="U1" />
                                                                <input name="seance" id="seanceId" type="hidden" />
                                                                <div class="shopping-cart mt-3">
                                                                    <a class="btn btn-primary btn-lg" href="#" onclick="this.closest('form').submit();return false;">
                                                                        <i class="fa fa-ticket mr-2"></i>
                                                                        Réserver
                                                                    </a>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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