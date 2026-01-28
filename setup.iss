[Setup]
AppName=Ambidextro by StormGamesStudios
AppVersion=1.0.3
DefaultDirName={userappdata}\StormGamesStudios\NewGameDir\Ambidextro
DefaultGroupName=StormGamesStudios
OutputDir=C:\Users\mapsp\Documents\GitHub\ambidextro\output
OutputBaseFilename=Ambidextro_Launcher_Installer
Compression=lzma
SolidCompression=yes
AppCopyright=Copyright © 2025 StormGamesStudios. All rights reserved.
VersionInfoCompany=StormGamesStudios
AppPublisher=StormGamesStudios
SetupIconFile=ambidextro.ico
VersionInfoVersion=1.0.3.0
DisableDirPage=yes
DisableProgramGroupPage=yes

[Files]
; Archivos del lanzador
Source: "C:\Users\mapsp\Documents\GitHub\ambidextro\dist\installer_updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\ambidextro\ambidextro.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\ambidextro\ambidextro.png"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; Acceso directo en el escritorio
; Name: "{userdesktop}\Ambidextro"; Filename: "{app}\installer_updater.exe"; IconFilename: "{app}\ambidextro.ico"; Comment: "Lanzador de Ambidextro"; WorkingDir: "{app}"

; Acceso directo en el menú de inicio dentro de la carpeta StormGamesStudios
Name: "{commonprograms}\StormGamesStudios\Ambidextro"; Filename: "{app}\installer_updater.exe"; IconFilename: "{app}\ambidextro.ico"; Comment: "Lanzador de Ambidextro"; WorkingDir: "{app}"
Name: "{commonprograms}\StormGamesStudios\Desinstalar Ambidextro"; Filename: "{uninstallexe}"; IconFilename: "{app}\ambidextro.ico"; Comment: "Desinstalar Ambidextro"

[Registry]
; Guardar ruta de instalación para poder desinstalar
Root: HKCU; Subkey: "Software\Ambidextro"; ValueType: string; ValueName: "Install_Dir"; ValueData: "{app}"

[UninstallDelete]
; Eliminar carpeta del appdata y acceso directo
Type: filesandordirs; Name: "{app}"

[Run]
; Ejecutar el lanzador después de la instalación
Filename: "{app}\installer_updater.exe"; Description: "Ejecutar Ambidextro"; Flags: nowait postinstall skipifsilent
