<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Star Wars Website</title>
            </head>
            <body>
                <h1>Starwars Movies</h1>
                <table border="1">
                    <tbody>
                        <tr>
                            <th>Movie Title</th>
                            <th>Director</th>
                            <th>Year Released</th>
                            <th>Episode</th>
                        </tr>
                        <xsl:for-each select="starwars/movie">
                            <xsl:sort select="episode"/>
                            <tr>
                                <td><xsl:value-of select="title"/></td>
                                <td><xsl:value-of select="director"/></td>
                                <td><xsl:value-of select="year"/></td>
                                <td><xsl:value-of select="episode"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
