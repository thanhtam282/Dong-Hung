<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>

	</xsl:template>

	<!--Begin match content-->
	<xsl:template match="Zone" mode="Content">
		<xsl:if test="position() = 1 ">
			<section class="dh-about-1">
				<div class="container">
					<xsl:apply-templates select='News' mode="ZoneNews1"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<section class="dh-tuyendung-2" style="background-image: url('/Data/Sites/1/media/img/career/career_bg_2.jpg')">
				<div class="container">
					<h2 class="h-title line text-upper c-white">
						<xsl:value-of select="Title"></xsl:value-of>
					</h2>
					<div class="row grid-row-10">

						<xsl:apply-templates select='News' mode="ZoneNews2"></xsl:apply-templates>


					</div>
				</div>
			</section>
		</xsl:if>


	</xsl:template>
	<!--End match content-->

	<!--Begin match ZoneNews-->
	<xsl:template match="News" mode="ZoneNews1">
		<div class="row">
			<div class="col-12 main">
				<h2 class="h-title line text-upper">
					<xsl:value-of select="Title"></xsl:value-of>
				</h2>
				<figure class="box-item">
					<div class="box-img btn-ripple">
						<img class="lazyload">
						<xsl:attribute name='data-src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h3>
							<xsl:value-of select="SubTitle"></xsl:value-of>
						</h3>
						<p>
							<xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</div>
		</div>
		<div class="row grid-row-10">
			<xsl:value-of select="FullContent" disable-output-escaping='yes'></xsl:value-of>
		</div>


	</xsl:template>

	<xsl:template match="News" mode="ZoneNews2">

		<div class="col-lg-6 grid-col-10">
			<div class="content">
				<h3 class="text-upper">
					<xsl:value-of select="Title"></xsl:value-of>
				</h3>
				<div class="briefcontent">
					<p>
						<xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
					</p>
				</div>
			</div>
			<div class="other">
				<div class="swiper-button-prev"><span class="mdi mdi-chevron-left"></span></div>
				<div class="swiper-button-next"><span class="mdi mdi-chevron-right"></span></div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:value-of select="FullContent" disable-output-escaping='yes'></xsl:value-of>


					</div>
				</div>

			</div>
		</div>


	</xsl:template>

	<xsl:template match="News" mode="Zone2News1">
		<div class="row grid-row-10">
			<div class="col-6 col-md-3 grid-col-10 sub">
				<figure style="background-image: url('/Data/Sites/1/media/img/career/career_bg.jpg')">
					<div class="boxzoom">
						<img class="lazyload">
						<xsl:attribute name='data-src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h4>
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
					</figcaption>
				</figure>
			</div>

		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone2News2">


		<div class="swiper-slide" data-aos="fade-right">
			<p>
				<xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
			</p>
		</div>

	</xsl:template>

</xsl:stylesheet>