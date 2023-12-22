REM buildPath: Biến local của bat, đường dẫn thư mục chứa các thư mục (Win7 và Win10) bên trong chứa file VTCPlus.exe. Ví dụ .\Builds\; đường dẫn tới thư mục gốc em gửi
REM CHÚ Ý: Có thể dùng đường dẫn tương đối thay vì tuyệt đối.
@echo off
cls
CALL set buildsPath=..\..\au2pc-setup-output-files-prod
if not exist "%buildsPath%\AU2PC_Win10_Setup.exe" (
    CALL:ECHORED "%buildsPath%\AU2PC_Win10_Setup.exe not existing"
) else (
    CALL:ECHORED "sign %buildsPath%\AU2PC_Win10_Setup.exe"
    CALL signtool sign /a /tr http://timestamp.globalsign.com/tsa/r6advanced1 /td SHA256 /fd SHA256 "%buildsPath%\AU2PC_Win10_Setup.exe"
)
REM baoch cococ fbreg fbscl ggdpl ggreg koccc kolll oohhh tikok vtcme ccoc1 ccoc2 ccoc3 ccoc4 ccoc5 vtcg1 vtcg2 vtcg3 vtcg4 vtcg5
for %%x in (baoch cococ fbreg fbscl ggdpl ggreg koccc kolll oohhh tikok vtcme ccoc1 ccoc2 ccoc3 ccoc4 ccoc5 vtcg1 vtcg2 vtcg3 vtcg4 vtcg5) do (
    if not exist "%buildsPath%\AU2PC_Win10_%%x_Setup.exe" (
        CALL:ECHORED "%buildsPath%\AU2PC_Win10_%%x_Setup.exe not existing"
    ) else (
        CALL:ECHORED "sign %buildsPath%\AU2PC_Win10_%%x_Setup.exe"
        CALL signtool sign /a /tr http://timestamp.globalsign.com/tsa/r6advanced1 /td SHA256 /fd SHA256 "%buildsPath%\AU2PC_Win10_%%x_Setup.exe"
    )
)

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
goto:eof