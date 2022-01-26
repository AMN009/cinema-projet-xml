<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method='html' />

    <xsl:template match="/cinema">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Liste des films</title>
            </head>
            <body>

                <style>
                  table, th, td {
                    border: 1px solid black; 
                  }
                </style>

                <table>
                    <th>ID Film</th>
                    <th>Titre</th>
                    <th>Genre</th>
                    <th>Réalisateur</th>
                    <th>Année</th>
                    <th>Durée</th>
                    <xsl:for-each select="films/film">
                        <xsl:sort select="@id" />
                        <tr>
                            <td>
                                <xsl:value-of select="@id"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="titre"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="genre"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="realisateur"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="@annee"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="duree"></xsl:value-of>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>