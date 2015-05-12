
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
			<xsl:variable name="color" select="string('blue')"/>
			
			<xsl:for-each select="/pets/pet">
				<xsl:choose>
				<xsl:when test="$color='blue'">
	  					<tr bgcolor="blue">
							<td><xsl:value-of select="name"/></td>
							<td><xsl:value-of select="age"/></td>
							<td><xsl:value-of select="type"/></td>
							<td><xsl:value-of select="color"/></td>
						</tr>
						
						<xsl:variable name="color" select="string('red')"/>
				</xsl:when>
				<xsl:otherwise> 
  					<tr bgcolor="red">
						<td><xsl:value-of select="name"/></td>
						<td><xsl:value-of select="age"/></td>
						<td><xsl:value-of select="type"/></td>
						<td><xsl:value-of select="color"/></td>
					</tr>
					<xsl:variable name="color" select="string('blue')"/>
				</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
		</table>
	</body>
	</html>	
</xsl:template>
</xsl:stylesheet>

<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
         <tr bgcolor="blue">
            <td>Bernard</td>
            <td>14</td>
            <td>chat</td>
            <td>argent</td>
         </tr>
         <tr bgcolor="blue">
            <td>Amanda</td>
            <td>3</td>
            <td>chien</td>
            <td>marron</td>
         </tr>
         <tr bgcolor="blue">
            <td>Jack</td>
            <td>3</td>
            <td>chat</td>
            <td>noir</td>
         </tr>
         <tr bgcolor="blue">
            <td>Bernard</td>
            <td>12</td>
            <td>chien</td>
            <td>bleu</td>
         </tr>
         <tr bgcolor="blue">
            <td>Naia</td>
            <td>1</td>
            <td>chat</td>
            <td>marron</td>
         </tr>
         <tr bgcolor="blue">
            <td>Puzzy</td>
            <td>5</td>
            <td>hamster</td>
            <td>marron</td>
         </tr>
         <tr bgcolor="blue">
            <td>Stop</td>
            <td>3</td>
            <td>cochon</td>
            <td>marron</td>
         </tr>
         <tr bgcolor="blue">
            <td>Maurice</td>
            <td>5</td>
            <td>chat</td>
            <td>vert</td>
         </tr>
      </table>
   </body>
</html>