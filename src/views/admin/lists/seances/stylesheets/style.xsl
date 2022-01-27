<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method='html' />

    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>CINEWEB - Liste des séances</title>
                <!-- Favicon icon -->
                <link rel="icon" type="image/png" sizes="16x16" href="src/views/style/images/favicon.png" />
                <!-- Alternative -->
                <link rel="icon" type="image/png" sizes="16x16" href="../../../../style/images/favicon.png" />

                <!-- Custom Stylesheet -->
                <link href="src/views/style/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
                <link href="src/views/style/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
                <link href="src/views/style/css/style.css" rel="stylesheet" />
                <!-- Alternative -->
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
                            <img class="logo-abbr" src="src/views/style/images/logo.png" alt="" />
                            <img class="logo-compact" src="src/views/style/images/logo-text.png" alt="" />
                            <img class="brand-title" src="src/views/style/images/logo-text.png" alt="" />
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
                    <div class="chatbox">
                        <div class="chatbox-close"></div>
                        <div class="custom-tab-1">
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#notes">Notes</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#alerts">Alerts</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#chat">Chat</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade active show" id="chat" role="tabpanel">
                                    <div class="card mb-sm-3 mb-md-0 contacts_card dz-chat-user-box">
                                        <div class="card-header chat-list-header text-center">
                                            <a href="#">
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect fill="#000000" x="4" y="11" width="16" height="2" rx="1" />
                                                        <rect fill="#000000" opacity="0.3" transform="translate(12.000000, 12.000000) rotate(-270.000000) translate(-12.000000, -12.000000) " x="4" y="11" width="16" height="2" rx="1" />
                                                    </g>
                                                </svg>
                                            </a>
                                            <div>
                                                <h6 class="mb-1">Chat List</h6>
                                                <p class="mb-0">Show All</p>
                                            </div>
                                            <a href="#">
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24" />
                                                        <circle fill="#000000" cx="5" cy="12" r="2" />
                                                        <circle fill="#000000" cx="12" cy="12" r="2" />
                                                        <circle fill="#000000" cx="19" cy="12" r="2" />
                                                    </g>
                                                </svg>
                                            </a>
                                        </div>
                                        <div class="card-body contacts_body p-0 dz-scroll  " id="DZ_W_Contacts_Body">
                                            <ul class="contacts">
                                                <li class="name-first-letter">A</li>
                                                <li class="active dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/1.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Archie Parker</span>
                                                            <p>Kalid is online</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/2.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon offline"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Alfie Mason</span>
                                                            <p>Taherah left 7 mins ago</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/3.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>AharlieKane</span>
                                                            <p>Sami is online</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/4.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon offline"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Athan Jacoby</span>
                                                            <p>Nargis left 30 mins ago</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="name-first-letter">B</li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/5.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon offline"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Bashid Samim</span>
                                                            <p>Rashid left 50 mins ago</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/1.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Breddie Ronan</span>
                                                            <p>Kalid is online</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/2.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon offline"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Ceorge Carson</span>
                                                            <p>Taherah left 7 mins ago</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="name-first-letter">D</li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/3.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Darry Parker</span>
                                                            <p>Sami is online</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/4.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon offline"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Denry Hunter</span>
                                                            <p>Nargis left 30 mins ago</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="name-first-letter">J</li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/5.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon offline"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Jack Ronan</span>
                                                            <p>Rashid left 50 mins ago</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/1.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Jacob Tucker</span>
                                                            <p>Kalid is online</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/2.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon offline"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>James Logan</span>
                                                            <p>Taherah left 7 mins ago</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/3.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Joshua Weston</span>
                                                            <p>Sami is online</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="name-first-letter">O</li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/4.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon offline"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Oliver Acker</span>
                                                            <p>Nargis left 30 mins ago</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="dz-chat-user">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont">
                                                            <img src="src/views/style/images/avatar/5.jpg" class="rounded-circle user_img" alt="" />
                                                            <span class="online_icon offline"></span>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Oscar Weston</span>
                                                            <p>Rashid left 50 mins ago</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card chat dz-chat-history-box d-none">
                                        <div class="card-header chat-list-header text-center">
                                            <a href="#" class="dz-chat-history-back">
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <polygon points="0 0 24 0 24 24 0 24" />
                                                        <rect fill="#000000" opacity="0.3" transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000) " x="14" y="7" width="2" height="10" rx="1" />
                                                        <path d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z" fill="#000000" fill-rule="nonzero" transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997) " />
                                                    </g>
                                                </svg>
                                            </a>
                                            <div>
                                                <h6 class="mb-1">Chat with Khelesh</h6>
                                                <p class="mb-0 text-success">Online</p>
                                            </div>
                                            <div class="dropdown">
                                                <a href="#" data-toggle="dropdown" aria-expanded="false">
                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1">
                                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                            <rect x="0" y="0" width="24" height="24" />
                                                            <circle fill="#000000" cx="5" cy="12" r="2" />
                                                            <circle fill="#000000" cx="12" cy="12" r="2" />
                                                            <circle fill="#000000" cx="19" cy="12" r="2" />
                                                        </g>
                                                    </svg>
                                                </a>
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                    <li class="dropdown-item">
                                                        <i class="fa fa-user-circle text-primary mr-2"></i>
                                                        View profile
                                                    </li>
                                                    <li class="dropdown-item">
                                                        <i class="fa fa-users text-primary mr-2"></i>
                                                        Add to close friends
                                                    </li>
                                                    <li class="dropdown-item">
                                                        <i class="fa fa-plus text-primary mr-2"></i>
                                                        Add to group
                                                    </li>
                                                    <li class="dropdown-item">
                                                        <i class="fa fa-ban text-primary mr-2"></i>
                                                        Block
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="card-body msg_card_body dz-scroll" id="DZ_W_Contacts_Body3">
                                            <div class="d-flex justify-content-start mb-4">
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                                <div class="msg_cotainer">
                                                    Hi, how are you samim?
                                                    <span class="msg_time">8:40 AM, Today</span>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-end mb-4">
                                                <div class="msg_cotainer_send">
                                                    Hi Khalid i am good tnx how about you?
                                                    <span class="msg_time_send">8:55 AM, Today</span>
                                                </div>
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-start mb-4">
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                                <div class="msg_cotainer">
                                                    I am good too, thank you for your chat template
                                                    <span class="msg_time">9:00 AM, Today</span>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-end mb-4">
                                                <div class="msg_cotainer_send">
                                                    You are welcome
                                                    <span class="msg_time_send">9:05 AM, Today</span>
                                                </div>
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-start mb-4">
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                                <div class="msg_cotainer">
                                                    I am looking for your next templates
                                                    <span class="msg_time">9:07 AM, Today</span>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-end mb-4">
                                                <div class="msg_cotainer_send">
                                                    Ok, thank you have a good day
                                                    <span class="msg_time_send">9:10 AM, Today</span>
                                                </div>
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-start mb-4">
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                                <div class="msg_cotainer">
                                                    Bye, see you
                                                    <span class="msg_time">9:12 AM, Today</span>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-start mb-4">
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                                <div class="msg_cotainer">
                                                    Hi, how are you samim?
                                                    <span class="msg_time">8:40 AM, Today</span>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-end mb-4">
                                                <div class="msg_cotainer_send">
                                                    Hi Khalid i am good tnx how about you?
                                                    <span class="msg_time_send">8:55 AM, Today</span>
                                                </div>
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-start mb-4">
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                                <div class="msg_cotainer">
                                                    I am good too, thank you for your chat template
                                                    <span class="msg_time">9:00 AM, Today</span>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-end mb-4">
                                                <div class="msg_cotainer_send">
                                                    You are welcome
                                                    <span class="msg_time_send">9:05 AM, Today</span>
                                                </div>
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-start mb-4">
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                                <div class="msg_cotainer">
                                                    I am looking for your next templates
                                                    <span class="msg_time">9:07 AM, Today</span>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-end mb-4">
                                                <div class="msg_cotainer_send">
                                                    Ok, thank you have a good day
                                                    <span class="msg_time_send">9:10 AM, Today</span>
                                                </div>
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/2.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-start mb-4">
                                                <div class="img_cont_msg">
                                                    <img src="src/views/style/images/avatar/1.jpg" class="rounded-circle user_img_msg" alt="" />
                                                </div>
                                                <div class="msg_cotainer">
                                                    Bye, see you
                                                    <span class="msg_time">9:12 AM, Today</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-footer type_msg">
                                            <div class="input-group">
                                                <textarea class="form-control" placeholder="Type your message..."></textarea>
                                                <div class="input-group-append">
                                                    <button type="button" class="btn btn-primary">
                                                        <i class="fa fa-location-arrow"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="alerts" role="tabpanel">
                                    <div class="card mb-sm-3 mb-md-0 contacts_card">
                                        <div class="card-header chat-list-header text-center">
                                            <a href="#">
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24" />
                                                        <circle fill="#000000" cx="5" cy="12" r="2" />
                                                        <circle fill="#000000" cx="12" cy="12" r="2" />
                                                        <circle fill="#000000" cx="19" cy="12" r="2" />
                                                    </g>
                                                </svg>
                                            </a>
                                            <div>
                                                <h6 class="mb-1">Notications</h6>
                                                <p class="mb-0">Show All</p>
                                            </div>
                                            <a href="#">
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24" />
                                                        <path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" />
                                                        <path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z" fill="#000000" fill-rule="nonzero" />
                                                    </g>
                                                </svg>
                                            </a>
                                        </div>
                                        <div class="card-body contacts_body p-0 dz-scroll" id="DZ_W_Contacts_Body1">
                                            <ul class="contacts">
                                                <li class="name-first-letter">SEVER STATUS</li>
                                                <li class="active">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont primary">KK</div>
                                                        <div class="user_info">
                                                            <span>David Nester Birthday</span>
                                                            <p class="text-primary">Today</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="name-first-letter">SOCIAL</li>
                                                <li>
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont success">
                                                            RU
                                                            <i class="icon fa-birthday-cake"></i>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Perfection Simplified</span>
                                                            <p>Jame Smith commented on your status</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="name-first-letter">SEVER STATUS</li>
                                                <li>
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont primary">
                                                            AU
                                                            <i class="icon fa fa-user-plus"></i>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>AharlieKane</span>
                                                            <p>Sami is online</p>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="d-flex bd-highlight">
                                                        <div class="img_cont info">
                                                            MO
                                                            <i class="icon fa fa-user-plus"></i>
                                                        </div>
                                                        <div class="user_info">
                                                            <span>Athan Jacoby</span>
                                                            <p>Nargis left 30 mins ago</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="card-footer"></div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="notes">
                                    <div class="card mb-sm-3 mb-md-0 note_card">
                                        <div class="card-header chat-list-header text-center">
                                            <a href="#">
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect fill="#000000" x="4" y="11" width="16" height="2" rx="1" />
                                                        <rect fill="#000000" opacity="0.3" transform="translate(12.000000, 12.000000) rotate(-270.000000) translate(-12.000000, -12.000000) " x="4" y="11" width="16" height="2" rx="1" />
                                                    </g>
                                                </svg>
                                            </a>
                                            <div>
                                                <h6 class="mb-1">Notes</h6>
                                                <p class="mb-0">Add New Nots</p>
                                            </div>
                                            <a href="#">
                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24" />
                                                        <path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" />
                                                        <path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z" fill="#000000" fill-rule="nonzero" />
                                                    </g>
                                                </svg>
                                            </a>
                                        </div>
                                        <div class="card-body contacts_body p-0 dz-scroll" id="DZ_W_Contacts_Body2">
                                            <ul class="contacts">
                                                <li class="active">
                                                    <div class="d-flex bd-highlight">
                                                        <div class="user_info">
                                                            <span>New order placed..</span>
                                                            <p>10 Aug 2020</p>
                                                        </div>
                                                        <div class="ml-auto">
                                                            <a href="#" class="btn btn-primary btn-xs sharp mr-1">
                                                                <i class="fa fa-pencil"></i>
                                                            </a>
                                                            <a href="#" class="btn btn-danger btn-xs sharp">
                                                                <i class="fa fa-trash"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="d-flex bd-highlight">
                                                        <div class="user_info">
                                                            <span>Youtube, a video-sharing website..</span>
                                                            <p>10 Aug 2020</p>
                                                        </div>
                                                        <div class="ml-auto">
                                                            <a href="#" class="btn btn-primary btn-xs sharp mr-1">
                                                                <i class="fa fa-pencil"></i>
                                                            </a>
                                                            <a href="#" class="btn btn-danger btn-xs sharp">
                                                                <i class="fa fa-trash"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="d-flex bd-highlight">
                                                        <div class="user_info">
                                                            <span>john just buy your product..</span>
                                                            <p>10 Aug 2020</p>
                                                        </div>
                                                        <div class="ml-auto">
                                                            <a href="#" class="btn btn-primary btn-xs sharp mr-1">
                                                                <i class="fa fa-pencil"></i>
                                                            </a>
                                                            <a href="#" class="btn btn-danger btn-xs sharp">
                                                                <i class="fa fa-trash"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="d-flex bd-highlight">
                                                        <div class="user_info">
                                                            <span>Athan Jacoby</span>
                                                            <p>10 Aug 2020</p>
                                                        </div>
                                                        <div class="ml-auto">
                                                            <a href="#" class="btn btn-primary btn-xs sharp mr-1">
                                                                <i class="fa fa-pencil"></i>
                                                            </a>
                                                            <a href="#" class="btn btn-danger btn-xs sharp">
                                                                <i class="fa fa-trash"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                                        <li class="nav-item dropdown notification_dropdown">
                                            <a class="nav-link dz-fullscreen primary" href="#">
                                                <svg id="Capa_1" enable-background="new 0 0 482.239 482.239" height="22" viewBox="0 0 482.239 482.239" width="22" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="m0 17.223v120.56h34.446v-103.337h103.337v-34.446h-120.56c-9.52 0-17.223 7.703-17.223 17.223z" fill="" />
                                                    <path d="m465.016 0h-120.56v34.446h103.337v103.337h34.446v-120.56c0-9.52-7.703-17.223-17.223-17.223z" fill="" />
                                                    <path d="m447.793 447.793h-103.337v34.446h120.56c9.52 0 17.223-7.703 17.223-17.223v-120.56h-34.446z" fill="" />
                                                    <path d="m34.446 344.456h-34.446v120.56c0 9.52 7.703 17.223 17.223 17.223h120.56v-34.446h-103.337z" fill="" />
                                                </svg>
                                            </a>
                                        </li>
                                        <li class="nav-item dropdown notification_dropdown">
                                            <a class="nav-link bell bell-link primary" href="#">
                                                <svg width="24" height="24" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M20.4604 0.848846H3.31682C2.64742 0.849582 2.00565 1.11583 1.53231 1.58916C1.05897 2.0625 0.792727 2.70427 0.791992 3.37367V15.1562C0.792727 15.8256 1.05897 16.4674 1.53231 16.9407C2.00565 17.414 2.64742 17.6803 3.31682 17.681C3.53999 17.6812 3.75398 17.7699 3.91178 17.9277C4.06958 18.0855 4.15829 18.2995 4.15843 18.5226V20.3168C4.15843 20.6214 4.24112 20.9204 4.39768 21.1817C4.55423 21.4431 4.77879 21.6571 5.04741 21.8008C5.31602 21.9446 5.61861 22.0127 5.92292 21.998C6.22723 21.9833 6.52183 21.8863 6.77533 21.7173L12.6173 17.8224C12.7554 17.7299 12.9179 17.6807 13.0841 17.681H17.187C17.7383 17.68 18.2742 17.4993 18.7136 17.1664C19.1531 16.8334 19.472 16.3664 19.6222 15.8359L22.8965 4.05007C22.9998 3.67478 23.0152 3.28071 22.9413 2.89853C22.8674 2.51634 22.7064 2.15636 22.4707 1.8466C22.2349 1.53684 21.9309 1.28565 21.5822 1.1126C21.2336 0.93954 20.8497 0.849282 20.4604 0.848846ZM21.2732 3.60301L18.0005 15.3847C17.9499 15.5614 17.8432 15.7168 17.6964 15.8274C17.5496 15.938 17.3708 15.9979 17.187 15.9978H13.0841C12.5855 15.9972 12.098 16.1448 11.6836 16.4219L5.84165 20.3168V18.5226C5.84091 17.8532 5.57467 17.2115 5.10133 16.7381C4.62799 16.2648 3.98622 15.9985 3.31682 15.9978C3.09365 15.9977 2.87966 15.909 2.72186 15.7512C2.56406 15.5934 2.47534 15.3794 2.47521 15.1562V3.37367C2.47534 3.15051 2.56406 2.93652 2.72186 2.77871C2.87966 2.62091 3.09365 2.5322 3.31682 2.53206H20.4604C20.5905 2.53239 20.7187 2.56274 20.8352 2.62073C20.9516 2.67872 21.0531 2.7628 21.1318 2.86643C21.2104 2.97005 21.2641 3.09042 21.2886 3.21818C21.3132 3.34594 21.3079 3.47763 21.2732 3.60301Z" fill="#000" />
                                                    <path d="M5.84161 8.42333H10.0497C10.2729 8.42333 10.4869 8.33466 10.6448 8.17683C10.8026 8.019 10.8913 7.80493 10.8913 7.58172C10.8913 7.35851 10.8026 7.14445 10.6448 6.98661C10.4869 6.82878 10.2729 6.74011 10.0497 6.74011H5.84161C5.6184 6.74011 5.40433 6.82878 5.2465 6.98661C5.08867 7.14445 5 7.35851 5 7.58172C5 7.80493 5.08867 8.019 5.2465 8.17683C5.40433 8.33466 5.6184 8.42333 5.84161 8.42333Z" fill="#000" />
                                                    <path d="M13.4161 10.1066H5.84161C5.6184 10.1066 5.40433 10.1952 5.2465 10.3531C5.08867 10.5109 5 10.725 5 10.9482C5 11.1714 5.08867 11.3854 5.2465 11.5433C5.40433 11.7011 5.6184 11.7898 5.84161 11.7898H13.4161C13.6393 11.7898 13.8534 11.7011 14.0112 11.5433C14.169 11.3854 14.2577 11.1714 14.2577 10.9482C14.2577 10.725 14.169 10.5109 14.0112 10.3531C13.8534 10.1952 13.6393 10.1066 13.4161 10.1066Z" fill="#000" />
                                                </svg>
                                            </a>
                                        </li>
                                        <li class="nav-item dropdown notification_dropdown">
                                            <a class="nav-link  ai-icon warning" href="#" role="button" data-toggle="dropdown">
                                                <svg width="24" height="24" viewBox="0 0 26 26" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M21.75 14.8385V12.0463C21.7471 9.88552 20.9385 7.80353 19.4821 6.20735C18.0258 4.61116 16.0264 3.61555 13.875 3.41516V1.625C13.875 1.39294 13.7828 1.17038 13.6187 1.00628C13.4546 0.842187 13.2321 0.75 13 0.75C12.7679 0.75 12.5454 0.842187 12.3813 1.00628C12.2172 1.17038 12.125 1.39294 12.125 1.625V3.41534C9.97361 3.61572 7.97429 4.61131 6.51794 6.20746C5.06159 7.80361 4.25291 9.88555 4.25 12.0463V14.8383C3.26257 15.0412 2.37529 15.5784 1.73774 16.3593C1.10019 17.1401 0.751339 18.1169 0.75 19.125C0.750764 19.821 1.02757 20.4882 1.51969 20.9803C2.01181 21.4724 2.67904 21.7492 3.375 21.75H8.71346C8.91521 22.738 9.45205 23.6259 10.2331 24.2636C11.0142 24.9013 11.9916 25.2497 13 25.2497C14.0084 25.2497 14.9858 24.9013 15.7669 24.2636C16.548 23.6259 17.0848 22.738 17.2865 21.75H22.625C23.321 21.7492 23.9882 21.4724 24.4803 20.9803C24.9724 20.4882 25.2492 19.821 25.25 19.125C25.2486 18.117 24.8998 17.1402 24.2622 16.3594C23.6247 15.5786 22.7374 15.0414 21.75 14.8385ZM6 12.0463C6.00232 10.2113 6.73226 8.45223 8.02974 7.15474C9.32723 5.85726 11.0863 5.12732 12.9212 5.125H13.0788C14.9137 5.12732 16.6728 5.85726 17.9703 7.15474C19.2677 8.45223 19.9977 10.2113 20 12.0463V14.75H6V12.0463ZM13 23.5C12.4589 23.4983 11.9316 23.3292 11.4905 23.0159C11.0493 22.7026 10.716 22.2604 10.5363 21.75H15.4637C15.284 22.2604 14.9507 22.7026 14.5095 23.0159C14.0684 23.3292 13.5411 23.4983 13 23.5ZM22.625 20H3.375C3.14298 19.9999 2.9205 19.9076 2.75644 19.7436C2.59237 19.5795 2.50014 19.357 2.5 19.125C2.50076 18.429 2.77757 17.7618 3.26969 17.2697C3.76181 16.7776 4.42904 16.5008 5.125 16.5H20.875C21.571 16.5008 22.2382 16.7776 22.7303 17.2697C23.2224 17.7618 23.4992 18.429 23.5 19.125C23.4999 19.357 23.4076 19.5795 23.2436 19.7436C23.0795 19.9076 22.857 19.9999 22.625 20Z" fill="#000" />
                                                </svg>
                                                <div class="pulse-css"></div>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <div id="DZ_W_Notification1" class="widget-media dz-scroll p-3" style="height:380px;">
                                                    <ul class="timeline">
                                                        <li>
                                                            <div class="timeline-panel">
                                                                <div class="media mr-2">
                                                                    <img alt="image" width="50" src="src/views/style/images/avatar/1.jpg" />
                                                                </div>
                                                                <div class="media-body">
                                                                    <h6 class="mb-1">Dr sultads Send you Photo</h6>
                                                                    <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="timeline-panel">
                                                                <div class="media mr-2 media-info">
														KG
													</div>
                                                                <div class="media-body">
                                                                    <h6 class="mb-1">Resport created successfully</h6>
                                                                    <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="timeline-panel">
                                                                <div class="media mr-2 media-success">
                                                                    <i class="fa fa-home"></i>
                                                                </div>
                                                                <div class="media-body">
                                                                    <h6 class="mb-1">Reminder : Treatment Time!</h6>
                                                                    <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="timeline-panel">
                                                                <div class="media mr-2">
                                                                    <img alt="image" width="50" src="src/views/style/images/avatar/1.jpg" />
                                                                </div>
                                                                <div class="media-body">
                                                                    <h6 class="mb-1">Dr sultads Send you Photo</h6>
                                                                    <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="timeline-panel">
                                                                <div class="media mr-2 media-danger">
														KG
													</div>
                                                                <div class="media-body">
                                                                    <h6 class="mb-1">Resport created successfully</h6>
                                                                    <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="timeline-panel">
                                                                <div class="media mr-2 media-primary">
                                                                    <i class="fa fa-home"></i>
                                                                </div>
                                                                <div class="media-body">
                                                                    <h6 class="mb-1">Reminder : Treatment Time!</h6>
                                                                    <small class="d-block">29 July 2020 - 02:26 PM</small>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <a class="all-notification" href="#">
                                                    See all notifications
                                                    <i class="ti-arrow-right"></i>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="nav-item dropdown header-profile">
                                            <a class="nav-link" href="#" role="button" data-toggle="dropdown">
                                                <div class="header-info">
                                                    <span>
                                                        Hello,
                                                        <strong>Samuel</strong>
                                                    </span>
                                                </div>
                                                <img src="src/views/style/images/profile/pic1.jpg" width="20" alt="" />
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
                                                <a href="./page-login.html" class="dropdown-item ai-icon">
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
                                <img src="src/views/style/images/icon1.png" alt="" />
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
                                    <h2 class="text-black font-w600 mb-0">Séances</h2>
                                    <p class="mb-0">La liste de toutes les séances</p>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary btn-block light" onclick="location.href='src/views/admin/forms/ajout/seance/scripts/show-script.php';">
                                        <span class="fs-16 ml-3">Ajouter une séance</span>
                                        <i class="fa fa-plus scale5 ml-3"></i>
                                    </button>
                                </div>
                            </div>
                            <!-- row -->

                            <div class="row">
                                <div class="col-12">
                                    <div class="table-responsive">
                                        <table id="example5" class="display mb-4 dataTablesCard" style="min-width: 845px;">
                                            <thead>
                                                <tr>
                                                    <th>ID Séance</th>
                                                    <th>Film</th>
                                                    <th>Salle</th>
                                                    <th>Date</th>
                                                    <th>Heure</th>
                                                    <th>Prix</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <xsl:for-each select="cinema/seances/seance">
                                                    <xsl:sort select="@id" />
                                                    <xsl:variable name="film" select="film" />
                                                    <tr>
                                                        <td>
                                                            #
                                                            <xsl:value-of select="@id" />
                                                        </td>
                                                        <td>
                                                            <div class="d-flex align-items-center">
                                                                <img src="{ ../../films/film[@id = $film]/poster/@source }" class="rounded-lg mr-2" width="24" alt="" />
                                                                <span class="w-space-no">
                                                                    <xsl:value-of select="../../films/film[@id = $film]/titre" />
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select="salle" />
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select="date" />
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select="heure" />
                                                        </td>
                                                        <td>
                                                            <xsl:value-of select="prix" />
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
                                                                    <a class="dropdown-item" href="#">
                                                                        <i class="las la-pen-square scale5 text-success mr-2"></i>
                                                                        Modifier la séance
                                                                    </a>
                                                                    <a class="dropdown-item" href="src/views/admin/lists/seances/scripts/delete-script.php?seance={@id}">
                                                                        <i class="las la-trash scale5 text-danger mr-2"></i>
                                                                        Supprimer la séance
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
                <script src="src/views/style/vendor/global/global.min.js"></script>
                <script src="src/views/style/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
                <script src="src/views/style/js/custom.min.js"></script>
                <script src="src/views/style/js/deznav-init.js"></script>
                <!-- Alternative -->
                <script src="../../../../style/vendor/global/global.min.js"></script>
                <script src="../../../../style/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
                <script src="../../../../style/js/custom.min.js"></script>
                <script src="../../../../style/js/deznav-init.js"></script>

                <!-- Datatable -->
                <script src="src/views/style/vendor/datatables/js/jquery.dataTables.min.js"></script>
                <!-- Alternative -->
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