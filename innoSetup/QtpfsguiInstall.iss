; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=LuminanceHDR
AppVerName=LuminanceHDR 2.0.0
AppPublisher=LuminanceHDR Dev Team
AppPublisherURL=http://qtpfsgui.sourceforge.net/
AppSupportURL=http://qtpfsgui.sourceforge.net/
AppUpdatesURL=http://qtpfsgui.sourceforge.net/
DefaultDirName={pf}\LuminanceHDR
DefaultGroupName=LuminanceHDR
AllowNoIcons=true
LicenseFile=LICENSE
OutputDir=output
OutputBaseFilename=LuminanceHDR-windows-SETUP-v2.0.0
SetupIconFile=luminance.ico
Compression=lzma/ultra64
; NO Compression only for testing
;Compression=none
SolidCompression=true
WizardImageFile=installPicture.bmp
ShowLanguageDialog=yes
LanguageDetectionMethod=locale
VersionInfoVersion=2.0.0
VersionInfoCompany=LuminanceHDR Dev Team
AppID={{7020FC34-6E04-4858-924D-354B28CB2402}
DisableReadyMemo=true
ShowTasksTreeLines=true
AlwaysUsePersonalGroup=false
InternalCompressLevel=ultra64

[Languages]
Name: en; MessagesFile: compiler:Default.isl
Name: de; MessagesFile: compiler:Languages\German.isl
Name: es; MessagesFile: compiler:Languages\Spanish.isl
Name: fr; MessagesFile: compiler:Languages\French.isl
Name: hu; MessagesFile: compiler:Languages\Hungarian.isl
Name: it; MessagesFile: compiler:Languages\Italian.isl
Name: nl; MessagesFile: compiler:Languages\Dutch.isl
Name: no; MessagesFile: compiler:Languages\Norwegian.isl

[Components]
Name: core; Description: Core Files; Types: full compact custom; Flags: fixed
Name: doc; Description: Documenatation; Types: full
Name: i18n; Description: Translations; Types: full

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: D:\Programs\LuminanceHDR\luminance.exe; DestDir: {app}; Components: core; Flags: ignoreversion
Source: D:\Programs\LuminanceHDR\*; DestDir: {app}; Components: core; Flags: ignoreversion
Source: D:\Programs\LuminanceHDR\imageformats\*; DestDir: {app}\imageformats\; Components: core; Flags: ignoreversion recursesubdirs createallsubdirs
Source: D:\Programs\LuminanceHDR\help\*; DestDir: {app}\help\; Components: doc; Flags: ignoreversion recursesubdirs createallsubdirs
Source: D:\Programs\LuminanceHDR\i18n\*; DestDir: {app}\i18n\; Components: i18n; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKCU; Subkey: Software\LuminanceHDR; Flags: uninsdeletekey

[Icons]
Name: {group}\LuminanceHDR; Filename: {app}\luminance.exe
Name: {group}\{cm:ProgramOnTheWeb,LuminanceHDR}; Filename: http://qtpfsgui.sourceforge.net/
Name: {group}\{cm:UninstallProgram,LuminanceHDR}; Filename: {uninstallexe}
Name: {commondesktop}\LuminanceHDR; Filename: {app}\luminance.exe; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\LuminanceHDR; Filename: {app}\luminance.exe; Tasks: quicklaunchicon

[Run]
Filename: {app}\luminance.exe; Description: {cm:LaunchProgram,LuminanceHDR}; Flags: nowait postinstall skipifsilent
