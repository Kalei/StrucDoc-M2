
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

<xsl:template match="/">
	<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Collection animaux</title>
	</head> 
	<body>
		<h1>Annimaux</h1>
		<table>
			<thead>
				<tr bgcolor="grey">
					<td>nom</td>
					<td>age</td>
					<td>type</td>
					<td>color</td>
				</tr>
			</thead>
			<xsl:variable select="blue" name="color"/>
			
			<xsl:for-each select="distinct-values(/pets/pet/type)">
				<h2><xsl:value-of select="."/></h2>
				<xsl:for-each select="/pets/pet[type='./text()']">
					<xsl:sort select="@id" data-type="number"/>   
					<xsl:choose>
					<xsl:when test="$color='blue'">
		  					<tr bgcolor="blue">
								<td><xsl:value-of select="name"/></td>
								<td><xsl:value-of select="age"/></td>
								<td><xsl:value-of select="type"/></td>
								<td><xsl:value-of select="color"/></td>
							</tr>
							
							<xsl:variable select="red" name="color"/>
					</xsl:when>
					<xsl:otherwise> 
	  					<tr bgcolor="red">
							<td><xsl:value-of select="name"/></td>
							<td><xsl:value-of select="age"/></td>
							<td><xsl:value-of select="type"/></td>
							<td><xsl:value-of select="color"/></td>
						</tr>
						<xsl:variable select="blue" name="color"/>
					</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</xsl:for-each>
		</table>
	</body>
	</html>	
</xsl:template>
</xsl:stylesheet>