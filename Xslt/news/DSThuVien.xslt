<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<div class="row grid-row-10 ajaxwrapper">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
		<div class="ajaxPagerLinkWrapper">
			<xsl:if test="/NewsList/NextPageUrl != ''">
				<div class="row grid-row-10">
					<div class="col-12 grid-col-10">
						<div class="load-more">
							<a class="btn-ripple">
								<xsl:attribute name="href">
									<xsl:value-of select="/NewsList/NextPageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="/NewsList/ViewMoreText" disable-output-escaping="yes"></xsl:value-of>
							</a>
						</div>
					</div>
				</div>
			</xsl:if>
		</div>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<div class=" grid-col-10 gallery-item">
			<xsl:choose>
				<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
					<div class="item">
						<figure>
							<div class="box-zoom bg-linear-black">
								<xsl:apply-templates select="NewsImages">
									<xsl:with-param name="id" select="NewsId" />
								</xsl:apply-templates>
							</div>
							<figcaption><span class="mdi mdi-image-multiple"></span>
								<h2>
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								</h2>
							</figcaption>
						</figure>
					</div>
				</xsl:when>
				<xsl:when test="floor(ShowOption div 2) mod 2 = 1">
					<a class="item" data-fancybox="">
						<xsl:attribute name="href">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<figure>
							<div class="box-zoom bg-linear-black">
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
							<figcaption><span class="mdi mdi-youtube-tv"></span>
								<h2>
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								</h2>
							</figcaption>
						</figure>
					</a>
				</xsl:when>
			</xsl:choose>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<xsl:param name="id" />
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-fancybox">
				<xsl:text>album-</xsl:text>
				<xsl:value-of select="$id" />
			</xsl:attribute>
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
		</a>
	</xsl:template>
</xsl:stylesheet>