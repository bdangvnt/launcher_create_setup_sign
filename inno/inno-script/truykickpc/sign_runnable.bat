REM buildPath: Biến local của bat, đường dẫn thư mục chứa các thư mục (Win7 và Win10) bên trong chứa file VTCPlus.exe. Ví dụ .\Builds\; đường dẫn tới thư mục gốc em gửi
REM CHÚ Ý: Có thể dùng đường dẫn tương đối thay vì tuyệt đối.
@echo off
cls
CALL set buildsPath=..\..\..\..\vtc-esport-client\builds_test
for %%w in (Win7 Win10) do (
	CALL:ECHORED %%w
	if not exist "%buildsPath%\%%w\truykichpc\BattleTeams2.exe" (
		CALL:ECHORED "%buildsPath%\%%w\truykichpc\BattleTeams2.exe not existing"
	) else (
        CALL:ECHORED "sign %buildsPath%\%%w\truykichpc\BattleTeams2.exe"
        CALL signtool sign /a /tr http://timestamp.globalsign.com/tsa/r6advanced1 /td SHA256 /fd SHA256 "%buildsPath%\%%w\truykichpc\BattleTeams2.exe"
    )
    REM baoch cococ fbreg fbscl ggdpl ggreg koccc kolll oohhh tikok vtcme
    for %%x in (hubservices gcp fus kingzone other ckg chimsedinang rip113 cc1 cc2 cc3 fb1 fb2 fb3 gg1 gg2 gg3) do (
        if not exist "%buildsPath%\%%w\truykichpc_%%x\BattleTeams2.exe" (
            CALL:ECHORED "%buildsPath%\%%w\truykichpc_%%x\BattleTeams2.exe not existing"
        ) else (
            CALL:ECHORED "sign %buildsPath%\%%w\truykichpc_%%x\BattleTeams2.exe"
            CALL signtool sign /a /tr http://timestamp.globalsign.com/tsa/r6advanced1 /td SHA256 /fd SHA256 "%buildsPath%\%%w\truykichpc_%%x\BattleTeams2.exe"
        )
    )
)

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
goto:eof