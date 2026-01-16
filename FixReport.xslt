<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <ReportExport>
            <xsl:apply-templates select="//transaction"/>
        </ReportExport>
    </xsl:template>

    <xsl:template match="*">
        <xsl:element name="{name()}">
            <xsl:apply-templates select="node()"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="text()">
        <xsl:value-of select="."/>
    </xsl:template>

</xsl:stylesheet>
