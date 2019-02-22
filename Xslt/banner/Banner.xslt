<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="dh-banner-1">
			<div class="banner-wrapper">
				<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="banner-img">
			<img class="lazyload">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
		<div class="banner-title">
			<div class="banner-title-inner container">
				<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>