<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="dh-home-4">
			<div class="container">
				<h2 class="h-title text-upper">
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="row grid-row-10">

					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section>

	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<xsl:if test="position() = 1">
			<div class="col-lg-6 grid-col-10 main">
				<a class="box-item">
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='target'>
						<xsl:value-of select='Target'></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="box-img bg-linear-black">
							<img>
							<xsl:attribute name='src'>
								<xsl:value-of select='ImageUrl'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='alt'>
								<xsl:value-of select='Title'></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() = 2">

			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6 grid-col-10"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row grid-row-10 sub"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() &gt; 1">
			<div class="col-sm-6 grid-col-10">
				<a class="box-item">
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='target'>
						<xsl:value-of select='Target'></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="box-img bg-linear-black">
							<img>
							<xsl:attribute name='src'>
								<xsl:value-of select='ImageUrl'></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name='alt'>
								<xsl:value-of select='Title'></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() = last()">
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
		</xsl:if>

	</xsl:template>

</xsl:stylesheet>