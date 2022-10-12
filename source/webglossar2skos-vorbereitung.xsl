<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:h="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="2.0">
    
    
    <xsl:template match="h:head"/>
    <xsl:template match="h:div[@id='header']"/>
    <xsl:template match="h:div[@id='navbar']"/>
    <xsl:template match="h:script"/>
    
       
    <xsl:template match="h:body">
        
        <!-- Target-Format: -->
        <!-- 
        
        :T a skos:Concept ;
  skos:inScheme :sehPlaceTypes ;
  skos:prefLabel "Topographisches Objekt"@de ;
  skos:prefLabel "Topographical Object"@en ;
  skos:altLabel "Ort"@de ;
  skos:note "beschreibbare geographische Einheit; alle Entitäten, die im TEI-XML mit <place> kodiert werden. " .  
        -->
        <xsl:for-each select=".//h:a">
            <xsl:value-of select="@href"/>
            <xsl:text>&#xa;</xsl:text>
        </xsl:for-each>
        
        <xsl:text>&#xa;</xsl:text><xsl:text>&#xa;</xsl:text><xsl:text>&#xa;</xsl:text><xsl:text>&#xa;</xsl:text> 
        <xsl:text>HIER EIGENTLICHE DATEN</xsl:text>
        <xsl:text>&#xa;</xsl:text><xsl:text>&#xa;</xsl:text><xsl:text>&#xa;</xsl:text><xsl:text>&#xa;</xsl:text> 
        <xsl:for-each select=".//h:p">
           <xsl:text>:</xsl:text>
           <xsl:value-of select="lower-case(string-join(.//h:strong/text(),' '))"/>
           <xsl:text> a skos:Concept ;</xsl:text>
           <xsl:text>&#xa;</xsl:text>
           <xsl:text>skos:prefLabel </xsl:text>
           <xsl:text>"</xsl:text>
           <xsl:value-of select="lower-case(string-join(.//h:strong/text(),' '))"/>
           <xsl:text>"@de ;</xsl:text>
           <xsl:text>&#xa;</xsl:text>
           <xsl:text>skos:note </xsl:text>
           <xsl:text>"</xsl:text>
           <xsl:apply-templates/>
            <xsl:text>"</xsl:text>
           
            <xsl:text>&#xa;</xsl:text><xsl:text>&#xa;</xsl:text><xsl:text>&#xa;</xsl:text><xsl:text>&#xa;</xsl:text> 
           
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>

