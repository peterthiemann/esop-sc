<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <xsl:apply-templates/>
    </body>
  </html>
</xsl:template>

<xsl:template match="page">
  <h1><xsl:value-of select="title"/></h1>
  <xsl:apply-templates select="section"/>
</xsl:template>

<xsl:template match="title">
    <h2><xsl:value-of select="."/></h2>
</xsl:template>

</xsl:stylesheet>
