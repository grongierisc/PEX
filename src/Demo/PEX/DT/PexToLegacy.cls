Class Demo.PEX.DT.PexToLegacy Extends Ens.DataTransformDTL [ DependsOn = (Demo.Lib.Pex.Message, Demo.PEX.LegacyRequest) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='Demo.Lib.Pex.Message' targetClass='Demo.PEX.LegacyRequest' create='new' language='objectscript' >
<assign value='source.%jsonObject.%Get("message")' property='target.Message' action='set' />
</transform>
}

}
