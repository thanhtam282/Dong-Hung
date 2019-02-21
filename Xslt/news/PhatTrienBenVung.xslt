<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />




	<xsl:template match="/">
		<div class="row same-items">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>


	<xsl:template match="News">
		<div class="col-12 same-item box-item">
			<figure>
				<div class="box-zoom btn-ripple">
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
				<figcaption>
					<h2 class="title c-black">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</figcaption>
			</figure>
		</div>
	</xsl:template>

</xsl:stylesheet>