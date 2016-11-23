<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../ReadFrtTbl.wsdl"/>
      <rootElement name="FrtTrkPodRqstCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/ReadFrtTbl"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../PermTable.wsdl"/>
      <rootElement name="PermTableSelect_vchrNbrInputParameters" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/PermTable"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [SAT OCT 22 13:16:58 EDT 2016]. -->
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
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/Misc/CarrierToMisc/PermTable"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/PermTable"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/ReadFrtTbl"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl tns plt wsdl top xsd ns0 ns1 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <xsl:for-each select="/top:FrtTrkPodRqstCollection/top:FrtTrkPodRqst">
      <ns1:PermTableSelect_vchrNbrInputParameters>
        <ns1:vchrNbr>
          <xsl:value-of select="top:vchrNbr"/>
        </ns1:vchrNbr>
      </ns1:PermTableSelect_vchrNbrInputParameters>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
