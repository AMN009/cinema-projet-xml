<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method='html' />

    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>CINEWEB - Inscription</title>
                <!-- Favicon icon -->
                <link rel="icon" type="image/png" sizes="16x16" href="../../..style/images/favicon.png" />

                <!-- Custom Stylesheet -->
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
                                                <h4 class="text-center mb-4">Inscrivez vous</h4>
                                                <form method="post" action="../../../../parsers/UtilisateurParser.php">
                                                    <div class="form-group">
                                                        <label class="mb-1">
                                                            <strong>Nom complet</strong>
                                                        </label>
                                                        <input type="text" name="Username" class="form-control" placeholder="EX: Rhalloussi Aymen" />
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="mb-1">
                                                            <strong>Email</strong>
                                                        </label>
                                                        <input type="email" name="email" class="form-control" placeholder="bonjour@exemple.com" />
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="mb-1">
                                                            <strong>Mot de passe</strong>
                                                        </label>
                                                        <input type="password" name="password" class="form-control" value="password" />
                                                    </div>
                                                    <div class="text-center mt-4">
                                                        <button type="submit" name="ajout" class="btn btn-primary btn-block">S'inscrire</button>
                                                    </div>
                                                </form>
                                                <div class="new-account mt-3">
                                                    <p>
                                                        Vous avez déjà un compte?
                                                        <a class="text-primary" href="../../login/scripts/login-form.php">Se connecter</a>
                                                    </p>
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
                <script src="../../../style/vendor/global/global.min.js"></script>
                <script src="../../../style/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
                <script src="../../../style/js/custom.min.js"></script>
                <script src="../../../style/js/deznav-init.js"></script>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>