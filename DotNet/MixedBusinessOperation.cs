using System;
using InterSystems.Data.IRISClient.ADO;

namespace InterSystems.Demo.PEX
{
    class MixedBusinessOperation : InterSystems.EnsLib.PEX.BusinessOperation
    {
        public override void OnInit()
        {
            Console.Write("\r\n[.NET] ...Demo.PEX.MixedBusinessOperation:OnInit() is called");
            return;
        }

        public override void OnTearDown()
        {
            Console.Write("\r\n[.NET] ...Demo.PEX.MixedBusinessOperation:OnTearDown() is called");
            return;
        }

        public override object OnMessage(Object request)
        {
            Console.Write("\r\n[.NET] ...Demo.PEX.MixedBusinessOperation:OnMessage() is called with " + ((IRISObject)request).Get("StringValue"));
            return null;
        }

    }
}
