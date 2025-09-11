REM BuildSourcePath: Biến trong InnoSetup Đường dẫn chứa file TruyKichPC.exe. Ví dụ .\Builds\Win7\truykichpc_cc1
REM buildPath: Biến local của bat, đường dẫn thư mục chứa các thư mục (Win7 và Win10) bên trong chứa file TruyKichPC.exe. Ví dụ .\Builds\; đường dẫn tới thư mục gốc em gửi
REM rsBPB: Biến local của bat, đường dẫn tới các thư mục chứa thông tin configs của inno
REM outputDirectory: Biến local của bat, đường dẫn chứa các file setup sau khi inno build xong.
REM CHÚ Ý: Có thể dùng đường dẫn tương đối thay vì tuyệt đối.
@echo off
cls
REM CALL set buildPath=D:\Flutter\PC_Launcher\vtc-esport-client\builds_test
CALL set buildPath=D:\Games\VTCPlus
CALL set rsBPB=D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\
CALL set outputDirectory=D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\inno\setup-output-files-tngh\
CALL set buildVersion="1.0.0.45"
CALL set buildNumberAndDate="b4012092025p"

if not exist "D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\inno\setup-output-files-tngh\Tieu Ngao VTC Setup.exe" (
	CALL iscc .\TNGH_Setup.iss /DBuildSourcePath=%buildPath% /DoutputDirectory=%outputDirectory% /DOutputSetupFilename=Tieu Ngao VTC Setup /DrsBP=%rsBPB% /DeventTypePrefix=TNGH_B2C_%buildVersion%%w%buildNumberAndDate%
)
REM fbppe01 fbppe02 fbppe03 fbppe04 fbppe05 fbppe06 fbppe07 fbcvs01 fbcvs02 fbcvs03 fbcvs04 fbcvs05 fbcvs06 fbcvs07 fbcvs08 fbcvs09 fbcvs10 fbcvs11 fbcvs12 fbcvs13 fbcvs14 fbcvs15 gg01 gg02 gg03 gg04 gg05 gg06 gg07 gg08 gg09 gg10 gg11 gg12 gg13
for %%x in (fbppe01 fbppe02 fbppe03 fbppe04 fbppe05 fbppe06 fbppe07 fbcvs01 fbcvs02 fbcvs03 fbcvs04 fbcvs05 fbcvs06 fbcvs07 fbcvs08 fbcvs09 fbcvs10 fbcvs11 fbcvs12 fbcvs13 fbcvs14 fbcvs15 gg01 gg02 gg03 gg04 gg05 gg06 gg07 gg08 gg09 gg10 gg11 gg12 gg13) do (
	if not exist "D:\DEV\VTC\TTPM\VTCPlus\launcher_create_setup_sign\inno\setup-output-files\Tieu Ngao VTC %%w %%x Setup.exe" (
		CALL:ECHORED %%x
		CALL del %outputDirectory%Tieu Ngao VTC %%w %%x Setup /F /Q
		CALL iscc .\TNGH_Setup.iss /DBuildSourcePath=%buildPath%\%%w\tngh_%%x /DoutputDirectory=%outputDirectory% /DOutputSetupFilename=Tieu Ngao VTC %%w %%x Setup /DrsBP=%rsBPB% /DeventTypePrefix=TNGH_%%w_%%x_%buildVersion%%w%buildNumberAndDate%
	)
)

:ECHORED
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red %1
goto:eof