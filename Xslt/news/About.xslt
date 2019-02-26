<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />





	<xsl:template match="/">
		<div class="dh-nav-2">
			<div class="container">
				<div class="nav-wrap">
					<a class="nav-toggle" href="javascript:void(0)">Danh mục</a>
					<nav>
						<ul>
							<xsl:apply-templates select="/ZoneList/Zone" mode="Nav"></xsl:apply-templates>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode="Nav">
		<li>
			<a>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<!--Match Id-->
				<xsl:attribute name="href">
					<xsl:text>javascript:void(0)</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="data-link">
					<xsl:text>dh-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="Content">
		<xsl:if test="position() = 1 ">
			<section>
				<xsl:attribute name="id">
					<xsl:text>dh-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>dh-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="style">
					<xsl:text>background-image: url('</xsl:text>
					<xsl:value-of select="ImageUrl"></xsl:value-of>
					<xsl:text>')</xsl:text>
				</xsl:attribute>
				<div class="container">
					<div class="row grid-row-10">
						<div class="col-12 grid-col-10">
							<h2 class="h-title line text-upper fw-400">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
					</div>
					<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<section>
				<xsl:attribute name="id">
					<xsl:text>dh-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>dh-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="style">
					<xsl:text>background-image: url('</xsl:text>
					<xsl:value-of select="ImageUrl"></xsl:value-of>
					<xsl:text>')</xsl:text>
				</xsl:attribute>
				<div class="container">
					<div class="row grid-row-10">
						<div class="col-12 grid-col-10">
							<h2 class="h-title line text-upper c-white fw-400">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
					</div>
					<xsl:apply-templates select="Zone" mode="ZoneChild2"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 3 ">
			<section>
				<xsl:attribute name="id">
					<xsl:text>dh-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>dh-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="style">
					<xsl:text>background-image: url('</xsl:text>
					<xsl:value-of select="ImageUrl"></xsl:value-of>
					<xsl:text>')</xsl:text>
				</xsl:attribute>
				<div class="container">
					<div class="row grid-row-10">
						<div class="col-12 grid-col-10">
							<h2 class="h-title text-upper line fw-400">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
					</div>
					<div class="row grid-row-10">
						<div class="col grid-col-10 history">
							<div class="swiper-button-prev"><span class="mdi mdi-chevron-left"></span></div>
							<div class="swiper-button-next"><span class="mdi mdi-chevron-right"></span></div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
								</div>
							</div>
							<div class="swiper-scrollbar"></div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 4 ">
			<section>
				<xsl:attribute name="id">
					<xsl:text>dh-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>dh-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="style">
					<xsl:text>background-image: url('</xsl:text>
					<xsl:value-of select="ImageUrl"></xsl:value-of>
					<xsl:text>')</xsl:text>
				</xsl:attribute>
				<div class="container">
					<div class="row grid-row-10">
						<div class="col-12 grid-col-10">
							<h2 class="h-title line text-upper fw-400">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
					</div>
					<xsl:apply-templates select="Zone" mode="ZoneChild4"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 5 ">
			<section>
				<xsl:attribute name="id">
					<xsl:text>dh-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>dh-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="style">
					<xsl:text>background-image: url('</xsl:text>
					<xsl:value-of select="ImageUrl"></xsl:value-of>
					<xsl:text>')</xsl:text>
				</xsl:attribute>
				<div class="container">
					<div class="row grid-row-10">
						<div class="col-12 grid-col-10">
							<h2 class="h-title text-upper line fw-400">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
					</div>
					<div class="row">
						<div class="col award">
							<div class="swiper-button-prev"><span class="mdi mdi-chevron-left"></span></div>
							<div class="swiper-button-next"><span class="mdi mdi-chevron-right"></span></div>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="News" mode="ZoneNews5"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>

				</div>
			</section>
		</xsl:if>
	</xsl:template>


	<xsl:template match="News" mode="ZoneNews1">
		<div class="row grid-row-10">
			<div class="col-12 grid-col-10 main">
				<figure class="box-item">
					<div class="box-img btn-ripple">
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
						<p>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</div>
		</div>
		<div class="row grid-row-10">
			<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="ZoneChild2">
		<xsl:if test="position() = 1 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="row grid-row-10"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() = 1 or position() = 2">
			<xsl:apply-templates select="News" mode="NewsChild2-1"></xsl:apply-templates>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="other"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() = 3 ">
			<h3 class="text-upper">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h3>
			<div class="swiper-button-prev"><span class="mdi mdi-chevron-left"></span></div>
			<div class="swiper-button-next"><span class="mdi mdi-chevron-right"></span></div>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="News" mode="NewsChild2-2"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position() = last() ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="NewsChild2-1">
		<div class="col-lg grid-col-10">
			<div class="content">
				<h3 class="text-upper">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</h3>
				<div class="briefcontent">
					<p>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="NewsChild2-2">
		<div class="swiper-slide" data-aos="fade-right">
			<p>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</p>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews3">
		<div class="swiper-slide" data-aos="fade-right">
			<h3>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h3>
			<h4>
				<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
			</h4>
			<div class="detail">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="ZoneChild4">
		<xsl:if test="position() = 1 ">
			<div class="row">
				<div class="col-12">
					<h3>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h3>
				</div>
				<xsl:apply-templates select="News" mode="NewsChild4-1"></xsl:apply-templates>
			</div>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<div class="row grid-row-10 operating">
				<div class="col-12 grid-col-10">
					<h3>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h3>
				</div>
				<xsl:apply-templates select="News" mode="NewsChild4-2"></xsl:apply-templates>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="NewsChild4-1">
		<div class="col-sm-4 col-6">
			<figure>
				<div class="box-zoom">
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
					<h4>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h4>
					<p>
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="NewsChild4-2">
		<div class="col-6 col-md-3 grid-col-10">
			<figure>
				<div class="box-zoom">
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
					<h4>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h4>
					<p>
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews5">
		<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="NewsImages">
		<div class="swiper-slide" data-aos="fade-right">
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
	</xsl:template>
</xsl:stylesheet>