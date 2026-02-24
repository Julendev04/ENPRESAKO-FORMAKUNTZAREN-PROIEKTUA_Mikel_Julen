<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    
    <html>
      <head>
        <title>Curriculum Vitae</title>
        <link rel="stylesheet" type="text/css" href="cv.css"/>
      </head>
      
      <body>
        <div class="container">
          
          <div class="header">
            <h1>
              <xsl:value-of select="Curriculum_Vitae/datuPertsonalak/izena"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="Curriculum_Vitae/datuPertsonalak/abizena"/>
            </h1>
            <p>Email: <xsl:value-of select="Curriculum_Vitae/datuPertsonalak/korreoa"/></p>
            <p>Telefonoa: <xsl:value-of select="Curriculum_Vitae/datuPertsonalak/telefonoa"/></p>
          </div>
          
          <div class="section">
            <h2>Formakuntza</h2>
            <xsl:for-each select="Curriculum_Vitae/formakuntza/ikasketak">
              <div class="item">
                <h3><xsl:value-of select="titulua"/></h3>
                <p><strong>Zentroa:</strong> <xsl:value-of select="zentroa"/></p>
                <p><strong>Urtea:</strong> <xsl:value-of select="urtea"/></p>
                <p><strong>Mota:</strong> <xsl:value-of select="@mota"/></p>
              </div>
            </xsl:for-each>
          </div>
          
          <div class="section">
            <h2>Lan Esperientzia</h2>
            <xsl:for-each select="Curriculum_Vitae/Lan-experientzia/lana">
              <div class="item">
                <h3><xsl:value-of select="postua"/></h3>
                <p><strong>Enpresa:</strong> <xsl:value-of select="enpresa"/></p>
                <p><strong>Iraupena:</strong> <xsl:value-of select="lan-iraupena"/></p>
                <p><strong>Mota:</strong> <xsl:value-of select="@mota"/></p>
              </div>
            </xsl:for-each>
          </div>
          
          <div class="section">
            <h2>Gaitasunak</h2>
            <ul>
              <xsl:for-each select="Curriculum_Vitae/gaitasunak/gaitasuna">
                <li>
                  <xsl:value-of select="."/>
                  (<xsl:value-of select="@mota"/> - 
                  <xsl:value-of select="@maila"/>)
                </li>
              </xsl:for-each>
            </ul>
          </div>
          
        </div>
      </body>
    </html>
    
  </xsl:template>
</xsl:stylesheet>