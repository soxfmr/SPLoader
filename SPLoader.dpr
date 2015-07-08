program SPLoader;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  ServerPropertyLoader in 'ServerPropertyLoader.pas',
  Pair in 'Pair.pas',
  PropertyInfo in 'PropertyInfo.pas',
  GlobalSettings in 'GlobalSettings.pas',
  ContentValue in 'ContentValue.pas',
  ServerInfo in 'ServerInfo.pas',
  SyncLib in 'SyncLib.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
