Class Demo.PEX.Production.Java.RemoteInboundAdapter Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Demo.PEX.Production.RemoteInboundAdapter" LogGeneralTraceEvents="false">
<Description></Description>
<ActorPoolSize>2</ActorPoolSize>
<Item Name="Demo.PEX.BusinessService" Category="" ClassName="Demo.PEX.BusinessService" PoolSize="1" Enabled="true" Foreground="true" Comment="" LogTraceEvents="false" Schedule="">
<Setting Target="Adapter" Name="CallInterval">5</Setting>
<Setting Target="Adapter" Name="%gatewayPort">44444</Setting>
<Setting Target="Adapter" Name="%gatewayExtraClasspaths">c:\PEXDemo\intersystems-PEX-demo-1.0.0.jar;c:\PEXDemo\gson-2.8.5.jar</Setting>
<Setting Target="Adapter" Name="%remoteClassname">com.intersystems.demo.pex.InboundAdapter</Setting>
<Setting Target="Adapter" Name="%remoteSettings">min=11
max=99</Setting>
</Item>
</Production>
}

}
