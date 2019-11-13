Class Demo.PEX.Production.Java Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Demo.PEX.Production.Java" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="Demo.PEX.TickerService" Category="" ClassName="Demo.PEX.TickerService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">com.intersystems.demo.pex.BusinessOperation</Setting>
    <Setting Target="Host" Name="RemoteMessagePackageName">com.intersystems.demo.pex</Setting>
  </Item>
  <Item Name="com.intersystems.demo.pex.BusinessOperation" Category="" ClassName="Demo.Lib.Pex.BusinessOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="%gatewayPort">44444</Setting>
    <Setting Target="Host" Name="%gatewayExtraClasspaths">/mnt/PEX/target/intersystems-PEX-demo-1.0.0.jar</Setting>
    <Setting Target="Host" Name="%remoteClassname">com.intersystems.demo.pex.BusinessOperation</Setting>
  </Item>
  <Item Name="JG" Category="" ClassName="EnsLib.JavaGateway.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Port">44444</Setting>
    <Setting Target="Host" Name="ClassPath">/mnt/PEX/lib/*</Setting>
  </Item>
  <Item Name="Demo.PEX.BusinessOperation" Category="" ClassName="Demo.PEX.BusinessOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="%gatewayPort">44444</Setting>
    <Setting Target="Adapter" Name="%gatewayExtraClasspaths">/mnt/PEX/target/intersystems-PEX-demo-1.0.0.jar</Setting>
    <Setting Target="Adapter" Name="%remoteClassname">com.intersystems.demo.pex.OutboundAdapter</Setting>
  </Item>
  <Item Name="Demo.PEX.Service" Category="" ClassName="Demo.PEX.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">Demo.PEX.BP.BusinessProcess</Setting>
  </Item>
  <Item Name="com.intersystems.demo.pex.BusinessService" Category="" ClassName="Demo.Lib.Pex.BusinessService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="%remoteClassname">com.intersystems.demo.pex.BusinessService</Setting>
    <Setting Target="Host" Name="%gatewayExtraClasspaths">/mnt/PEX/target/intersystems-PEX-demo-1.0.0.jar</Setting>
    <Setting Target="Host" Name="%remoteSettings">Target=Demo.PEX.BP.BusinessProcess</Setting>
  </Item>
  <Item Name="Demo.PEX.BP.BusinessProcess" Category="" ClassName="Demo.PEX.BP.BusinessProcess" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="com.intersystems.demo.pex.BusinessProcess" Category="" ClassName="Demo.Lib.Pex.BusinessProcess" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="%remoteClassname">com.intersystems.demo.pex.BusinessProcess</Setting>
    <Setting Target="Host" Name="%gatewayExtraClasspaths">/mnt/PEX/target/intersystems-PEX-demo-1.0.0.jar</Setting>
  </Item>
</Production>
}

}
