REM BuildSourcePath: Biến trong InnoSetup Đường dẫn chứa file TruyKichPC.exe. Ví dụ .\Builds\Win7\truykichpc_cc1
REM buildPath: Biến local của bat, đường dẫn thư mục chứa các thư mục (Win7 và Win10) bên trong chứa file TruyKichPC.exe. Ví dụ .\Builds\; đường dẫn tới thư mục gốc em gửi
REM rsBPB: Biến local của bat, đường dẫn tới các thư mục chứa thông tin configs của inno
REM outputDirectory: Biến local của bat, đường dẫn chứa các file setup sau khi inno build xong.
REM CHÚ Ý: Có thể dùng đường dẫn tương đối thay vì tuyệt đối.
@echo off
cls
CALL set buildPath=D:\VTC\gitlab\PC_Launcher\vtc-esport-client\builds_test
CALL set rsBPB=D:\VTC\gitlab\PC_Launcher\launcher_create_setup_sign\
CALL set outputDirectory=D:\VTC\gitlab\PC_Launcher\launcher_create_setup_sign\inno\setup-output-files\
CALL set buildVersion="1.0.0.14"
CALL set buildNumberAndDate="b1426102023p"
for %%w in (Win7 Win10) do (
	CALL:ECHORED %%w
	if not exist "D:\VTC\gitlab\PC_Launcher\launcher_create_setup_sign\inno\setup-output-files\TruyKichPC_%%w_Setup.exe" (
		CALL iscc .\VTCPlus_Setup.iss /DBuildSourcePath=%buildPath%\%%w\truykichpc /DoutputDirectory=%outputDirectory% /DOutputSetupFilename=TruyKichPC_%%w_Setup /DrsBP=%rsBPB% /DeventTypePrefix=VTCPLUS_%%w_B2C_%buildVersion%%w%buildNumberAndDate%
	)
	REM cc1 cc2 cc3 chimsedinang ckg duo duongdh fb1 fb2 fb3 fus gamehome gamingx gcp gctruykichpc gg1 gg2 gg3 hubservices kingzone mixed other rip113 spartacus viking waystation test
	for %%x in (cc1 cc2 cc3 chimsedinang ckg duo duongdh fb1 fb2 fb3 fus gamehome gamingx gcp gctruykichpc gg1 gg2 gg3 hubservices kingzone mixed other rip113 spartacus viking waystation test) do (
		if not exist "D:\VTC\gitlab\PC_Launcher\launcher_create_setup_sign\inno\setup-output-files\TruyKichPC_%%w_%%x_Setup.exe" (
			CALL:ECHORED %%x
			CALL del %outputDirectory%TruyKichPC_%%w_%%x_Setup /F /Q
			CALL iscc .\VTCPlus_Setup.iss /DBuildSourcePath=%buildPath%\%%w\truykichpc_%%x /DoutputDirectory=%outputDirectory% /DOutputSetupFilename=TruyKichPC_%%w_%%x_Setup /DrsBP=%rsBPB% /DeventTypePrefix=VTCPLUS_%%w_%%x_%buildVersion%%w%buildNumberAndDate%
		)
	)
)

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
goto:eof