<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../PotMtchFlg_FileAdapter.wsdl"/>
      <rootElement name="PotMtchFlgRootElement" namespace="http://TargetNamespace.com/PotMtchFlg_FileAdapter"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../PotMtchFlg.wsdl"/>
      <rootElement name="process" namespace="http://xmlns.oracle.com/WorkflowInjectionServices/ApMerchUpdateFlexFields/UpdateFlexFields"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 140919.1004.0161) AT [WED AUG 10 22:14:05 EDT 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/jms/Misc/PotMtchFlgUpdate/PotMtchFlg"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:ns1="http://xmlns.oracle.com/WorkflowInjectionServices/ApMerchUpdateFlexFields/UpdateFlexFields"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:imp1="http://TargetNamespace.com/PotMtchFlg_FileAdapter"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/file/Misc/PotMtchFlgUpdate/PotMtchFlg_FileAdapter"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl pc plt wsdl imp1 tns jca xsd ns0 ns1 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <ns1:process>
      <xsl:for-each select="/imp1:PotMtchFlgRootElement">
        <ns1:FlexFieldQuery>
          <ns1:FlexFieldName>
            <xsl:text disable-output-escaping="no">protectedTextAttribute14</xsl:text>
          </ns1:FlexFieldName>
          <ns1:FlexFieldValue>
            <xsl:value-of select="imp1:VchrNbr"/>
          </ns1:FlexFieldValue>
          <ns1:FlexFieldTableName>
            <xsl:text disable-output-escaping="no"></xsl:text>
          </ns1:FlexFieldTableName>
          <ns1:CompareOperator>
            <xsl:text disable-output-escaping="no">EQ</xsl:text>
          </ns1:CompareOperator>
          <ns1:JoinOperator>
            <xsl:text disable-output-escaping="no">AND</xsl:text>
          </ns1:JoinOperator>
        </ns1:FlexFieldQuery>
      </xsl:for-each>
      <xsl:for-each select="/imp1:PotMtchFlgRootElement">
        <ns1:FlexFieldQuery>
          <ns1:FlexFieldName>
            <xsl:text disable-output-escaping="no">protectedTextAttribute4</xsl:text>
          </ns1:FlexFieldName>
          <ns1:FlexFieldValue>
            <xsl:value-of select="imp1:InvcStat"/>
          </ns1:FlexFieldValue>
          <ns1:FlexFieldTableName>
            <xsl:text disable-output-escaping="no"></xsl:text>
          </ns1:FlexFieldTableName>
          <ns1:CompareOperator>
            <xsl:text disable-output-escaping="no">EQ</xsl:text>
          </ns1:CompareOperator>
          <ns1:JoinOperator>
            <xsl:text disable-output-escaping="no">AND</xsl:text>
          </ns1:JoinOperator>
        </ns1:FlexFieldQuery>
      </xsl:for-each>
      <xsl:for-each select="/imp1:PotMtchFlgRootElement">
        <ns1:FlexFieldQuery>
          <ns1:FlexFieldName>
            <xsl:text disable-output-escaping="no">protectedTextAttribute9</xsl:text>
          </ns1:FlexFieldName>
          <ns1:FlexFieldValue>
            <xsl:value-of select="imp1:PVndrNbr"/>
          </ns1:FlexFieldValue>
          <ns1:FlexFieldTableName>
            <xsl:text disable-output-escaping="no"></xsl:text>
          </ns1:FlexFieldTableName>
          <ns1:CompareOperator>
            <xsl:text disable-output-escaping="no">EQ</xsl:text>
          </ns1:CompareOperator>
          <ns1:JoinOperator>
            <xsl:text disable-output-escaping="no">AND</xsl:text>
          </ns1:JoinOperator>
        </ns1:FlexFieldQuery>
      </xsl:for-each>
      <ns1:FlexFieldUpdate>
        <ns1:protectedTextAttribute8>
          <xsl:value-of select="/imp1:PotMtchFlgRootElement/imp1:PotMtchFlg"/>
        </ns1:protectedTextAttribute8>
      </ns1:FlexFieldUpdate>
    </ns1:process>
  </xsl:template>
</xsl:stylesheet>
