set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.16.27023\bin\HostX86\x86;%PATH%
ml /c /Cx /coff UpdateAce.asm 
link /SUBSYSTEM:WINDOWS /DLL /DEF:UpdateAce.def UpdateAce.obj /out:UpdateAce.dll /entry:DllEntryPoint@12
