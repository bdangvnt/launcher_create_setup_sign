REM buildPath: Biến local của bat, đường dẫn thư mục chứa các thư mục (Win7 và Win10) bên trong chứa file VTCPlus.exe. Ví dụ .\Builds\; đường dẫn tới thư mục gốc em gửi
REM CHÚ Ý: Có thể dùng đường dẫn tương đối thay vì tuyệt đối.
@echo off
cls
CALL set buildsPath=..\..\au2pc-setup-output-files-prod
CALL set buildVersion=1.0.0.21
CALL set buildNumberAndDate=b2105122023p

if not exist "%buildsPath%\VTCPLUS_Win10_B2C_Setup_%buildVersion%%buildNumberAndDate%.exe" (
    CALL:ECHORED "%buildsPath%\VTCPLUS_Win10_B2C_Setup_%buildVersion%%buildNumberAndDate%.exe not existing"
) else (
    CALL:ECHORED "sign %buildsPath%\VTCPLUS_Win10_B2C_Setup_%buildVersion%%buildNumberAndDate%.exe"
    CALL signtool sign /a /tr http://timestamp.globalsign.com/tsa/r6advanced1 /td SHA256 /fd SHA256 "%buildsPath%\VTCPLUS_Win10_B2C_Setup_%buildVersion%%buildNumberAndDate%.exe"
)
REM baoch cococ fbreg fbscl ggdpl ggreg koccc kolll oohhh tikok vtcme
for %%x in (baoch cococ fbreg fbscl ggdpl ggreg koccc kolll oohhh tikok vtcme) do (
    if not exist "%buildsPath%\VTCPLUS_Win10_%%x_Setup_%buildVersion%%buildNumberAndDate%.exe" (
        CALL:ECHORED "%buildsPath%\VTCPLUS_Win10_%%x_Setup_%buildVersion%%buildNumberAndDate%.exe not existing"
    ) else (
        CALL:ECHORED "sign %buildsPath%\VTCPLUS_Win10_%%x_Setup_%buildVersion%%buildNumberAndDate%.exe"
        CALL signtool sign /a /tr http://timestamp.globalsign.com/tsa/r6advanced1 /td SHA256 /fd SHA256 "%buildsPath%\VTCPLUS_Win10_%%x_Setup_%buildVersion%%buildNumberAndDate%.exe"
    )
)

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
goto:eof