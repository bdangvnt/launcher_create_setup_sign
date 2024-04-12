REM BuildSourcePath: Biến trong InnoSetup Đường dẫn chứa file TruyKichPC.exe. Ví dụ .\Builds\Win7\truykichpc_cc1
REM buildPath: Biến local của bat, đường dẫn thư mục chứa các thư mục (Win7 và Win10) bên trong chứa file TruyKichPC.exe. Ví dụ .\Builds\; đường dẫn tới thư mục gốc em gửi
REM rsBPB: Biến local của bat, đường dẫn tới các thư mục chứa thông tin configs của inno
REM outputDirectory: Biến local của bat, đường dẫn chứa các file setup sau khi inno build xong.
REM CHÚ Ý: Có thể dùng đường dẫn tương đối thay vì tuyệt đối.
@echo off
cls
CALL set buildPath=D:\DEV\VTC\TTPM\VTCPlus\vtc-esport-client\builds_test
CALL set rsBPB=D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\
CALL set outputDirectory=D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\inno\setup-output-files-bt2\
CALL set buildVersion="1.0.0.23"
CALL set buildNumberAndDate="b2323042024p"
for %%w in (Win10) do (
	CALL:ECHORED %%w
	if not exist "D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\inno\setup-output-files-bt2\BattleTeams2_%%w_Setup.exe" (
		CALL iscc .\VTCPlus_Setup.iss /DBuildSourcePath=%buildPath%\%%w\truykichpc /DoutputDirectory=%outputDirectory% /DOutputSetupFilename=BattleTeams2_%%w_Setup /DrsBP=%rsBPB% /DeventTypePrefix=VTCPLUS_%%w_B2C_%buildVersion%%w%buildNumberAndDate%
	)
	REM cc1 cc2 cc3 chimsedinang ckg duo duongdh fb1 fb2 fb3 fus gamehome gamingx gcp gctruykichpc gg1 gg2 gg3 hubservices kingzone mixed other rip113 spartacus viking waystation test
	for %%x in (hubservices gcp fus kingzone other ckg chimsedinang rip113 cc1 cc2 cc3 fb1 fb2 fb3 gg1 gg2 gg3) do (
		if not exist "D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\inno\setup-output-files-bt2\BattleTeams2_%%w_%%x_Setup.exe" (
			CALL:ECHORED %%x
			CALL del %outputDirectory%BattleTeams2_%%w_%%x_Setup /F /Q
			CALL iscc .\VTCPlus_Setup.iss /DBuildSourcePath=%buildPath%\%%w\truykichpc_%%x /DoutputDirectory=%outputDirectory% /DOutputSetupFilename=BattleTeams2_%%w_%%x_Setup /DrsBP=%rsBPB% /DeventTypePrefix=VTCPLUS_%%w_%%x_%buildVersion%%w%buildNumberAndDate%
		)
	)
)

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
goto:eof