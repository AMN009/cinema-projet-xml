<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <body>
                <p>
                    Nombre de salles :
                    <xsl:value-of select="count(//salle)" />
                </p>

                <table border="1">
                    <thead>
                        <tr>
                            <th>ID Salle</th>
                            <th>Capacité</th>
                        </tr>
                    </thead>

                    <tbody>
                        <!-- <xsl:apply-templates select="//salle" /> -->
                        <xsl:for-each select="//salle">
                            <xsl:sort select="@capacite" data-type="number" />
                            <tr>
                                <td>
                                    <xsl:value-of select="@id" />
                                </td>
                                <td>
                                    <xsl:value-of select="@capacite" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>

                </table>
            </body>
        </html>
    </xsl:template>

    <!-- <xsl:template match="salle">
        <xsl:for-each select=".">
            <xsl:sort select="@capacite" data-type="number" />
            <tr>
                <td>
                    <xsl:value-of select="@id" />
                </td>
                <td>
                    <xsl:value-of select="@capacite" />
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template> -->

</xsl:stylesheet>