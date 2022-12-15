<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Awesome People Website</title>
        </head>
        <body>
            <h1>Awesome People</h1>
            <table border="1">
                <tbody>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                    </tr>
                    <xsl:for-each select="people/person">
                        <xsl:sort select="firstname" />
                        <tr>
                            <td>
                                <xsl:value-of select="firstname" />
                            </td>
                            <td>
                                <xsl:value-of select="lastname" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
