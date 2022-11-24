<?xml version="1.0" encoding="utf-8"?>
<?xsl:stylesheet version="1.0" xmlns:xsl=""?>
    <xsl:template match="/">
        <html>
            <head>
                <title>Star Wars Website</title>
            </head>
            <body>
                <tr>
                    <th>Movie Title</th>
                    <th>Episode</th>
                    <th>Year</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                </tr>
                <xsl:for-each select="starwars/movie">
                    <xsl:sort select="title"/>
                    <tr>
                        <td>
                            <xsl:value-of select="title"/>
                        </td>
                        <td>
                            <xsl:value-of select="episode"/>
                        </td>
                        <td>
                            <xsl:value-of select="title"/>
                        </td>
                        <td>
                            <xsl:value-of select="firstname"/>
                        </td>
                        <td>
                            <xsl:value-of select="lastname"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
