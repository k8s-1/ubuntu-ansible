set wsc = CreateObject("WScript.Shell")

Do
        WScript.Sleep(5*60*1000)
        wsc.SendKeys("{SCROLLLOCK}{SCROLLLOCK}")
Loop
