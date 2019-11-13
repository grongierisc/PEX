using System;
using InterSystems.Data.IRISClient.ADO;

namespace InterSystems.Demo.PEX
{
    class BusinessService : InterSystems.EnsLib.PEX.BusinessService
    {
        public int Min = 0;
        public int Max = 0;

        public override void OnInit()
        {
            Console.Write("\r\n[.NET] ...Demo.PEX.BusinessService:OnInit() is called, Min=" + Min + ", Max=" + Max);
            return;
        }

        public override void OnTearDown()
        {
            Console.Write("\r\n[.NET] ...Demo.PEX.BusinessService:OnTearDown() is called");
            return;
        }

        public override object OnProcessInput(object messageInput)
        {
            Console.Write("\r\n[.NET] ...Demo.PEX.BusinessService:OnProcessInput() is called");
            return "...Demo.PEX.BusinessService:OnProcessInput() echos";
        }

    }
}
