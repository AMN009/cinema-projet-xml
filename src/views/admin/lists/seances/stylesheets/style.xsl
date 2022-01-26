<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method='html' />

    <xsl:template match="/cinema">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Document</title>
            </head>
            <body>

                <style>
                  table, th, td {
                    border: 1px solid black; 
                  }
                </style>

                <table>
                    <th>id</th>
                    <th>date</th>
                    <th>heure</th>
                    <th>film</th>
                    <th>salle</th>
                    <th>prix</th>
                    <xsl:for-each select="seances/seance">
                        <tr>
                            <td>
                                <xsl:value-of select="@id"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="date"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="heure"></xsl:value-of>
                            </td>
                            <xsl:variable name="idfilm" select="film" />
                            <td>
                                <xsl:value-of select="../../films/film[@id=$idfilm]/titre"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="salle"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="prix"></xsl:value-of>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>