REM BuildSourcePath: Biến trong InnoSetup Đường dẫn chứa file TruyKichPC.exe. Ví dụ .\Builds\Win7\truykichpc_cc1
REM buildPath: Biến local của bat, đường dẫn thư mục chứa các thư mục (Win7 và Win10) bên trong chứa file TruyKichPC.exe. Ví dụ .\Builds\; đường dẫn tới thư mục gốc em gửi
REM rsBPB: Biến local của bat, đường dẫn tới các thư mục chứa thông tin configs của inno
REM outputDirectory: Biến local của bat, đường dẫn chứa các file setup sau khi inno build xong.
REM CHÚ Ý: Có thể dùng đường dẫn tương đối thay vì tuyệt đối.
@echo off
cls
REM CALL set buildPath=D:\Flutter\PC_Launcher\vtc-esport-client\builds_test
CALL set buildPath=D:\Games\Ragnarok\VTCPlus_RO_Live\VTCPlus
CALL set rsBPB=D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\
CALL set outputDirectory=D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\inno\inno-output\Ragnarok\
CALL set buildVersion="1.0.0.40"
CALL set buildNumberAndDate="b40180112024p"

if not exist "D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\inno\inno-output\Ragnarok\VTCPlus_RO_Setup.exe" (
	CALL iscc .\VTCPlus_Setup.iss /DBuildSourcePath=%buildPath% /DoutputDirectory=%outputDirectory% /DOutputSetupFilename=VTCPlus_RO_Setup /DrsBP=%rsBPB% /DeventTypePrefix=VTCPLUS_B2C_%buildVersion%%w%buildNumberAndDate%_RO
)
:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
goto:eof