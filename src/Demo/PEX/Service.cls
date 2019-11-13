Class Demo.PEX.Service Extends Ens.BusinessService
{

Parameter SETTINGS = "TargetConfigName";

Property TargetConfigName As %String;

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject, ByRef pHint As %String) As %Status
{

    set tSC = $$$OK

	try {
        $$$LOGINFO(pInput)
		set tRequest = ##class(Demo.Lib.Pex.Message).%New()
		set tRequest.%jsonObject.message = pInput
		$$$ThrowOnError(..SendRequestSync(..TargetConfigName,tRequest,.tOuput))
        set pOutput = "From Ensemble Service:"_pInput
	} catch ex {
		set tSC = ex.AsStatus()
	}
	quit tSC
}

}
