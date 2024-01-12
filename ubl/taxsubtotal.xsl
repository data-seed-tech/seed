<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" version="1.0">
    <xsl:output omit-xml-declaration="yes" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <xxx>
            <xsl:for-each select="/records/record">
                <cac:TaxSubtotal>
                    <cbc:TaxableAmount>
                        <xsl:attribute name="currencyID">
                            <xsl:value-of select="/records/record/PriceAmountCurrencyID"/>
                        </xsl:attribute>
                        <xsl:value-of select="/records/record/TaxableAmount"/>
                    </cbc:TaxableAmount>

                    <cbc:TaxAmount>
                        <xsl:attribute name="currencyID">
                            <xsl:value-of select="/records/record/PriceAmountCurrencyID"/>
                        </xsl:attribute>
                        0.00aaa
                    </cbc:TaxAmount>
                    <cac:TaxCategory>
                        <cbc:ID>O</cbc:ID>
                        <cbc:Percent>0.00</cbc:Percent>
                        <cbc:TaxExemptionReasonCode>VATEX-EU-O</cbc:TaxExemptionReasonCode>
                        <cac:TaxScheme>
                            <cbc:ID>VAT</cbc:ID>
                        </cac:TaxScheme>
                    </cac:TaxCategory>
                </cac:TaxSubtotal>
            </xsl:for-each>
        </xxx>
    </xsl:template>

</xsl:stylesheet>