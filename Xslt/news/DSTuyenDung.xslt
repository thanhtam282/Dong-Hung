<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<!--data-comment-->



	<!--Begin News-->
	<xsl:template match="/">
		<div class="table-responsive">
			<table>
				<thead>
					<tr>
						<td>STT</td>
						<td>Vị trí tuyển dụng</td>
						<td>Khu vực</td>
						<td>Hạn nộp hồ sơ</td>
					</tr>
				</thead>
				<tbody>
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</tbody>
			</table>
		</div>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<tr>
			<td>
				<xsl:if test="position() &lt; 10">
					<xsl:text>0</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:if>
				<xsl:if test="position() &gt; 10">
					<xsl:value-of select="position()" />
				</xsl:if>
			</td>
			<td>
				<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
				
			</td>
			<td>
				<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="CreatedDate"></xsl:value-of>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>