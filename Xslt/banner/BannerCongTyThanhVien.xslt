<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container">
			<h2 class="title c-white text-upper">
				<xsl:value-of select="/BannerList/ModuleTitle"></xsl:value-of>
			</h2>
			<div class="linhvuc-slider">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
					</div>
				</div>
				<div class="linhvuc-icon-next"><span class="mdi mdi-chevron-right"></span></div>
				<div class="linhvuc-icon-prev"><span class="mdi mdi-chevron-left"></span></div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="slide-item">
				<img>
				<xsl:attribute name="src">
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
		</div>
	</xsl:template>
</xsl:stylesheet>