Class Demo.PEX.Production.Java.RemoteOutboundAdapter Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Demo.PEX.Production.RemoteOutboundAdapter" LogGeneralTraceEvents="false">
<Description></Description>
<ActorPoolSize>2</ActorPoolSize>
<Item Name="Demo.PEX.TickerService" Category="" ClassName="Demo.PEX.TickerService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
<Setting Target="Host" Name="TargetConfigName">Demo.PEX.BusinessOperation</Setting>
<Setting Target="Host" Name="RemoteMessagePackageName">com.intersystems.demo.pex</Setting>
</Item>
<Item Name="Demo.PEX.BusinessOperation" Category="" ClassName="Demo.PEX.BusinessOperation" PoolSize="1" Enabled="true" Foreground="true" Comment="" LogTraceEvents="false" Schedule="">
<Setting Target="Adapter" Name="%gatewayPort">44444</Setting>
<Setting Target="Adapter" Name="%gatewayExtraClasspaths">c:\PEXDemo\intersystems-PEX-demo-1.0.0.jar;c:\PEXDemo\gson-2.8.5.jar</Setting>
<Setting Target="Adapter" Name="%remoteClassname">com.intersystems.demo.pex.OutboundAdapter</Setting>
</Item>
</Production>
}

}
