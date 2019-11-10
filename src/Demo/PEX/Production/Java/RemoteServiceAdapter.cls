Class Demo.PEX.Production.Java.RemoteServiceAdapter Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Demo.PEX.Production.RemoteServiceAdapter" LogGeneralTraceEvents="false">
<Description></Description>
<ActorPoolSize>2</ActorPoolSize>
<Item Name="Demo.PEX.ServiceAdapter" Category="" ClassName="Demo.PEX.ServiceAdapter" PoolSize="1" Enabled="true" Foreground="true" Comment="" LogTraceEvents="false" Schedule="">
<Setting Target="Adapter" Name="%gatewayPort">44444</Setting>
<Setting Target="Adapter" Name="%gatewayExtraClasspaths">c:\PEXDemo\intersystems-PEX-demo-1.0.0.jar;c:\PEXDemo\gson-2.8.5.jar</Setting>
<Setting Target="Adapter" Name="%remoteClassname">com.intersystems.demo.pex.InboundAdapter</Setting>
<Setting Target="Host" Name="%gatewayPort">44444</Setting>
<Setting Target="Host" Name="%gatewayExtraClasspaths">c:\PEXDemo\intersystems-PEX-demo-1.0.0.jar;c:\PEXDemo\gson-2.8.5.jar</Setting>
<Setting Target="Host" Name="%remoteClassname">com.intersystems.demo.pex.BusinessService</Setting>
</Item>
</Production>
}

}
