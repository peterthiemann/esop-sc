<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/page">
  <html>
  <body>
  <h1><xsl:value-of select="title"/></h1>
  <xsl:for-each select="section">
    <h2><xsl:value-of select="section/title"/></h2>
  </xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
