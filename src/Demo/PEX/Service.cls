Class Demo.PEX.Service Extends Ens.BusinessService
{

Parameter ADAPTER = "Ens.InboundAdapter";

Parameter SETTINGS = "TargetConfigName";

Property TargetConfigName As %String;

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject, ByRef pHint As %String) As %Status
{

    set tSC = $$$OK

	try {
        $$$LOGINFO(pInput)
	} catch ex {
		set tSC = ex.AsStatus()
	}
	quit tSC
}

}
