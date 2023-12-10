REM BuildSourcePath: Biến trong InnoSetup Đường dẫn chứa file VTCPlus.exe. Ví dụ .\Builds\Win7\AU2PC_cc1
REM buildPath: Biến local của bat, đường dẫn thư mục chứa các thư mục (Win7 và Win10) bên trong chứa file VTCPlus.exe. Ví dụ .\Builds\; đường dẫn tới thư mục gốc em gửi
REM rsBPB: Biến local của bat, đường dẫn tới các thư mục chứa thông tin configs của inno
REM outputDirectory: Biến local của bat, đường dẫn chứa các file setup sau khi inno build xong.
REM CHÚ Ý: Có thể dùng đường dẫn tương đối thay vì tuyệt đối.
@echo off
cls
CALL set buildPath=..\..\..\..\vtc-esport-client\lib\mains\prod\builds_test
CALL set rsBPB=..\..\..\..\launcher_create_setup_sign\
CALL set outputDirectory=..\..\..\..\launcher_create_setup_sign\inno\au2pc-setup-output-files-prod\
CALL set buildVersion=1.0.0.22
CALL set buildNumberAndDate=b2208122023p
for %%w in (Win10) do (
	CALL:ECHORED %%w
	if not exist "%outputDirectory%VTCPLUS_%%w_B2C_Setup_%buildVersion%%buildNumberAndDate%.exe" (
		CALL:ECHORED VTCPLUS_%%w_B2C_Setup_%buildVersion%%buildNumberAndDate%.exe
		CALL:ECHORED EVENT_AU2PC_%%w_B2C_%buildVersion%%buildNumberAndDate%
		REM CALL iscc .\VTCPlus_Setup_Prod.iss /DBuildSourcePath=%buildPath%\%%w\au2pc /DoutputDirectory=%outputDirectory% /DOutputSetupFilename=AU2PC_%%w_Setup /DrsBP=%rsBPB% /DeventTypePrefix=VTCPLUS_%%w_%buildVersion%_B2C_%buildNumberAndDate%
		CALL iscc .\VTCPlus_Setup_Prod.iss /DBuildSourcePath=%buildPath%\%%w\au2pc /DoutputDirectory=%outputDirectory% /DOutputSetupFilename=VTCPLUS_%%w_B2C_Setup_%buildVersion%%buildNumberAndDate% /DrsBP=%rsBPB% /DeventTypePrefix=AU2PC_%%w_B2C_%buildVersion%%buildNumberAndDate%
	)
	REM baoch cococ fbreg fbscl ggdpl ggreg koccc kolll oohhh tikok vtcme
	for %%x in (baoch cococ fbreg fbscl ggdpl ggreg koccc kolll oohhh tikok vtcme) do (
		if not exist "%outputDirectory%VTCPLUS_%%w_%%x_Setup_%buildVersion%%buildNumberAndDate%.exe" (
			CALL:ECHORED %%x
			CALL:ECHORED CREATE_VTCPLUS_%%w_%%x_Setup_%buildVersion%%buildNumberAndDate%.exe
			CALL:ECHORED EVENT_AU2PC_%%w_%%x_%buildVersion%%buildNumberAndDate%
			CALL del %outputDirectory%VTCPLUS_%%w_%%x_Setup_%buildVersion%%buildNumberAndDate%.exe /F /Q
			CALL iscc .\VTCPlus_Setup_Prod.iss /DBuildSourcePath=%buildPath%\%%w\AU2PC_%%x /DoutputDirectory=%outputDirectory% /DOutputSetupFilename=VTCPLUS_%%w_%%x_Setup_%buildVersion%%buildNumberAndDate% /DrsBP=%rsBPB% /DeventTypePrefix=AU2PC_%%w_%%x_%buildVersion%%buildNumberAndDate%
		)
	)
)

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
goto:eof