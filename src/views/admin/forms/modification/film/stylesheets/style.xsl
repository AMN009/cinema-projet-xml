<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method='html' />

    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>CINEWEB - Modification d'un film</title>
                <!-- Alternative -->
                <link rel="icon" type="image/png" sizes="16x16" href="../../../../../style/images/favicon.png" />
                <!-- Alternative -->
                <link href="../../../../../style/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
                <link href="../../../../../style/css/style.css" rel="stylesheet" />

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
                            <img class="logo-abbr" src="../../../../../style/images/movie-logo.png" alt="" />
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
                                                        <strong>ADMIN</strong>
                                                    </span>
                                                </div>
                                                <img src="../../../../../style/images/profile/unknown.jpg" width="20" alt="" />
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="../../../../../user/logout.php" class="dropdown-item ai-icon">
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
                                            <a href="../../../../lists/films/scripts/script.php">Tous les films</a>
                                        </li>
                                        <li>
                                            <a href="../../../../lists/reservations/scripts/script.php">Toutes les reservations</a>
                                        </li>
                                        <li>
                                            <a href="../../../../lists/salles/scripts/script.php">Toutes les salles</a>
                                        </li>
                                        <li>
                                            <a href="../../../../lists/seances/scripts/script.php">Toutes les séances</a>
                                        </li>
                                        <li>
                                            <a href="../../../../lists/utilisateurs/scripts/script.php">Tous les utilisateurs</a>
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
                        <div class="container-fluid">
                            <div class="form-head d-flex mb-3 align-items-start">
                                <div class="mr-auto d-none d-lg-block">
                                    <h2 class="text-black font-w600 mb-0">
                                        Modifier le film #
                                        <xsl:value-of select="$filmId" />
                                    </h2>
                                    <p class="mb-0">Remplissez les informations nécessaires</p>
                                </div>
                            </div>
                            <!-- row -->

                            <div class="row">
                                <div class="col-xl-12 col-lg-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Modification Du Film</h4>
                                        </div>
                                        <div class="card-body">
                                            <div class="basic-form">
                                                <form action="../scripts/modification-script.php" method="post" enctype="multipart/form-data">
                                                    <xsl:variable name="film" select="/cinema/films/film[@id = $filmId]" />
                                                    <input name="id" type="hidden" value="{$filmId}" />
                                                    <div class="form-row">
                                                        <div class="form-group col-md-6">
                                                            <label>Titre du film</label>
                                                            <input name="film-titre" type="hidden" value="{$film/titre}" />
                                                            <input name="titre" class="form-control form-control-lg" type="text" placeholder="{$film/titre}" />
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label>Genre(s) du film</label>
                                                            <input name="film-genre" type="hidden" value="{$film/genre}" />
                                                            <input name="genre" class="form-control form-control-lg" type="text" placeholder="{$film/genre}" />
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label>Réalisateur du film</label>
                                                            <input name="film-realisateur" type="hidden" value="{$film/realisateur}" />
                                                            <input name="realisateur" class="form-control form-control-lg" type="text" placeholder="{$film/realisateur}" />
                                                        </div>
                                                        <div class="form-group col-md-3">
                                                            <label>Durée du film</label>
                                                            <input name="film-duree" type="hidden" value="{$film/duree}" />
                                                            <input name="duree" class="form-control form-control-lg" type="text" placeholder="{$film/duree}" />
                                                        </div>
                                                        <div class="form-group col-md-3">
                                                            <label>Année de sortie</label>
                                                            <input name="film-annee" type="hidden" value="{$film/@annee}" />
                                                            <input name="annee" class="form-control form-control-lg" type="text" placeholder="{$film/@annee}" />
                                                        </div>
                                                        <div class="form-group col-md-9">
                                                            <label>Description du film</label>
                                                            <input name="film-description" type="hidden" value="{$film/description}" />
                                                            <textarea name="description" class="form-control" rows="4" id="comment">
                                                                <xsl:value-of select="$film/description" />
                                                            </textarea>
                                                        </div>
                                                        <div class="form-group col-md-3">
                                                            <label>Poster du film</label>
                                                            <input name="film-poster" type="hidden" value="{$film/poster/@source}" />
                                                            <div class="custom-file">
                                                                <input name="poster" type="file" class="custom-file-input" />
                                                                <label class="custom-file-label">Choose file</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Valider</button>
                                                </form>
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
                                Copyright © Designed &amp; Developed by
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
                <script src="../../../../../style/vendor/global/global.min.js"></script>
                <script src="../../../../../style/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
                <script src="../../../../../style/vendor/chart.js/Chart.bundle.min.js"></script>
                <script src="../../../../../style/js/custom.min.js"></script>
                <script src="../../../../../style/js/deznav-init.js"></script>
                <!-- Apex Chart -->
                <script src="../../../../../style/vendor/apexchart/apexchart.js"></script>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>