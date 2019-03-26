<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="dh-truyenthong-ct">
			<div class="container">
				<div class="row">
					<div class="col">
						<h1 class="h-title fw-600">
							<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
							<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h1>
						<time>
							<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
						</time>
						<div class="item social" style="display: flex; align-items: center;">
							<div class="like" style="margin-right: .5rem">
								<xsl:value-of select="/NewsDetail/FacebookLike" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<div class="share">
								<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true"><a
									 class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a></div>
							</div>
						</div>
						<div class="full-content">
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="button">
							<div class="btn-apply">
								<a class="btn btn-primary btn-apply" href="">Nộp đơn ngay</a>
							</div>
						</div>
						<div class="job-form">
							<iframe>
								<xsl:attribute name="src">
									<xsl:value-of select="/NewsDetail/ApplyUrl"></xsl:value-of>
								</xsl:attribute>
							</iframe>
						</div>
					</div>
				</div>
				<div class="row grid-row-10">
					<div class="col grid-col-10 other">
						<h2>
							<!-- <xsl:value-of select="/NewsDetail/JobOtherTitle"></xsl:value-of>
							<xsl:text>:</xsl:text> -->
							Tuyển dụng khác
						</h2>
						<div class="swiper-button-prev">
							<span class="mdi mdi-chevron-left"></span>
						</div>
						<div class="swiper-button-next">
							<span class="mdi mdi-chevron-right"></span>
						</div>
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--<xsl:if test="count(/NewsDetail/NewsImages)>0">
			<xsl:apply-templates select="/NewsDetail/NewsImages"></xsl:apply-templates>
		</xsl:if>
		<xsl:if test="count(/NewsDetail/NewsAttributes)>0">
			<xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="tabs"></xsl:apply-templates>
			<xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="tabcontent"></xsl:apply-templates>
		</xsl:if>-->
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="swiper-slide" data-aos="fade-right">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<div class="news-wrapper">
					<h3>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</time>
				</div>
			</a>
			<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>

	<!--<xsl:template match="NewsAttributes" mode="tabs">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:text>#tab</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="NewsAttributes" mode="tabcontent">
		<div class="tab-content">
			<xsl:attribute name="id">
				<xsl:text>tab</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<img width="80" height="71">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</a>
		</li>
	</xsl:template>-->
</xsl:stylesheet>