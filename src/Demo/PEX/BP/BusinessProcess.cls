/// 
Class Demo.PEX.BP.BusinessProcess Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.Request' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='tLegacyRequest' type='Demo.PEX.LegacyRequest' instantiate='0' />
</context>
<sequence xend='200' yend='450' >
<transform name='PexToLegacy' class='Demo.PEX.DT.PexToLegacy' source='request' target='context.tLegacyRequest' xpos='200' ypos='250' />
<call name='ToLegacy' target='Demo.PEX.BusinessOperation' async='1' xpos='200' ypos='350' >
<request type='Ens.Request' >
<assign property="callrequest" value="context.tLegacyRequest" action="set" />
</request>
<response type='Ens.Response' />
</call>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
