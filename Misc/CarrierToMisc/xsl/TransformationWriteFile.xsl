<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../ReadFrtTbl.wsdl"/>
      <rootElement name="FrtTrkPodRqstCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/ReadFrtTbl"/>
    </source>
    <source type="WSDL">
      <schema location="../PermTable.wsdl"/>
      <rootElement name="InvcMtchExcptCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/PermTable"/>
      <param name="InvokePermTbl_PermTableSelect_OutputVariable.InvcMtchExcptCollection" />
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../WriteCarrFile.wsdl"/>
      <rootElement name="CarrierToNewRoot-Element" namespace="http://TargetNamespace.com/ServiceName"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [SAT OCT 22 13:05:20 EDT 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Misc/CarrierToMisc/ReadFrtTbl"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/file/Misc/CarrierToMisc/WriteCarrFile"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:imp1="http://TargetNamespace.com/ServiceName"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/Misc/CarrierToMisc/PermTable"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/PermTable"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/ReadFrtTbl"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl tns plt wsdl ns0 ns1 top xsd ns2 imp1 jca xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:param name="InvokePermTbl_PermTableSelect_OutputVariable.InvcMtchExcptCollection"/>
  <xsl:template match="/">
    <imp1:CarrierToNewRoot-Element>
      <xsl:for-each select="$InvokePermTbl_PermTableSelect_OutputVariable.InvcMtchExcptCollection/ns1:InvcMtchExcptCollection/ns1:InvcMtchExcpt">
        <imp1:CarrierToNewOutput>
          <imp1:frtTrckNum>
            <xsl:value-of select="/top:FrtTrkPodRqstCollection/top:FrtTrkPodRqst/top:frtTrkNbr"/>
          </imp1:frtTrckNum>
          <imp1:invcNbr>
            <xsl:value-of select="ns1:invcNbr"/>
          </imp1:invcNbr>
          <imp1:poNbr>
            <xsl:value-of select="ns1:poNbr"/>
          </imp1:poNbr>
          <imp1:pvndrNbr>
            <xsl:value-of select="ns1:pvndrNbr"/>
          </imp1:pvndrNbr>
          <imp1:vchrNbr>
            <xsl:value-of select="ns1:vchrNbr"/>
          </imp1:vchrNbr>
        </imp1:CarrierToNewOutput>
      </xsl:for-each>
    </imp1:CarrierToNewRoot-Element>
  </xsl:template>
</xsl:stylesheet>
