dim Nics, StrIP
Set Nics = GetObject("winmgmts:").InstancesOf("Win32_NetworkAdapterConfiguration")
For Each Nic in Nics
    if Nic.IPEnabled then
        StrIP = Nic.IPAddress(0)
        X=Msgbox("You are hacked",0+16,"Mr. Hacker")
	X=Msgbox("Your ip address is " & StrIP,0+16,"Mr. Hacker")
        Exit for
    End if
Next