<xsl:stylesheet 
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  >
 
  <xsl:param name="title" />
  <xsl:param name="filter" />
  
  <xsl:output method="html" indent="yes" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"/>
 
  <xsl:template match="/package-listings">
	<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>Package List - Parsley + Spicelib API</title>
	<base target="classFrame"/>
	<link rel="stylesheet" href="style.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="print.css" type="text/css" media="print"/>
	<script type="text/javascript" src="asdoc.js" language="javascript"></script>
	</head>
	<body class="classFrameContent">
	<h3>
	<a onclick="javascript:loadClassListFrame('all-classes.html');" href="package-summary.html">All Packages</a>
	</h3>
		<xsl:apply-templates select="section"/>
	</body>
	</html>
  </xsl:template>
  
  <xsl:template match="section">
    <br/>
	<h4 style="color:black"><xsl:value-of select="@title"/></h4>
	<table cellspacing="0" cellpadding="0">
		<xsl:apply-templates select="package"/>
	</table>
  </xsl:template>  
  
  <xsl:template match="package">
  	<tr>
	<td><a>
	  <xsl:attribute name="onclick">javascript:loadClassListFrame('<xsl:value-of select="translate(@name,'.','/')" />/class-list.html');</xsl:attribute>
	  <xsl:attribute name="href"><xsl:value-of select="translate(@name,'.','/')" />/package-detail.html</xsl:attribute><xsl:value-of select="@name" /></a>
	<br/>
	</td>
	</tr>
  </xsl:template>
  
  
</xsl:stylesheet> 