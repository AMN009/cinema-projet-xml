<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method='html' />

    <xsl:template match="/cinema">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>CINEWEB - Mes réservations</title>
                <!-- Favicon icon -->
                <link rel="icon" type="image/png" sizes="16x16" href="../../../style/images/favicon.png" />

                <!-- Custom Stylesheet -->
                <link href="../../../style/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
                <link href="../../../style/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
                <link href="../../../style/css/style.css" rel="stylesheet" />
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
                                                            <span class="ml-2">Mes réservations </span>
                                                        </a>
                                                        <a href="../../logout.php" class="dropdown-item ai-icon">
                                                            <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                                <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                                                <polyline points="16 17 21 12 16 7"></polyline>
                                                                <line x1="21" y1="12" x2="9" y2="12"></line>
                                                            </svg>
                                                            <span class="ml-2">Se déconnecter </span>
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
                                            <a href="../../home-page/scripts/script.php">Les films disponibles</a>
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
                            <div class="form-head d-flex mb-3 align-items-start">
                                <div class="mr-auto d-none d-lg-block">
                                    <h2 class="text-black font-w600 mb-0">Réservations</h2>
                                    <p class="mb-0">L'historique de mes réservations</p>
                                </div>
                            </div>
                            <!-- row -->

                            <div class="row">
                                <div class="col-12">
                                    <div class="table-responsive">
                                        <table id="example5" class="display mb-4 dataTablesCard" style="min-width: 845px;">
                                            <thead>
                                                <tr>
                                                    <th>CODE Réservation</th>
                                                    <th>Date</th>
                                                    <th>Heure</th>
                                                    <th>Film</th>
                                                    <th>Siège</th>
                                                    <th>Prix</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <xsl:for-each select="reservations/reservation[utilisateur = $id]">
                                                    <xsl:sort select="@code" />
                                                    <xsl:variable name="reservationSeance" select="seance" />
                                                    <xsl:variable name="seanceFilm" select="../../seances/seance[@id = $reservationSeance]" />
                                                    <xsl:variable name="film" select="../../films/film[@id = $seanceFilm/film]" />
                                                    <xsl:variable name="reservationSiege" select="siege" />
                                                    <xsl:variable name="siege" select="../../sieges/siege[@id = $reservationSiege]" />
                                                    <tr>
                                                        <td>
                                                            #
                                                            <xsl:value-of select="@code" />
                                                        </td>
                                                        <xsl:variable name="code" select="@code"/>
                                                        <td>
                                                            <xsl:value-of select="date" />
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select="heure" />
                                                        </td>
                                                        <td>
                                                            <div class="d-flex align-items-center">
                                                                <img src="../../../posters/{ $film/poster/@source }" class="rounded-lg mr-2" width="22" alt="" />
                                                                <span class="w-space-no">
                                                                    <xsl:value-of select="$film/titre" />
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            Salle :
                                                            <span class="badge light badge-danger">
                                                                <xsl:value-of select="$siege/salle" />
                                                            </span>
                                                            <br />
                                                            Rang :
                                                            <span class="badge light badge-warning my-1">
                                                                <xsl:value-of select="$siege/rang" />
                                                            </span>
                                                            <br />
                                                            N° :
                                                            <span class="badge light badge-info">
                                                                <xsl:value-of select="$siege/numero" />
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <span class="badge badge-xl light badge-success">
                                                                <i class="ti-money mr-1"></i>
                                                                <xsl:value-of select="$seanceFilm/prix" />
                                                                DH
                                                            </span>
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
                                                                    <a class="dropdown-item" href="../../tickets/stylesheets/pdf.php?code={$code}">
                                                                        <i class="las la-file-invoice scale5 text-dark mr-2"></i>
                                                                        Consulter le ticket
                                                                    </a>
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
                <script src="../../../style/js/custom.min.js"></script>
                <script src="../../../style/js/deznav-init.js"></script>

                <!-- Datatable -->
                <script src="../../../style/vendor/datatables/js/jquery.dataTables.min.js"></script>

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