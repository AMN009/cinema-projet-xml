<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method='html' />

    <xsl:template match="/cinema">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>CINEWEB - Liste des séances</title>
                <!-- Favicon icon -->
                <link rel="icon" type="image/png" sizes="16x16" href="../../../style/images/favicon.png" />
                <!-- Alternative -->
                <link rel="icon" type="image/png" sizes="16x16" href="../../../style/images/favicon.png" />

                <!-- Custom Stylesheet -->
                <link href="../../../style/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
                <link href="../../../style/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
                <link href="../../../style/css/style.css" rel="stylesheet" />
                <!-- Alternative -->
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
                        <a href="index.html" class="brand-logo">
                            <img class="logo-abbr" src="../../../style/images/logo.png" alt="" />
                            <img class="logo-compact" src="../../../style/images/logo-text.png" alt="" />
                            <img class="brand-title" src="../../../style/images/logo-text.png" alt="" />
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
                                        <div class="search_bar dropdown show">
                                            <div class="dropdown-menu p-0 m-0 show">
                                                <form>
                                                    <input class="form-control" type="search" placeholder="Search Here" aria-label="Search" />
                                                </form>
                                            </div>
                                            <span class="search_icon p-3 c-pointer" data-toggle="dropdown">
                                                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M23.7871 22.7761L17.9548 16.9437C19.5193 15.145 20.4665 12.7982 20.4665 10.2333C20.4665 4.58714 15.8741 0 10.2333 0C4.58714 0 0 4.59246 0 10.2333C0 15.8741 4.59246 20.4665 10.2333 20.4665C12.7982 20.4665 15.145 19.5193 16.9437 17.9548L22.7761 23.7871C22.9144 23.9255 23.1007 24 23.2816 24C23.4625 24 23.6488 23.9308 23.7871 23.7871C24.0639 23.5104 24.0639 23.0528 23.7871 22.7761ZM1.43149 10.2333C1.43149 5.38004 5.38004 1.43681 10.2279 1.43681C15.0812 1.43681 19.0244 5.38537 19.0244 10.2333C19.0244 15.0812 15.0812 19.035 10.2279 19.035C5.38004 19.035 1.43149 15.0865 1.43149 10.2333Z" fill="#A4A4A4" />
                                                </svg>
                                            </span>
                                        </div>
                                    </div>

                                    <ul class="navbar-nav header-right">
                                        <li class="nav-item dropdown header-profile">
                                            <a class="nav-link" href="#" role="button" data-toggle="dropdown">
                                                <div class="header-info">
                                                    <span>
                                                        Hello,
                                                        <strong><xsl:value-of select="utilisateurs/utilisateur[@id=$id]/nom"/></strong>
                                                    </span>
                                                </div>
                                                <img src="../../../style/images/profile/pic1.jpg" width="20" alt="" />
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="./app-profile.html" class="dropdown-item ai-icon">
                                                    <svg id="icon-user1" xmlns="http://www.w3.org/2000/svg" class="text-primary" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                                        <circle cx="12" cy="7" r="4"></circle>
                                                    </svg>
                                                    <span class="ml-2">Profile </span>
                                                </a>
                                                <a href="./email-inbox.html" class="dropdown-item ai-icon">
                                                    <svg id="icon-inbox" xmlns="http://www.w3.org/2000/svg" class="text-success" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                                                        <polyline points="22,6 12,13 2,6"></polyline>
                                                    </svg>
                                                    <span class="ml-2">Inbox </span>
                                                </a>
                                                <a href="../../logout.php" class="dropdown-item ai-icon">
                                                    <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                        <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                                        <polyline points="16 17 21 12 16 7"></polyline>
                                                        <line x1="21" y1="12" x2="9" y2="12"></line>
                                                    </svg>
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
                                <li>
                                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                        <i class="flaticon-381-networking"></i>
                                        <span class="nav-text">Dashboard</span>
                                    </a>
                                    <ul aria-expanded="false">
                                        <li>
                                            <a href="index.html">Dashboard</a>
                                        </li>
                                        <li>
                                            <a href="page-analytics.html">Analytics</a>
                                        </li>
                                        <li>
                                            <a href="page-review.html">Review</a>
                                        </li>
                                        <li>
                                            <a href="page-order.html">Order</a>
                                        </li>
                                        <li>
                                            <a href="page-order-list.html">Order List</a>
                                        </li>
                                        <li>
                                            <a href="page-general-customers.html">General Customers</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                        <i class="flaticon-381-television"></i>
                                        <span class="nav-text">Apps</span>
                                    </a>
                                    <ul aria-expanded="false">
                                        <li>
                                            <a href="./app-profile.html">Profile</a>
                                        </li>
                                        <li>
                                            <a class="has-arrow" href="javascript:void()" aria-expanded="false">Email</a>
                                            <ul aria-expanded="false">
                                                <li>
                                                    <a href="./email-compose.html">Compose</a>
                                                </li>
                                                <li>
                                                    <a href="./email-inbox.html">Inbox</a>
                                                </li>
                                                <li>
                                                    <a href="./email-read.html">Read</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="./app-calender.html">Calendar</a>
                                        </li>
                                        <li>
                                            <a class="has-arrow" href="javascript:void()" aria-expanded="false">Shop</a>
                                            <ul aria-expanded="false">
                                                <li>
                                                    <a href="./ecom-product-grid.html">Product Grid</a>
                                                </li>
                                                <li>
                                                    <a href="./ecom-product-list.html">Product List</a>
                                                </li>
                                                <li>
                                                    <a href="./ecom-product-detail.html">Product Details</a>
                                                </li>
                                                <li>
                                                    <a href="./ecom-product-order.html">Order</a>
                                                </li>
                                                <li>
                                                    <a href="./ecom-checkout.html">Checkout</a>
                                                </li>
                                                <li>
                                                    <a href="./ecom-invoice.html">Invoice</a>
                                                </li>
                                                <li>
                                                    <a href="./ecom-customers.html">Customers</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                        <i class="flaticon-381-controls-3"></i>
                                        <span class="nav-text">Charts</span>
                                    </a>
                                    <ul aria-expanded="false">
                                        <li>
                                            <a href="./chart-flot.html">Flot</a>
                                        </li>
                                        <li>
                                            <a href="./chart-morris.html">Morris</a>
                                        </li>
                                        <li>
                                            <a href="./chart-chartjs.html">Chartjs</a>
                                        </li>
                                        <li>
                                            <a href="./chart-chartist.html">Chartist</a>
                                        </li>
                                        <li>
                                            <a href="./chart-sparkline.html">Sparkline</a>
                                        </li>
                                        <li>
                                            <a href="./chart-peity.html">Peity</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                        <i class="flaticon-381-internet"></i>
                                        <span class="nav-text">Bootstrap</span>
                                    </a>
                                    <ul aria-expanded="false">
                                        <li>
                                            <a href="./ui-accordion.html">Accordion</a>
                                        </li>
                                        <li>
                                            <a href="./ui-alert.html">Alert</a>
                                        </li>
                                        <li>
                                            <a href="./ui-badge.html">Badge</a>
                                        </li>
                                        <li>
                                            <a href="./ui-button.html">Button</a>
                                        </li>
                                        <li>
                                            <a href="./ui-modal.html">Modal</a>
                                        </li>
                                        <li>
                                            <a href="./ui-button-group.html">Button Group</a>
                                        </li>
                                        <li>
                                            <a href="./ui-list-group.html">List Group</a>
                                        </li>
                                        <li>
                                            <a href="./ui-media-object.html">Media Object</a>
                                        </li>
                                        <li>
                                            <a href="./ui-card.html">Cards</a>
                                        </li>
                                        <li>
                                            <a href="./ui-carousel.html">Carousel</a>
                                        </li>
                                        <li>
                                            <a href="./ui-dropdown.html">Dropdown</a>
                                        </li>
                                        <li>
                                            <a href="./ui-popover.html">Popover</a>
                                        </li>
                                        <li>
                                            <a href="./ui-progressbar.html">Progressbar</a>
                                        </li>
                                        <li>
                                            <a href="./ui-tab.html">Tab</a>
                                        </li>
                                        <li>
                                            <a href="./ui-typography.html">Typography</a>
                                        </li>
                                        <li>
                                            <a href="./ui-pagination.html">Pagination</a>
                                        </li>
                                        <li>
                                            <a href="./ui-grid.html">Grid</a>
                                        </li>

                                    </ul>
                                </li>
                                <li>
                                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                        <i class="flaticon-381-heart"></i>
                                        <span class="nav-text">Plugins</span>
                                    </a>
                                    <ul aria-expanded="false">
                                        <li>
                                            <a href="./uc-select2.html">Select 2</a>
                                        </li>
                                        <li>
                                            <a href="./uc-nestable.html">Nestedable</a>
                                        </li>
                                        <li>
                                            <a href="./uc-noui-slider.html">Noui Slider</a>
                                        </li>
                                        <li>
                                            <a href="./uc-sweetalert.html">Sweet Alert</a>
                                        </li>
                                        <li>
                                            <a href="./uc-toastr.html">Toastr</a>
                                        </li>
                                        <li>
                                            <a href="./map-jqvmap.html">Jqv Map</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="widget-basic.html" class="ai-icon" aria-expanded="false">
                                        <i class="flaticon-381-settings-2"></i>
                                        <span class="nav-text">Widget</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                        <i class="flaticon-381-notepad"></i>
                                        <span class="nav-text">Forms</span>
                                    </a>
                                    <ul aria-expanded="false">
                                        <li>
                                            <a href="./form-element.html">Form Elements</a>
                                        </li>
                                        <li>
                                            <a href="./form-wizard.html">Wizard</a>
                                        </li>
                                        <li>
                                            <a href="./form-editor-summernote.html">Summernote</a>
                                        </li>
                                        <li>
                                            <a href="form-pickers.html">Pickers</a>
                                        </li>
                                        <li>
                                            <a href="form-validation-jquery.html">Jquery Validate</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                        <i class="flaticon-381-network"></i>
                                        <span class="nav-text">Table</span>
                                    </a>
                                    <ul aria-expanded="false">
                                        <li>
                                            <a href="table-bootstrap-basic.html">Bootstrap</a>
                                        </li>
                                        <li>
                                            <a href="table-datatable-basic.html">Datatable</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                        <i class="flaticon-381-layer-1"></i>
                                        <span class="nav-text">Pages</span>
                                    </a>
                                    <ul aria-expanded="false">
                                        <li>
                                            <a href="./page-register.html">Register</a>
                                        </li>
                                        <li>
                                            <a href="./page-login.html">Login</a>
                                        </li>
                                        <li>
                                            <a class="has-arrow" href="javascript:void()" aria-expanded="false">Error</a>
                                            <ul aria-expanded="false">
                                                <li>
                                                    <a href="./page-error-400.html">Error 400</a>
                                                </li>
                                                <li>
                                                    <a href="./page-error-403.html">Error 403</a>
                                                </li>
                                                <li>
                                                    <a href="./page-error-404.html">Error 404</a>
                                                </li>
                                                <li>
                                                    <a href="./page-error-500.html">Error 500</a>
                                                </li>
                                                <li>
                                                    <a href="./page-error-503.html">Error 503</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="./page-lock-screen.html">Lock Screen</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>

                            <!-- <div class="add-menu-sidebar">
                                <img src="../../../style/images/icon1.png" alt="" />
                                <p>Organize your menus through button bellow</p>
                                <a href="javascript:void(0);" class="btn btn-primary btn-block light">+ Add Menus</a>
                            </div> -->
                            <div class="copyright">
                                <p>
                                    <strong>CINEWEB - ADMIN Dashboard</strong>
                                    © 2022 All Rights Reserved
                                </p>
                                <p>
                                    Made with
                                    <i class="fa fa-heart"></i>
                                    by Fahd &amp; Aymen
                                </p>
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
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <xsl:for-each select="reservations/reservation[utilisateur = $utilisateurId]">
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
                                                        <td>
                                                            <xsl:value-of select="date" />
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select="heure" />
                                                        </td>
                                                        <td>
                                                            <div class="d-flex align-items-center">
                                                                <img src="src/views/posters/{ $film/poster/@source }" class="rounded-lg mr-2" width="22" alt="" />
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
                                                                    <a class="dropdown-item" href="src/views/admin/forms/modification/seance/scripts/show-script.php?seance={@id}">
                                                                        <i class="las la-pen-square scale5 text-success mr-2"></i>
                                                                        Modifier la séance
                                                                    </a>
                                                                    <a class="dropdown-item" href="src/views/admin/lists/seances/scripts/delete-script.php?seance={@id}">
                                                                        <i class="las la-trash scale5 text-danger mr-2"></i>
                                                                        Supprimer la séance
                                                                    </a>
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