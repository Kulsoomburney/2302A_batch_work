<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head>
<style>
table{width:100%;
     text-align:center;
     font-size:25px;
     color:white;
     background-color:#002546;
}
td{
    padding:10px;
}
tr:hover{
    transition:2s;
    color:white;
    background-color:#f09f7d;
}

</style>
</head>
<body>
    <table border="2px">
    <tr>
    <th>title</th>
    <th>author</th>
    <th>Publication Year</th>
    </tr>
    <xsl:for-each select="library/book">
    <tr>
    <td><xsl:value-of select="library/book/title"/></td>
    <td><xsl:value-of select="library/book/author"/></td>
    </tr>
    <tr>
    <td><xsl:value-of select="title"/></td>
    <td><xsl:value-of select="author"/></td>
    <td><xsl:value-of select="publication_year"/></td>
    </tr>
    </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>