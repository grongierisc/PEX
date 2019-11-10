Class Demo.PEX.Production.Java.RemoteBusinessProcess Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Demo.PEX.Production.RemoteBusinessProcess" LogGeneralTraceEvents="false">
<Description></Description>
<ActorPoolSize>2</ActorPoolSize>
<Item Name="Demo.PEX.TickerService" Category="" ClassName="Demo.PEX.TickerService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
<Setting Target="Host" Name="TargetConfigName">com.intersystems.demo.pex.BusinessProcess</Setting>
<Setting Target="Host" Name="RemoteMessagePackageName">com.intersystems.demo.pex</Setting>
<Setting Target="Adapter" Name="CallInterval">30</Setting>
</Item>
<Item Name="com.intersystems.demo.pex.BusinessProcess" Category="" ClassName="EnsLib.PEX.BusinessProcess" PoolSize="1" Enabled="true" Foreground="true" Comment="" LogTraceEvents="false" Schedule="">
<Setting Target="Host" Name="%gatewayPort">44444</Setting>
<Setting Target="Host" Name="%gatewayExtraClasspaths">c:\PEXDemo\intersystems-PEX-demo-1.0.0.jar;c:\PEXDemo\gson-2.8.5.jar</Setting>
<Setting Target="Host" Name="%remoteClassname">com.intersystems.demo.pex.BusinessProcess</Setting>
</Item>
<Item Name="Demo.PEX.RandomGenerator" Category="" ClassName="Demo.PEX.RandomGenerator" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
<Setting Target="Host" Name="RemoteMessagePackageName">com.intersystems.demo.pex</Setting>
</Item>
</Production>
}

}
