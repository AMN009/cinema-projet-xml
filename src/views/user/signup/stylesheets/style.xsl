<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method='html' />

    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>CINEWEB - Login</title>
                <!-- Favicon icon -->
                <link rel="icon" type="image/png" sizes="16x16" href="src/views/style/images/favicon.png" />
                <!-- Alternative -->
                <link rel="icon" type="image/png" sizes="16x16" href="../../..style/images/favicon.png" />

                <!-- Custom Stylesheet -->
                <link href="src/views/style/css/style.css" rel="stylesheet" />
                <!-- Alternative -->
                <link href="../../../style/css/style.css" rel="stylesheet" />

            </head>
            
            <body class="h-100">
                <div class="authincation h-100">
                    <div class="container h-100">
                        <div class="row justify-content-center h-100 align-items-center">
                            <div class="col-md-6">
                                <div class="authincation-content">
                                    <div class="row no-gutters">
                                        <div class="col-xl-12">
                                            <div class="auth-form">
                                                <h4 class="text-center mb-4">Sign up your account</h4>
                                                <form method="post" action="../../../../parsers/UtilisateurParser.php">
                                                    <div class="form-group">
                                                        <label class="mb-1"><strong>Username</strong></label>
                                                        <input type="text" name="Username" class="form-control" placeholder="username"/>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="mb-1"><strong>Email</strong></label>
                                                        <input type="email" name="email" class="form-control" placeholder="hello@example.com"/>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="mb-1"><strong>Password</strong></label>
                                                        <input type="password" name="password" class="form-control" value="Password"/>
                                                    </div>
                                                    <div class="text-center mt-4">
                                                        <button type="submit" name="ajout" class="btn btn-primary btn-block">Sign me up</button>
                                                    </div>
                                                </form>
                                                <div class="new-account mt-3">
                                                    <p>Already have an account? <a class="text-primary" href="page-login.html">Sign in</a></p>
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
                Scripts
            ***********************************-->
            <!-- Required vendors -->
            <script src="src/views/style/vendor/global/global.min.js"></script>
            <script src="src/views/style/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
            <script src="src/views/style/js/custom.min.js"></script>
            <script src="src/views/style/js/deznav-init.js"></script>
            <!-- Alternative -->
            <script src="../../../style/vendor/global/global.min.js"></script>
            <script src="../../../style/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
            <script src="../../../style/js/custom.min.js"></script>
            <script src="../../../style/js/deznav-init.js"></script>
            
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>