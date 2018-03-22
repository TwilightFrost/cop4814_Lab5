<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">

<html>
	<head>
		<title>Classroll</title>
	</head>
	<body>
    <xsl:for-each select="classroll/student">
      <xsl:sort select="lastname" order="descending"/>
    
      <xsl:value-of select="lastname"/>,
      <xsl:value-of select="firstname"/>
      <br />
      <xsl:apply-templates select="major"/>
      
      <!--
      <xsl:for-each select="major">
          <xsl:choose>
            <xsl:when test="../degree">
              <xsl:value-of select="../degree"/>:
            </xsl:when>
            <xsl:otherwise>
               (unknown degree)
            </xsl:otherwise>
          </xsl:choose> 
          <xsl:value-of select="."/>,
        </xsl:for-each>
        -->
      <p />
    </xsl:for-each>
  
  </body>
</html>
</xsl:template>

  <xsl:template match="major" >
    <xsl:choose>
      <xsl:when test="../degree">
        <xsl:value-of select="../degree"/>:
      </xsl:when>
      <xsl:otherwise>
        (unknown degree)
      </xsl:otherwise>
    </xsl:choose>
    <xsl:value-of select="."/>,
  </xsl:template>

</xsl:stylesheet>
