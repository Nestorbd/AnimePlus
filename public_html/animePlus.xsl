<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : animePlus.xsl
    Created on : 3 de abril de 2020, 16:16
    Author     : Gamer
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <animeList xmlns="https://www.AnimePlus.com"
                   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                   xsi:schemaLocation="https://www.AnimePlus.com reports-output.xsd">
            <xsl:for-each select="/report/item">
                <item>
                    <name><xsl:value-of select="name"/></name>
                      <type><xsl:value-of select="type"/></type>  
                      <date><xsl:value-of select="vintage"/></date>
                </item>
        </xsl:for-each>
        </animeList>
    </xsl:template>

</xsl:stylesheet>
