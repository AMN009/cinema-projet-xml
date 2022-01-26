<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method='html' />
    <!-- Les param valeurs peuvent être modifiées au cours de la
Transformation XSL -->
    <xsl:param name="title">Liste des UTILISATEURS</xsl:param>

    <xsl:template match="/">
        <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <title>
                    <xsl:value-of select="$title" />
                </title>
            </head>


            <body>
                <p>
                    Nombre d'utilisateurs :
                    <xsl:value-of select="count(//utilisateur)" />
                </p>

                <table border="1">
                    <thead>
                        <tr>
                            <th>ID Utilisateur</th>
                            <th>Nom</th>
                            <th>E-mail</th>
                            <th>Téléphone</th>
                        </tr>
                    </thead>

                    <tbody>
                        <xsl:for-each select="//utilisateur">
                            <xsl:sort select="@id" data-type="text" />
                            <tr>
                                <td>
                                    <xsl:value-of select="@id" />
                                </td>
                                <td>
                                    <xsl:value-of select="nom" />
                                </td>
                                <td>
                                    <xsl:value-of select="email" />
                                </td>
                                <td>
                                    <xsl:value-of select="tel" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>

                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>