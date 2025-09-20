REM BuildSourcePath: Bien trong InnoSetup. Duong dan chua file TieuNgaoVTC.exe. Vi du .\Builds\tieungaotngh_fbcvs01
REM rsBPB: Bien local cua bat, duong dan toi cac thu muc chua thong tin configs cua Inno.
REM outputDirectory: Bien local cua bat, duong dan chua cac file setup sau khi Inno build xong.
REM CHU Y: Co the dung duong dan tuonng doi thay vi tuyet doi.
@echo off
REM cls
CALL set buildPath=D:\DEV\VTC\TTPM\VTCPlus\vtc-esport-client\builds_test
CALL set rsBPB=D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\
CALL set outputDirectory=D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\inno\setup-output-files-tngh\
CALL set buildVersion=1.0.0.45
CALL set WinVer=10
CALL set buildNumberAndDate=b4515092025p

for %%w in (Win10) do (
    CALL:ECHORED "%outputDirectory%TieuNgaoGiangHo_VTC_Setup.exe"
    if not exist "%outputDirectory%TieuNgaoGiangHo_VTC_Setup.exe" (
        REM CALL:ECHORED TieuNgaoGiangHo_VTC_Setup_%%w_%buildVersion%_B2C_%buildNumberAndDate%
        CALL:ECHORED TNGH_B2C_%buildVersion%%w%buildNumberAndDate%
        CALL iscc .\TNGH_Setup.iss /DBuildSourcePath=%buildPath%\%%w\tngh /DoutputDirectory=%outputDirectory% /DOutputSetupFilename=TieuNgaoGiangHo_VTC_Setup /DrsBP=%rsBPB% /DeventTypePrefix=TNGH_B2C_%buildVersion%%w%buildNumberAndDate%
    ) else (
        CALL:ECHORED "%outputDirectory%TieuNgaoGiangHo_VTC_Setup.exe File existing"
    )

    REM fbppe01 fbppe02 fbppe03 fbppe04 fbppe05 fbppe06 fbppe07 fbcvs01 fbcvs02 fbcvs03 fbcvs04 fbcvs05 fbcvs06 fbcvs07 fbcvs08 fbcvs09 fbcvs10 fbcvs11 fbcvs12 fbcvs13 fbcvs14 fbcvs15 gg01 gg02 gg03 gg04 gg05 gg06 gg07 gg08 gg09 gg10 gg11 gg12 gg13
    for %%x in (fbppe01) do (
        if not exist "%outputDirectory%TieuNgaoGiangHo_VTC_Setup_%%x.exe" (
            REM CALL:ECHORED TieuNgaoGiangHo_VTC_Setup_%%w_%buildVersion%_%%x_%buildNumberAndDate%
            CALL:ECHORED TNGH_%%x_%buildVersion%%w%buildNumberAndDate%
            CALL iscc .\TNGH_Setup.iss /DBuildSourcePath=%buildPath%\%%w\tngh_%%x /DoutputDirectory=%outputDirectory% /DOutputSetupFilename=TieuNgaoGiangHo_VTC_Setup_%%x /DrsBP=%rsBPB% /DeventTypePrefix=TNGH_%%x_%buildVersion%%w%buildNumberAndDate%
        ) else (
            CALL:ECHORED "%outputDirectory%TieuNgaoGiangHo_VTC_Setup_%%x.exe File existing"
    	)
    )
)

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
goto:eof