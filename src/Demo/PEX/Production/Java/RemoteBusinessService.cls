Class Demo.PEX.Production.Java.RemoteBusinessService Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Demo.PEX.Production.RemoteBusinessService" LogGeneralTraceEvents="false">
<Description></Description>
<ActorPoolSize>2</ActorPoolSize>
<Item Name="com.intersystems.demo.pex.BusinessService" Category="" ClassName="EnsLib.PEX.BusinessService" PoolSize="1" Enabled="true" Foreground="true" Comment="" LogTraceEvents="false" Schedule="">
<Setting Target="Host" Name="%gatewayPort">44444</Setting>
<Setting Target="Host" Name="%gatewayExtraClasspaths">c:\PEXDemo\intersystems-PEX-demo-1.0.0.jar;c:\PEXDemo\gson-2.8.5.jar</Setting>
<Setting Target="Host" Name="%remoteClassname">com.intersystems.demo.pex.BusinessService</Setting>
<Setting Target="Host" Name="%remoteSettings">Min=111
Mid=333
Max=555</Setting>
</Item>
</Production>
}

}
