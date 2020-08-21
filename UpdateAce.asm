.386
.model flat, stdcall

DLL_PROCESS_ATTACH equ 1
DLL_PROCESS_DETACH equ 0
DLL_THREAD_ATTACH equ 2
DLL_THREAD_DETACH equ 3
TRUE equ 1

.code

DllEntryPoint proc instance:DWORD,reason:DWORD,unused:DWORD 

    .if reason == DLL_PROCESS_ATTACH
      mov eax, TRUE

    .elseif reason == DLL_PROCESS_DETACH

    .elseif reason == DLL_THREAD_ATTACH

    .elseif reason == DLL_THREAD_DETACH

    .endif

    ret

DllEntryPoint endp

DllCanUnloadNow proc
    xor eax, eax
    retn
DllCanUnloadNow endp

DllGetClassObject proc
    xor eax, eax
    retn 0Ch
DllGetClassObject endp

DllRegisterServer proc
    xor eax, eax
    retn
DllRegisterServer endp

DllUnregisterServer proc
    xor eax, eax
    retn
DllUnregisterServer endp

UA_Initialize proc
    mov eax, 0
    mov [ebp+0Ch], eax
    retn 14h
UA_Initialize endp

UA_QueueKnownFileInfo proc
    retn 1Ch
UA_QueueKnownFileInfo endp

UA_GetNewsAndUpdateInfo proc
    retn 8
UA_GetNewsAndUpdateInfo endp

UA_WaitForContinueButton proc
    retn 18h
UA_WaitForContinueButton endp

UA_GetUpdateFileCount proc
    ret
UA_GetUpdateFileCount endp

UA_GetUpdateFileInfo proc
    retn 34h
UA_GetUpdateFileInfo endp

UA_GetLocalFileVersion proc
    ret 14h
UA_GetLocalFileVersion endp

UA_QueueFileToDownload proc
    retn 4
UA_QueueFileToDownload endp

UA_DownloadQueuedFiles proc
    retn 8
UA_DownloadQueuedFiles endp

UA_GetDownloadedFileCount proc
    retn 
UA_GetDownloadedFileCount endp

UA_GetDownloadedFileInfo proc
    retn 
UA_GetDownloadedFileInfo endp

UA_SaveDownloadedFile proc
    retn 0Ch
UA_SaveDownloadedFile endp

UA_ExitAndSave proc
    retn 4
UA_ExitAndSave endp

UA_Uninitialize proc
    retn
UA_Uninitialize endp

UA_OpenURL proc
    retn 4
UA_OpenURL endp

UA_SetStatusText proc
    retn 4
UA_SetStatusText endp

UA_GetServerDate proc
    retn 0Ch
UA_GetServerDate endp

UA_GetMD5Digest proc
    retn 0Ch
UA_GetMD5Digest endp

UA_GetMD5Digest2 proc
    retn 8
UA_GetMD5Digest2 endp

end DllEntryPoint
