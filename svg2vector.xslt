<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:s="http://www.w3.org/2000/svg"
	xmlns:android="http://schemas.android.com/apk/res/android">

	<xsl:template match="s:svg">
		<xsl:element name="vector">
			<xsl:attribute name="android:width">
				<xsl:value-of select="@width"/>
				<xsl:text>dp</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="android:height">
				<xsl:value-of select="@height"/>
				<xsl:text>dp</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="android:viewportWidth">
				<xsl:value-of select="@width"/>
			</xsl:attribute>
			<xsl:attribute name="android:viewportHeight">
				<xsl:value-of select="@height"/>
			</xsl:attribute>
			<xsl:apply-templates match="path"/>
		</xsl:element>
  	</xsl:template>

	<xsl:template match="s:path">
		<xsl:element name="path">
			<xsl:attribute name="android:fillColor">#000000</xsl:attribute>
			<xsl:attribute name="android:pathData">
				<xsl:value-of select="@d"/>
			</xsl:attribute>
		</xsl:element>
  	</xsl:template>

</xsl:stylesheet>
