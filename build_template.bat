@echo off
cls

cd /d D:\DEV\VTC\TTPM\VTCPlus\vtc-esport-client

CALL set oSVer=Win10
CALL set savePathPre=.\builds_test\
CALL set savePathSuf=\tngh
CALL set savePathDebugInfo=\debug-info
CALL set basePath=D:\DEV\VTC\TTPM\VTCPlus\launcher_res_base\

CALL flutter build windows -t .\lib\mains\main_alpha.dart --obfuscate --split-debug-info=%savePathPre%%oSVer%%savePathDebugInfo%%savePathSuf%\debug-info
CALL xcopy .\build\windows\x64\runner\Release\ %savePathPre%%oSVer%%savePathSuf% /E /H /C /I
CALL xcopy %basePath%Universal\update_vcruntime\ %savePathPre%%oSVer%%savePathSuf% /E /H /C /I
REM CALL xcopy %basePath%LIVE\TruyKich\WD\truykichpc\ %savePathPre%%oSVer%%savePathSuf% /E /H /C /I
        REM fbppe01 fbppe02 fbppe03 fbppe04 fbppe05 fbppe06 fbppe07 fbcvs01 fbcvs02 fbcvs03 fbcvs04 fbcvs05 fbcvs06 fbcvs07 fbcvs08 fbcvs09 fbcvs10 fbcvs11 fbcvs12 fbcvs13 fbcvs14 fbcvs15 gg01 gg02 gg03 gg04 gg05 gg06 gg07 gg08 gg09 gg10 gg11 gg12 gg13
for %%x in (fbppe01 fbppe02 fbppe03 fbppe04 fbppe05 fbppe06 fbppe07 fbcvs01 fbcvs02 fbcvs03 fbcvs04 fbcvs05 fbcvs06 fbcvs07 fbcvs08 fbcvs09 fbcvs10 fbcvs11 fbcvs12 fbcvs13 fbcvs14 fbcvs15 gg01 gg02 gg03 gg04 gg05 gg06 gg07 gg08 gg09 gg10 gg11 gg12 gg13) do (
    CALL del %savePathPre%%oSVer%%savePathSuf%_%%x /F /Q
    CALL mkdir %savePathPre%%oSVer%%savePathSuf%_%%x
    CALL flutter build windows -t .\lib\mains\main_alpha_%%x.dart --obfuscate --split-debug-info=%savePathPre%%oSVer%%savePathDebugInfo%%savePathSuf%_%%x
    CALL xcopy .\build\windows\x64\runner\Release\ %savePathPre%%oSVer%%savePathSuf%_%%x /E /H /C /I
    CALL xcopy %basePath%Universal\update_vcruntime\ %savePathPre%%oSVer%%savePathSuf%_%%x /E /H /C /I
REM    CALL xcopy %basePath%LIVE\TNGH\WD\tieungaovtc_%%x\ %savePathPre%%oSVer%%savePathSuf%_%%x /E /H /C /I
)

REM xóa các file *.lib và *.exp chỉ trong thư mục builds_test và các thư mục con
del /s /q "builds_test\*.lib"
del /s /q "builds_test\*.exp"