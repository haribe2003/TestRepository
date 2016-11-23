<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="http://wn017a.amer.qahomedepot.com:8001/integration/services/TaskService/TaskServicePort?WSDL=TaskServiceInterface.wsdl"/>
      <rootElement name="bulkOperationOutput" namespace="http://xmlns.oracle.com/bpel/workflow/taskService"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="http://wn017a.amer.qahomedepot.com:8001/integration/services/TaskService/TaskServicePort?WSDL=TaskServiceInterface.wsdl"/>
      <rootElement name="updateOutcomeOfTasks" namespace="http://xmlns.oracle.com/bpel/workflow/taskService"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 140919.1004.0161) AT [SUN NOV 15 08:10:43 EST 2015]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns0="http://xmlns.oracle.com/bpel/workflow/common"
                xmlns:tsc="http://xmlns.oracle.com/bpel/workflow/common/tsc"
                xmlns:java="http://schemas.xmlsoap.org/wsdl/java/"
                xmlns:ns1="http://xmlns.oracle.com/bpel/workflow/TaskEvidenceService"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:format="http://schemas.xmlsoap.org/wsdl/formatbinding/"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:routingslip="http://xmlns.oracle.com/bpel/workflow/routingSlip"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns2="http://xmlns.oracle.com/bpel/workflow/taskService/schema"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:tns="http://xmlns.oracle.com/bpel/workflow/taskService"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:task="http://xmlns.oracle.com/bpel/workflow/task"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl bpws ns0 tsc java ns1 format plnk soap routingslip ns2 xsd tns task aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <tns:updateOutcomeOfTasks>
      <tns:outcome>
        <xsl:value-of select='xp20:upper-case("Approve")'/>
      </tns:outcome>
    </tns:updateOutcomeOfTasks>
  </xsl:template>
</xsl:stylesheet>
