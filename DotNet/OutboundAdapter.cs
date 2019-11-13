using System;
using InterSystems.Data.IRISClient.ADO;

namespace InterSystems.Demo.PEX
{
    class OutboundAdapter : InterSystems.EnsLib.PEX.OutboundAdapter
    {
        public override void OnInit()
        {
            Console.Write("\r\n[.NET] ...Demo.PEX.OutboundAdapter:OnInit() is called");
            return;
        }

        public override void OnTearDown()
        {
            Console.Write("\r\n[.NET] ...Demo.PEX.OutboundAdapter:OnTearDown() is called");
            return;
        }

        public string printStringContainer(IRISObject stringContainer)
        {
            Console.WriteLine("\r\n[.NET] ...Demo.PEX.OutboundAdapter:printStringContainer(): " + (string)stringContainer.Get("StringValue"));
            return "printed successfully";
        }

    }
}
