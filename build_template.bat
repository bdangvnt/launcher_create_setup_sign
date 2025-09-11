@echo off
cls

CALL set oSVer=Win10
CALL set savePathPre=.\builds_test\
CALL set savePathSuf=\au2pc
CALL set savePathDebugInfo=\debug-info
CALL set basePath=D:\VTC\gitlab\PC_Launcher\launcher_base\

CALL flutter build windows -t .\lib\mains\main_alpha.dart --obfuscate --split-debug-info=%savePathPre%%oSVer%%savePathDebugInfo%%savePathSuf%\debug-info
CALL xcopy .\build\windows\runner\Release\ %savePathPre%%oSVer%%savePathSuf% /E /H /C /I
CALL xcopy %basePath%Universal\update_vcruntime\ %savePathPre%%oSVer%%savePathSuf% /E /H /C /I
CALL xcopy %basePath%LIVE\TruyKich\WD\truykichpc\ %savePathPre%%oSVer%%savePathSuf% /E /H /C /I
        REM cc1 cc2 cc3 chimsedinang ckg duo duongdh fb1 fb2 fb3 fus gamehome gamingx gcp gctruykichpc gg1 gg2 gg3 hubservices kingzone other rip113 spartacus viking waystation mixed
for %%x in (cc1 cc2 cc3 chimsedinang ckg duo duongdh fb1 fb2 fb3 fus gamehome gamingx gcp gctruykichpc gg1 gg2 gg3 hubservices kingzone other rip113 spartacus viking waystation mixed) do (
    CALL del %savePathPre%%oSVer%%savePathSuf%_%%x /F /Q
    CALL mkdir %savePathPre%%oSVer%%savePathSuf%_%%x
    CALL flutter build windows -t .\lib\mains\main_prod_%%x.dart --obfuscate --split-debug-info=%savePathPre%%oSVer%%savePathDebugInfo%%savePathSuf%_%%x
    CALL xcopy .\build\windows\runner\Release\ %savePathPre%%oSVer%%savePathSuf%_%%x /E /H /C /I
    CALL xcopy %basePath%Universal\update_vcruntime\ %savePathPre%%oSVer%%savePathSuf%_%%x /E /H /C /I
    CALL xcopy %basePath%LIVE\TruyKich\WD\truykichpc_%%x\ %savePathPre%%oSVer%%savePathSuf%_%%x /E /H /C /I
)