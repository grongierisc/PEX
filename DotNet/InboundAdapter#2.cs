using System;

namespace InterSystems.Demo.PEX
{
    class InboundAdapter : InterSystems.EnsLib.PEX.InboundAdapter
    {
        public int min = 0;
        public int max = 0;
        int runningCount = 0;

        public override void OnInit()
        {
            Console.Write("\r\n[.NET]...Demo.PEX.InboundAdapter:OnInit() is called, " + " min=" + min + ", max=" + max);
            return;
        }

        public override void OnTearDown()
        {
            Console.Write("\r\n[.NET]...Demo.PEX.InboundAdapter:OnTearDown() is called");
            return;
        }

        public override void OnTask()
        {
            Console.Write("\r\n[.NET]...Demo.PEX.InboundAdapter:OnTask() is called");
            // 50% chance of calling ProcessInput()
            if ((new Random()).NextDouble() < 0.5)
            {
                SimpleObject request = new SimpleObject("message #" + (++runningCount));
                Console.Write("\r\n[.NET]...Demo.PEX.InboundAdapter:OnTask() calls ProcessInput() with " + request.value);
                string response = (string)BusinessHost.ProcessInput(request);
                Console.Write("\r\n[.NET]...Demo.PEX.InboundAdapter:OnTask() receives \"" + response + "\"");
            }
            return;
        }

    }
}
