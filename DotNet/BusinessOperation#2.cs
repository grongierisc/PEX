using System;

namespace InterSystems.Demo.PEX
{
    class BusinessOperation : InterSystems.EnsLib.PEX.BusinessOperation
    {
        public override void OnInit()
        {
            Console.Write("\r\n[.NET] ...Demo.PEX.BusinessOperation:OnInit() is called");
            return;
        }

        public override void OnTearDown()
        {
            Console.Write("\r\n[.NET] ...Demo.PEX.BusinessOperation:OnTearDown() is called");
            return;
        }

        public override object OnMessage(object request)
        {
            Console.Write("\r\n[.NET] ...Demo.PEX.BusinessOperation:OnMessage() is called with " + ((Request)request).requestString);
            Response response = new Response("...Demo.PEX.BusinessOperation:OnMessage() echos");
            return response;
        }

    }
}
