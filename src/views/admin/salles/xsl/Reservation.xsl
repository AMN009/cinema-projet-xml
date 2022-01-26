<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method='html' />

    <xsl:template match="/cinema">
              <html lang="en">
              <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Document</title>
              </head>
              <body>
                
                <style>
                  table, th, td {
                    border: 1px solid black; 
                  }
                </style>

              <table>
                <th>code</th>
                <th>date</th>
                <th>heure</th>
                <th>utilisateur</th>
                <th>siege</th>
                <th>seance</th>
                    <xsl:for-each select="reservations/reservation">
                    <tr >
                      <td><xsl:value-of select="@code"></xsl:value-of></td>
                      <td><xsl:value-of select="date"></xsl:value-of></td>
                      <td><xsl:value-of select="heure"></xsl:value-of></td>
                      <xsl:variable name="utilisateur" select="utilisateur"/>
                      <td><xsl:value-of select="../../utilisateurs/utilisateur[@id=$utilisateur]/nom"></xsl:value-of></td>
                      <td><xsl:value-of select="siege"></xsl:value-of></td>
                      <td><xsl:value-of select="seance"></xsl:value-of></td>
                    </tr>
                    </xsl:for-each>
              </table>
            </body>
          </html>
    </xsl:template>
</xsl:stylesheet>