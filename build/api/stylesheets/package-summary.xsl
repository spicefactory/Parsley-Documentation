<xsl:stylesheet 
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  >
 
  <xsl:output method="html" indent="yes" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"/>
 
  <xsl:template match="/package-listings">
    <html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>All Packages</title>
	<link rel="stylesheet" href="style.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="print.css" type="text/css" media="print"/>
	</head>
	<body>
	<script type="text/javascript" language="javascript" src="asdoc.js"></script><script type="text/javascript" language="javascript" src="cookies.js"></script><script type="text/javascript" language="javascript">
	<xsl:comment>
		asdocTitle = 'All Packages - Parlsey + Spicelib API';
		var baseRef = '';
		window.onload = configPage;
	</xsl:comment></script>
	<table style="display:none" id="titleTable" cellspacing="0" cellpadding="0" class="titleTable">
	<tr>
	<td align="left" class="titleTableTitle">Parlsey + Spicelib API</td><td align="right" class="titleTableTopNav"><a onclick="loadClassListFrame('all-classes.html')" href="class-summary.html">All Classes</a>&#160;|&#160;<a onclick="loadClassListFrame('index-list.html')" href="all-index-A.html">Index</a>&#160;|&#160;<a href="index.html?package-summary.html&amp;all-classes.html" id="framesLink1">Frames</a><a onclick="parent.location=document.location" href="" style="display:none" id="noFramesLink1">No&#160;Frames</a></td><td rowspan="3" align="right" class="titleTableLogo"><img alt="Adobe Logo" title="Adobe Logo" class="logoImage" src="images/logo.jpg"/></td>
	</tr>
	<tr class="titleTableRow2">
	<td align="left" id="subTitle" class="titleTableSubTitle">All&#160;Packages</td><td align="right" id="subNav" class="titleTableSubNav"></td>
	</tr>
	<tr class="titleTableRow3">
	<td colspan="2">&#160;</td>
	</tr>
	</table>
	<script type="text/javascript" language="javascript">
	<xsl:comment>
	if (!isEclipse() || window.name != ECLIPSE_FRAME_NAME) {titleBar_setSubTitle("All Packages"); titleBar_setSubNav(false,false,false,false,false,false,false,false,false,false,false,false,false,false);}
	</xsl:comment></script>
	<div class="MainContent">
	<br/>
	<br/>
		<xsl:apply-templates select="section"/>
	<p></p>
	<center class="copyright"> 
	</center>
	</div>
	</body>
	</html>
  </xsl:template>
  
  <xsl:template match="section">
   	<h3><xsl:value-of select="@title"/></h3>
	<table class="summaryTable" cellspacing="0" cellpadding="3">
	<tr>
	<th>&#160;</th><th width="30%">Package</th><th width="70%">Description</th>
	</tr>
		<xsl:apply-templates select="package"/>
	</table>
  </xsl:template>  
  
  <xsl:template match="package">
  	<tr>
	  <xsl:attribute name="class">prow<xsl:value-of select="position() mod 2"/></xsl:attribute>
	  <td class="summaryTablePaddingCol">&#160;</td>
	  <td class="summaryTableSecondCol"><a>
		<xsl:attribute name="onclick">javascript:loadClassListFrame('<xsl:value-of select="translate(@name,'.','/')" />/class-list.html');</xsl:attribute>
		<xsl:attribute name="href"><xsl:value-of select="translate(@name,'.','/')" />/package-detail.html</xsl:attribute><xsl:value-of select="@name" /></a></td>
	  <td class="summaryTableLastCol"><xsl:value-of select="."/></td>
	</tr>
  </xsl:template>
  
  
</xsl:stylesheet> 