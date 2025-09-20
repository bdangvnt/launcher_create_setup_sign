; *** Inno Setup version 5.1.11+ English messages ***
;
; To download user-contributed translations of this file, go to:
;   http://www.jrsoftware.org/files/istrans/
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).

[LangOptions]
; The following three entries are very important. Be sure to read and 
; understand the '[LangOptions] section' topic in the help file.
LanguageName=Vietnamese
LanguageID=1066
LanguageCodePage=1258
; If the language you are translating to requires special font faces or
; sizes, uncomment any of the following entries and change them accordingly.
DialogFontName=Arial
DialogFontSize=8
WelcomeFontName=Arial
WelcomeFontSize=14
TitleFontName=Arial
TitleFontSize=20
CopyrightFontName=Arial
CopyrightFontSize=8
[Messages]

; *** Application titles
SetupAppTitle=Setup
SetupWindowTitle=Setup - %1
UninstallAppTitle=Uninstall
UninstallAppFullTitle=Uninstall - %1

; *** Misc. common
InformationTitle=Th�ng tin 
ConfirmTitle=Xa�c nh��n
ErrorTitle=L��i

; *** SetupLdr messages
SetupLdrStartupMessage=Ch��ng tri�nh se� ca�i ���t %1. Ba�n co� mu��n ti��p tu�c kh�ng?
LdrCannotCreateTemp=Kh�ng th�� ta�o temporary file. Ca�i ���t hu�y bo�
LdrCannotExecTemp=Kh�ng th�� th�c thi t��p tin trong th� mu�c Temporary. Ca�i ���t hu�y bo�

; *** Startup error messages
LastErrorMessage=%1.%n%nError %2: %3
SetupFileMissing=T��p tin %1 kh�ng ti�m th��y trong th� mu�c ca�i ���t. Ha�y s��a l��i na�y, ho��c ta�i la�i ba�n ca�i ���t.
SetupFileCorrupt=T��p tin ca�i ���t bi� l��i. Ha�y ta�i la�i t��p tin ca�i ���t m��i.
SetupFileCorruptOrWrongVer=T��p tin ca�i ���t bi� l��i, ho��c kh�ng t��ng thi�ch v��i phi�n ba�n ca�i ���t. Ha�y s��a l��i na�y, ho��c l��y m��t t��p tin ca�i ���t m��i.
NotOnThisPlatform=Ch��ng tri�nh se� kh�ng cha�y tr�n %1.
OnlyOnThisPlatform=Ch��ng tri�nh se� cha�y tr�n %1.
OnlyOnTheseArchitectures=Ch��ng tri�nh ����c thi��t k�� ��� cha�y tr�n Windows v��i ca�c chip sau:%n%n%1
MissingWOW64APIs=Phi�n ba�n hi��n ta�i cu�a Windows kh�ng ch��a ca�c ha�m 64bit ��� cha�y b�� ca�i ���t na�y. ��� s��a l��i na�y, ha�y cha�y b�� ca�i %1.
WinVersionTooLowError=Ch��ng tri�nh c��n phi�n ba�n %1 %2 ho��c cao h�n.
WinVersionTooHighError=Ch��ng tri�nh kh�ng th�� ca�i ���t tr�n %1 %2 ho��c cao h�n.
AdminPrivilegesRequired=Ba�n pha�i ��ng nh��p va�o ta�i khoa�n administrator ��� ca�i ���t ch��ng tri�nh.
PowerUserPrivilegesRequired=Ba�n pha�i ��ng nh��p b��ng ta�i khoa�n administrator ho��c la� tha�nh vi�n cu�a nho�m Power Users ��� ca�i ���t ch��ng tri�nh.
SetupAppRunningError=Ca�c ch��ng tri�nh %1 �ang cha�y.%n%n ha�y �o�ng la�i b�y gi��, Nh��n OK ��� Ti��p theo, ho��c Cancel ��� thoa�t.
UninstallAppRunningError=Ca�c ch��ng tri�nh sau %1 �ang cha�y.%n%nha�y �o�ng la�i b�y gi��, Nh��n OK ��� Ti��p theo, ho��c Cancel ��� thoa�t.

; *** Misc. errors
ErrorCreatingDir=Ch��ng tri�nh kh�ng th�� ta�o th� mu�c: "%1"
ErrorTooManyFilesInDir=Kh�ng th�� ta�o t��p tin trong th� mu�c "%1" vi� no� ch��a qua� nhi��u t��p tin

; *** Setup common messages
ExitSetupTitle=Thoa�t
ExitSetupMessage=N��u ba�n thoa�t b�y gi��, ch��ng tri�nh se� kh�ng ����c ca�i ���t.%n%nBa�n co� th�� Ca�i ���t ch��ng tri�nh sau.%n%nThoa�t ti��n tri�nh ca�i ���t?
AboutSetupMenuItem=&Gi��i thi��u...
AboutSetupTitle=Gi��i thi��u
AboutSetupMessage=%1 phi�n ba�n %2%n%3%n%n%1 trang chu�:%n%4
AboutSetupNote=VTC Game
TranslatorNote=Di�ch b��i VTC Game

; *** Buttons
ButtonBack=< &Quay la�i
ButtonNext=&Ti��p theo >
ButtonInstall=&Ca�i ���t
ButtonOK=Xa�c nh��n
ButtonCancel=Hu�y bo�
ButtonYes=&���ng y�
ButtonYesToAll=���ng y� &t��t ca�
ButtonNo=&Kh�ng ���ng y�
ButtonNoToAll=Kh�ng ���ng y� &t��t ca�
ButtonFinish=&K��t thu�c
ButtonBrowse=&Cho�n...
ButtonWizardBrowse=C&ho�n...
ButtonNewFolder=&Ta�o th� mu�c m��i

; *** "Select Language" dialog messages
SelectLanguageTitle=Chon ngon ngu.
SelectLanguageLabel=Cho�n ng�n ng�� s�� du�ng trong su��t qua� tri�nh ca�i ���t

; *** Common wizard text
ClickNext=Nh��n Ti��p theo ��� ti��p tu�c ca�i ���t, Nh��n Hu�y bo� ��� k��t thu�c ti��n tri�nh ca�i ���t.
BeveledLabel=
BrowseDialogTitle=Cho�n th� mu�c
BrowseDialogLabel=Cho�n th� mu�c trong danh sa�ch d���i ��y va� nh��n Xa�c nh��n
NewFolderName=Th� mu�c m��i

; *** "Welcome" wizard page
WelcomeLabel1=Ti��n tri�nh ca�i ���t [name].
WelcomeLabel2=Ti��n tri�nh se� ca�i ���t [name/ver] l�n ma�y ti�nh cu�a ba�n.%n%nXin khuy��n ca�o ba�n, n�n t��t ca�c ch��ng tri�nh kha�c tr���c khi ca�i ���t.

; *** "Password" wizard page
WizardPassword=M��t kh��u
PasswordLabel1=Ti��n tri�nh ca�i ���t ����c ba�o v�� b��i m��t kh��u.
PasswordLabel3=Ha�y nh��p m��t kh��u, nh��n Ti��p theo ��� ca�i ���t ti��p. M��t kh��u ph�n bi��t ch�� hoa ch�� th���ng.
PasswordEditLabel=&M��t kh��u:
IncorrectPassword=M��t kh��u ba�n nh��p kh�ng �u�ng. ha�y th�� la�i.

; *** "License Agreement" wizard page
WizardLicense=Quy �i�nh
LicenseLabel=Ha�y �o�c ky� nh��ng quy �i�nh sau ��y tr���c khi ti��p tu�c.
LicenseLabel3=Ha�y �o�c ky� nh��ng quy �i�nh sau. Ba�n pha�i ���ng y� v��i nh��ng quy �i�nh na�y ��� ti��p tu�c ca�i ���t ch��ng tri�nh.
LicenseAccepted=T&�i ���ng y� v��i nh��ng quy �i�nh tr�n
LicenseNotAccepted=T�i &kh�ng ���ng y� v��i nh��ng quy �i�nh tr�n

; *** "Information" wizard pages
WizardInfoBefore=Th�ng tin
InfoBeforeLabel=Ha�y �o�c nh��ng th�ng tin sau tr���c khi ti��p tu�c ca�i ���t ch��ng tri�nh.
InfoBeforeClickLabel=Khi ba�n �a� s��n sa�ng ca�i ���t, nh��n nu�t Ti��p theo.
WizardInfoAfter=Th�ng tin
InfoAfterLabel=Ha�y �o�c nh��ng th�ng tin sau tr���c khi ti��p tu�c ca�i ���t ch��ng tri�nh.
InfoAfterClickLabel=Khi ba�n �a� s��n sa�ng ca�i ���t, nh��n nu�t Ti��p theo.

; *** "User Information" wizard page
WizardUserInfo=Th�ng tin ng���i du�ng
UserInfoDesc=Ha�y nh��p th�ng tin cu�a ba�n.
UserInfoName=&Ho� t�n:
UserInfoOrg=&��n vi�:
UserInfoSerial=&Ma� s�� ca�i ���t:
UserInfoNameRequired=Ba�n pha�i nh��p ho� t�n.

; *** "Select Destination Location" wizard page
WizardSelectDir=Th� mu�c ca�i ���t
SelectDirDesc=Ba�n �i�nh ca�i [name] va�o th� mu�c na�o?
SelectDirLabel3=Ti��n tri�nh se� ca�i ���t [name] va�o th� mu�c sau.
SelectDirBrowseLabel=��� ti��p tu�c ca�i ���t , nh��n nu�t Ti��p theo. N��u ba�n mu��n cho�n th� mu�c kha�c nh��n nu�t Cho�n....
DiskSpaceMBLabel=��� �i�a pha�i co�n tr��ng i�t nh��t 30 GB.
ToUNCPathname=Ch��ng tri�nh kh�ng th�� ca�i ���t ����ng d��n ma�ng. N��u ba�n mu��n ca�i ���t tr�n ma�ng ba�n pha�i Map network.
InvalidPath=Ba�n pha�i nh��p ���y �u� ����ng d��n bao g��m ca� ch�� ca�i �� �i�a; Vi� du�:%n%nC:\APP%n%n ho��c m��t ����ng d��n ma�ng:%n%n\\server\share
InvalidDrive=�� �i�a ho��c ����ng ���n ma�ng ba�n cho�n kh�ng t��n ta�i ho��c kh�ng truy c��p ����c. ha�y cho�n ����ng d��n kha�c.
DiskSpaceWarningTitle=Kh�ng �u� �� tr��ng ��� ca�i ���t
DiskSpaceWarning=Ch��ng tri�nh c��n i�t nh��t %1 KB dung l���ng tr��ng ��� ca�i ���t, nh�ng �� �i�a cho�n chi� co� %2 KB .%n%nBa�n co� mu��n ti��p tu�c ca�i ���t kh�ng?
DirNameTooLong=Th��c mu�c ho��c ����ng d��n qua� da�i.
InvalidDirName=T�n th� mu�c kh�ng �u�ng.
BadDirName32=T�n th� mu�c kh�ng ����c ch��a ca�c ky� t��:%n%n%1
DirExistsTitle=Th� mu�c �a� t��n ta�i
DirExists=Th� mu�c:%n%n%1%n%n �a� t��n ta�i. Ba�n co� mu��n ca�i ���t va�o th� mu�c na�y kh�ng?
DirDoesntExistTitle=Th� mu�c kh�ng t��n ta�i
DirDoesntExist=Th� mu�c:%n%n%1%n%n kh�ng t��n ta�i. Ba�n co� mu��n ta�o th� mu�c na�y kh�ng?

; *** "Select Components" wizard page
WizardSelectComponents=Ti�nh n�ng ch��ng tri�nh
SelectComponentsDesc=Nh��ng ti�nh n�ng na�o se� ����c ca�i ���t?
SelectComponentsLabel2=Cho�n nh��ng ti�nh n�ng ba�n mu��n ca�i ���t; Bo� cho�n nh��ng ti�nh n�ng ba�n kh�ng mu��n ca�i ���t. Nh��n Ti��p theo khi ba�n �a� s��n sa�ng ca�i ���t.
FullInstallation=Ca�i ���t ���y �u�
; if possible don't translate 'Compact' as 'Minimal' (I mean 'Minimal' in your language)
CompactInstallation=Ca�i ���t nhanh
CustomInstallation=T�� l��a cho�n ca�i ���t
NoUninstallWarningTitle=Ti�nh n�ng �a� co�
NoUninstallWarning=Ti��n tri�nh ca�i ���t th��y ca�c ti�nh n�ng sau �a� ����c ca�i ���t l�n ma�y ti�nh cu�a ba�n:%n%n%1%n%n Bo� cho�n ca�c ti�nh n�ng n��u ba�n mu��n g�� bo�.%n%n Ba�n co� mu��n ti��p tu�c ca�i ���t kh�ng?
ComponentSize1=%1 KB
ComponentSize2=%1 MB
ComponentsDiskSpaceMBLabel=Nh��ng ti�nh n�ng l��a cho�n c��n i�t nh��t [mb] MB dung l���ng tr��ng.

; *** "Select Additional Tasks" wizard page
WizardSelectTasks=Thao ta�c b�� sung
SelectTasksDesc=C��n th�m nh��ng thao ta�c b�� sung na�o?
SelectTasksLabel2=Cho�n nh��ng thao ta�c trong qua� tri�nh ca�i ���t [name], nh��n nu�t Ti��p theo.

; *** "Select Start Menu Folder" wizard page
WizardSelectProgramGroup=Th��c ��n Start
SelectStartMenuFolderDesc=Ba�n mu��n ���t shortcuts ch��ng tri�nh �� ��u?
SelectStartMenuFolderLabel3=Ti��n tri�nh ca�i ���t se� ta�o shortcuts ch��ng tri�nh trong th��c ��n Start sau:
SelectStartMenuFolderBrowseLabel=��� ti��p tu�c, nh��n nu�t Ti��p theo. N��u ba�n mu��n cho�n th� mu�c kha�c thi� nh��n nu�t Cho�n.
MustEnterGroupName=Ba�n pha�i nh��p t�n th� mu�c.
GroupNameTooLong=T�n th� mu�c qua� da�i.
InvalidGroupName=T�n th� mu�c kh�ng �u�ng.
BadGroupName=T�n th� mu�c kh�ng ����c ch��a ca�c ky� t��:%n%n%1
NoProgramGroupCheck2=&Kh�ng ta�o th� mu�c �� th��c ��n Start.

; *** "Ready to Install" wizard page
WizardReady=S��n sa�ng ca�i ���t
ReadyLabel1=Ti��n tri�nh ca�i ���t �a� s��n sa�ng ca�i ���t [name] l�n ma�y ti�nh cu�a ba�n.
ReadyLabel2a=Nh��n nu�t Ca�i ���t ��� ca�i ���t ch��ng tri�nh , Ho��c nh��n nu�t Quay la�i ��� xem la�i ho��c thay ���i ca�c thi��t l��p cu�a ba�n.
ReadyLabel2b=Nh��n nu�t Ca�i ���t ��� ti��p tu�c ca�i ���t.
ReadyMemoUserInfo=Th�ng tin ng���i du�ng:
ReadyMemoDir=Th� mu�c ca�i ���t:
ReadyMemoType=Ph��ng th��c ca�i ���t:
ReadyMemoComponents=Ca�c ti�nh n�ng ca�i ���t:
ReadyMemoGroup=Th� mu�c �� th��c ��n Start:
ReadyMemoTasks=Thao ta�c b�� sung:

; *** "Preparing to Install" wizard page
WizardPreparing=Chu��n bi� ca�i ���t
PreparingDesc=Ti��n tri�nh �ang chu��n bi� ca�i ���t [name] l�n ma�y ti�nh cu�a ba�n.
PreviousInstallNotCompleted=Ti��n tri�nh ca�i ���t/g�� bo� cu�a ch��ng tri�nh tr���c ch�a k��t thu�c. Ba�n c��n pha�i kh��i ���ng la�i ma�y ti�nh ��� k��t thu�c ti��n tri�nh ca�i ���t.%n%nSau khi kh��i ���ng la�i ma�y ti�nh, cha�y ca�i ���t la�i ��� ca�i ���t [name].
CannotContinue=Ti��n tri�nh ca�i ���t kh�ng th�� ti��p tu�c. Nh��t nu�t Hu�y bo� ��� k��t thu�c.

; *** "Installing" wizard page
WizardInstalling=�ang ca�i ��t
InstallingLabel=Vui lo�ng ���i khi ti��n tri�nh �ang ca�i ���t [name] l�n ma�y ti�nh cu�a ba�n.

; *** "Setup Completed" wizard page
FinishedHeadingLabel=K��t thu�c ti��n tri�nh ca�i ���t [name].
FinishedLabelNoIcons=Ti��n tri�nh ca�i ���t [name] l�n ma�y ti�nh cu�a ba�n �a� k��t thu�c.
FinishedLabel=Ti��n tri�nh ca�i ���t [name] l�n ma�y ti�nh cu�a ba�n �a� k��t thu�c. Co� th�� cha�y ch��ng tri�nh b��ng ca�ch cho�n bi��u t���ng ca�i ���t..
ClickFinish=Nh��t nu�t K��t thu�c ��� k��t thu�c.
FinishedRestartLabel=��� k��t thu�c vi��c ca�i ��t [name], ba�n pha�i kh��i ���ng la�i ma�y ti�nh. Ba�n co� mu��n kh��i ���ng b�y gi�� kh�ng?
FinishedRestartMessage=��� k��t thu�c vi��c ca�i ��t [name], ba�n pha�i kh��i ���ng la�i ma�y ti�nh. Ba�n co� mu��n kh��i ���ng b�y gi�� kh�ng?
ShowReadmeCheck=T�i ���ng y� �o�c t��p tin Readme.
YesRadio=&���ng y�, kh��i ���ng ma�y ti�nh b�y gi��
NoRadio=&Kh�ng, T�i se� kh��i ���ng ma�y ti�nh sau
; used for example as 'Run MyProg.exe'
RunEntryExec=Cha�y %1
; used for example as 'View Readme.txt'
RunEntryShellExec=Xem %1

; *** "Setup Needs the Next Disk" stuff
ChangeDiskTitle=��a �i�a ti��p theo ��� ca�i ��t
SelectDiskLabel2=��a �i�a %1 va� nh��n nu�t Xa�c nh��n.%n%n N��u t��p tin trong �i�a na�y kh�ng th��y �� th� mu�c hi��n thi� d��i ��y. Nh��p �u�ng th� mu�c ho��c nh��n nu�t Cho�n ��� cho�n th� mu�c �u�ng.
PathLabel=&����ng d��n:
FileNotInDir2=T��p tin "%1" kh�ng ti�m th��y trong "%2". Ha�y ��a �u�ng �i�a ho��c cho�n th� mu�c kha�c.
SelectDirectoryLabel=Ha�y nh��p chi�nh xa�c n�i ch��a �i�a.

; *** Installation phase messages
SetupAborted=Ti��n tri�nh kh�ng th�� hoa�n tha�nh.%n%nHa�y s��a l��i va� cha�y Ca�i ���t la�i.
EntryAbortRetryIgnore=Nh��n nu�t Th�� la�i ��� th�� ca�i ���t la�i, Bo� qua ��� ti��p tu�c ca�i ���t, ho��c Hu�y bo� ��� k��t thu�c ca�i ���t.

; *** Installation status messages
StatusCreateDirs=�ang ta�o th� mu�c...
StatusExtractFiles=Gia�i ne�n t��p tin...
StatusCreateIcons=�ang ta�o shortcuts...
StatusCreateIniEntries=�ang ta�o t��p tin  INI ...
StatusCreateRegistryEntries=�ang ta�o tha�nh ph��n registry...
StatusRegisterFiles=�ang ��ng ky� t��p tin...
StatusSavingUninstall=L�u tr�� th�ng tin ��� g�� bo� ca�i ���t...
StatusRunProgram=�ang k��t thu�c ti��n tri�nh ca�i ���t...
StatusRollback=�ang roll back...

; *** Misc. errors
ErrorInternal2=Internal error: %1
ErrorFunctionFailedNoCode=%1 failed
ErrorFunctionFailed=%1 failed; code %2
ErrorFunctionFailedWithMessage=%1 failed; code %2.%n%3
ErrorExecutingProgram=Kh�ng th�� cha�y file:%n%1

; *** Registry errors
ErrorRegOpenKey=L��i m�� registry key:%n%1\%2
ErrorRegCreateKey=L��i ta�o registry key:%n%1\%2
ErrorRegWriteKey=L��i ghi registry key:%n%1\%2

; *** INI errors
ErrorIniEntry=L��i ta�o tha�nh ph��n trong t��p tin INI: "%1".

; *** File copying errors
FileAbortRetryIgnore=Nh��t Retry ��� th�� la�i, Ignore ��� bo� qua t��p tin na�y (kh�ng khuy��n khi�ch), ho��c Abort ��� hu�y bo� ca�i ���t.
FileAbortRetryIgnore2=Nh��t Retry ��� th�� la�i, Ignore ��� bo� qua t��p tin na�y (kh�ng khuy��n khi�ch), ho��c Abort ��� hu�y bo� ca�i ���t.
SourceIsCorrupted=Ca�c t��p tin ngu��n �a� bi� l��i
SourceDoesntExist=T��p tin ngu��n  "%1" kh�ng t��n ta�it
ExistingFileReadOnly=T��p tin t��n ta�i �� ch�� ��� chi� �o�c.%n%nNh��n nu�t Retry ��� g�� bo� thu��c ti�nh chi� �o�c va� th�� ca�i ���t la�i,  Ignore ��� bo� qua t��p tin na�y, ho��c Abort ��� hu�y bo� ca�i ���t.
ErrorReadingExistingDest=Co� l��i khi �o�c t��p tin �a� t��n ta�i:
FileExists=T��p tin �a� t��n ta�i.%n%nBa�n co� mu��n ghi �e� kh�ng?
ExistingFileNewer=�a� t��n ta�i t��p tin co� phi�n ba�n m��i h�n t��p tin �ang ca�i ���t. Ba�n n�n gi�� la�i t��p tin na�y.%n%nBa�n co� mu��n gi�� la�i t��p tin �a� t��n ta�i kh�ng?
ErrorChangingAttr=Co� l��i trong qua� tri�nh thay ���i thu��c ti�nh cu�a t��p tin t��n ta�i:
ErrorCreatingTemp=Co� l��i trong qua� tri�nh ta�o t��p tin trong th� mu�c:
ErrorReadingSource=Co� l��i trong qua� tri�nh �o�c ca�c t��p tin ngu��n:
ErrorCopying=Co� l��i trong qua� tri�nh sao che�p t��p tin:
ErrorReplacingExistingFile=Co� l��i trong qua� tri�nh ghi �e� t��p tin:
ErrorRestartReplace=Ghi �e� co� l��i:
ErrorRenamingTemp=Co� l��i trong qua� tri�nh ���i t�n t��p tin trong th� mu�c:
ErrorRegisterServer=Kh�ng th�� ��ng ky� DLL/OCX: %1
ErrorRegSvr32Failed=RegSvr32 l��i v��i ma� l��i %1
ErrorRegisterTypeLib=Kh�ng th�� ��ng ky� ki��u th� vi��n: %1

; *** Post-installation errors
ErrorOpeningReadme=Co� l��i trong qua� tri�nh m�� t��p tin README.
ErrorRestartingComputer=Ti��n tri�nh kh�ng th�� kh��i ���ng ma�y ti�nh. Ha�y kh��i ���ng b��ng tay.

; *** Uninstaller messages
UninstallNotFound=T��p tin "%1" kh�ng t��n ta�i. Kh�ng th�� g�� bo�.
UninstallOpenError=T��p tin "%1" kh�ng th�� m��. Kh�ng th�� g�� bo�
UninstallUnsupportedVer=T��p tin uninstall log "%1" kh�ng �u�ng �i�nh da�ng cu�a phi�n ba�n uninstaller. Kh�ng th�� g�� bo�
UninstallUnknownEntry=Kh�ng hi��u tha�nh ph��n (%1) trong t��p tin uninstall log
ConfirmUninstall=Ba�n co� mu��n g�� bo� %1 va� t��t ca� ca�c ti�nh n�ng cu�a ch��ng tri�nh?
UninstallOnlyOnWin64=Ti��n tri�nh g�� bo� chi� co� th�� cha�y tr�n phi�n ba�n window 64bit.
OnlyAdminCanUninstall=Ti��n tri�nh g�� bo� chi� co� th�� cha�y v��i ca�c  ta�i khoa�n co� quy��n qua�n tri�.
UninstallStatusLabel=Vui lo�ng ���i khi %1 �ang ����c g�� bo� kho�i ma�y ti�nh cu�a ba�n.
UninstalledAll=%1 ����c g�� bo� tha�nh c�ng kho�i ma�y ti�nh cu�a ba�n.
UninstalledMost=%1 ti��n tri�nh g�� bo� k��t thu�c.%n%nCo� va�i tha�nh ph��n kh�ng th�� g�� bo�. Ba�n co� th�� g�� bo� b��ng tay.
UninstalledAndNeedsRestart=��� k��t thu�c ti��n tri�nh g�� bo� %1 kho�i ma�y ti�nh cu�a ba�n, ba�n pha�i kh��i ���ng la�i ma�y ti�nh.%n%nBa�n co� mu��n kh��i ���ng kh�ng?
UninstallDataCorrupted=T��p tin "%1" co� l��i. Kh�ng th�� g�� bo�

; *** Uninstallation phase messages
ConfirmDeleteSharedFileTitle=G�� bo� t��p tin chia se�?
ConfirmDeleteSharedFile2=H�� th��ng nh��n th��y nh��ng t��p tin sau ����c chia se� ��� s�� du�ng cho nh��ng ch��ng tri�nh kha�c. Ba�n co� mu��n g�� bo� nh��ng t��p tin chia se�?%n%nN��u ch��ng tri�nh na�o �ang s�� du�ng ma� nh��ng t��p tin na�y bi� g�� bo� thi� no� co� th�� kh�ng hoa�t ���ng chi�nh xa�c. N��u ba�n kh�ng ch��c ch��n, cho�n nu�t Kh�ng. ��� la�i nh��ng t��p tin na�y tr�n h�� th��ng cu�ng kh�ng g�y ha�i gi�.
SharedFileNameLabel=T�n t��p tin:
SharedFileLocationLabel=Th� mu�c:
WizardUninstalling=Tra�ng tha�i g�� bo�
StatusUninstalling=�ang g�� bo� %1...

; The custom messages below aren't used by Setup itself, but if you make
; use of them in your scripts, you'll want to translate them.

[CustomMessages]

NameAndVersion=%1 version %2
AdditionalIcons=Bi��u t���ng b�� sung:
CreateDesktopIcon=Ta�o &bi��u t���ng Desktop
CreateQuickLaunchIcon=Ta�o bi��u t���ng &Quick Launch
ProgramOnTheWeb=%1 tr�n web
UninstallProgram=G�� bo� %1
LaunchProgram=Kh��i ���ng %1
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
