<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<!--data-comment-->


	<!--Begin Zone-->
	<xsl:template match="/">

		<div class="wrapper">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>


		</div>
	</xsl:template>

	<!--Begin Zone Child-->
	<xsl:template match="Zone">
		<xsl:if test="position() = 1">
			<div class="main-wrapper">
				<a>
					<xsl:attribute name='href'>
						<xsl:value-of select='Url'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='target'>
						<xsl:value-of select='Target'></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="box-zoom bg-linear-black">
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
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</a>

			</div>
		</xsl:if>
		<xsl:if test="position() = 2">
			<xsl:text disable-output-escaping="yes">&lt;div class="sub-wrapper"&gt;</xsl:text>


		</xsl:if>


		<xsl:if test="position() &gt; 1">
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Target'></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="box-zoom bg-linear-black">
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
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
					</figcaption>
				</figure>
			</a>

		</xsl:if>
		<xsl:if test="position() = last()">
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>

		</xsl:if>
	</xsl:template>

</xsl:stylesheet>