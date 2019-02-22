<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="dh-truyenthong-1">
			<div class="container">
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
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="grid-col-10 sub">
			<figure>
				<div class="box-zoom btn-ripple">
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
				<figcaption>
					<h3>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</time>
					<xsl:if test="position() = 1">
						<p>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</xsl:if>
					<a class="btn btn-more btn-ripple" href="truyenthong-ct.html">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="/NewsList/DetailText" disable-output-escaping="yes"></xsl:value-of>
					</a>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>