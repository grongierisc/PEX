Class Demo.PEX.Production.Mixed.RemoteServiceOperation Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Demo.PEX.Production.Mixed.RemoteServiceOperation" LogGeneralTraceEvents="false">
<Description></Description>
<ActorPoolSize>2</ActorPoolSize>
<Item Name="com.intersystems.demo.pex.BusinessService" Category="" ClassName="EnsLib.PEX.BusinessService" PoolSize="1" Enabled="true" Foreground="true" Comment="" LogTraceEvents="false" Schedule="">
<Setting Target="Host" Name="%gatewayPort">44444</Setting>
<Setting Target="Host" Name="%gatewayExtraClasspaths">c:\PEXDemo\intersystems-PEX-demo-1.0.0.jar;c:\PEXDemo\gson-2.8.5.jar</Setting>
<Setting Target="Host" Name="%remoteClassname">com.intersystems.demo.pex.MixedBusinessService</Setting>
<Setting Target="Host" Name="%remoteSettings">Min=111
Max=555</Setting>
</Item>
<Item Name="InterSystems.Demo.PEX.MixedBusinessOperation" Category="" ClassName="EnsLib.PEX.BusinessOperation" PoolSize="1" Enabled="true" Foreground="true" Comment="" LogTraceEvents="false" Schedule="">
<Setting Target="Host" Name="%gatewayPort">55555</Setting>
<Setting Target="Host" Name="%gatewayExtraClasspaths">C:\PEXDemo\DemoPEX.exe</Setting>
<Setting Target="Host" Name="%remoteClassname">InterSystems.Demo.PEX.MixedBusinessOperation</Setting>
</Item>
</Production>
}

}
