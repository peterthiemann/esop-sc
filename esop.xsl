<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

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

<xsl:template match="title" mode="h2 h3">
</xsl:template>

<xsl:template match="*" mode="h2">
  <xsl:copy>
    <xsl:apply-templates mode="h2"/>
  </xsl:copy>
</xsl:template>

<xsl:template match="section">
  <h2>
    <xsl:value-of select="title"/>
  </h2>
  <xsl:apply-templates mode="h2"/>
</xsl:template>

<xsl:template match="section" mode="h2">
  <h3>
    <xsl:value-of select="title"/>
  </h3>
  <xsl:apply-templates mode="h3"/>
</xsl:template>

<xsl:template match="link | a" mode="h2">
  <a>
    <xsl:copy-of select="@*"/>
    <xsl:value-of select="."/>
  </a>
</xsl:template>

</xsl:stylesheet>
