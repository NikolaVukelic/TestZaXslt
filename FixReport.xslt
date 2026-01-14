<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="/*">
        <report>
            <xsl:apply-templates select=".//transaction"/>
        </report>
    </xsl:template>

    <xsl:template match="transaction">
        <transaction>
            <xsl:apply-templates select="*"/>
        </transaction>
    </xsl:template>

    <xsl:template match="*">
        <xsl:element name="{name()}">
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>