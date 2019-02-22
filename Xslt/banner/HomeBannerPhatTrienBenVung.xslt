<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="swiper-button-prev"><span class="mdi mdi-chevron-left"></span></div>
		<div class="swiper-button-next"><span class="mdi mdi-chevron-right"></span></div>
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>



			</div>
		</div>

	</xsl:template>

	<xsl:template match="Banner">
		<div class="swiper-slide bg-linear-black">

			<img class="lazyload">
			<xsl:attribute name='data-src'>
				<xsl:value-of select='ImageUrl'></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name='alt'>
				<xsl:value-of select='Title'></xsl:value-of>
			</xsl:attribute>
			</img>
			<h3>
				<xsl:value-of select="Title"></xsl:value-of>
				<span class="h-title text-upper">
					<xsl:value-of select="Description"></xsl:value-of>
				</span>
			</h3>
		</div>
	</xsl:template>
</xsl:stylesheet>