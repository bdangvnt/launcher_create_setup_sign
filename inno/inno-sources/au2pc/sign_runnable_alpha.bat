REM buildPath: Biến local của bat, đường dẫn thư mục chứa các thư mục (Win7 và Win10) bên trong chứa file VTCPlus.exe. Ví dụ .\Builds\; đường dẫn tới thư mục gốc em gửi
REM CHÚ Ý: Có thể dùng đường dẫn tương đối thay vì tuyệt đối.
@echo off
cls
CALL set buildsPath=..\..\..\..\vtc-esport-client\lib\mains\alpha\builds_test
for %%w in (Win10) do (
	CALL:ECHORED %%w
	if not exist "%buildsPath%\%%w\au2pc\VTCPlus.exe" (
		CALL:ECHORED "%buildsPath%\%%w\au2pc\VTCPlus.exe not existing"
	) else (
        CALL:ECHORED "sign %buildsPath%\%%w\au2pc\VTCPlus.exe"
        CALL signtool sign /a /tr http://timestamp.globalsign.com/tsa/r6advanced1 /td SHA256 /fd SHA256 "%buildsPath%\%%w\au2pc\VTCPlus.exe"
    )
    REM baoch cococ fbreg fbscl ggdpl ggreg koccc kolll oohhh tikok vtcme ccoc1 ccoc2 ccoc3 ccoc4 ccoc5 vtcg1 vtcg2 vtcg3 vtcg4 vtcg5
    for %%x in (baoch cococ fbreg fbscl ggdpl ggreg koccc kolll oohhh tikok vtcme ccoc1 ccoc2 ccoc3 ccoc4 ccoc5 vtcg1 vtcg2 vtcg3 vtcg4 vtcg5) do (
        if not exist "%buildsPath%\%%w\au2pc_%%x\VTCPlus.exe" (
            CALL:ECHORED "%buildsPath%\%%w\au2pc_%%x\VTCPlus.exe not existing"
        ) else (
            CALL:ECHORED "sign %buildsPath%\%%w\au2pc_%%x\VTCPlus.exe"
            CALL signtool sign /a /tr http://timestamp.globalsign.com/tsa/r6advanced1 /td SHA256 /fd SHA256 "%buildsPath%\%%w\au2pc_%%x\VTCPlus.exe"
        )
    )
)

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
goto:eof