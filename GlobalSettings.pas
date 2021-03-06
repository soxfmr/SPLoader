unit GlobalSettings;

interface

uses
  Winapi.Windows, System.Win.Registry;

type
  TGlobalSettings = class(TObject)
  public
    constructor Create();
    destructor Free();
    function GetServerFileName(): String;
    function GetPropertiesFileName(): String;
    procedure SetServerFileName(fn: String);
    procedure SetPropertiesFileName(fn: String);
  private
    mReg: TRegistry;
    mServerFileName: String;
    mPropertiesFileName: String;

    procedure Initial();
  end;

const
  SETTINGS_KEY_PRIMARY = 'Software\SPLoader\Settings';
  SETTINGS_KEY_SERVER_FILENAME = 'serverFileName';
  SETTINGS_KEY_PROPERTIS_FILENAME = 'propertisFileName';

implementation

function TGlobalSettings.GetServerFileName(): String;
begin
  Result := mServerFileName;
end;

function TGlobalSettings.GetPropertiesFileName(): String;
begin
  Result := mPropertiesFileName;
end;

procedure TGlobalSettings.SetServerFileName(fn: String);
begin
  mServerFileName := fn;
  mReg.WriteString(SETTINGS_KEY_SERVER_FILENAME, fn);
end;

procedure TGlobalSettings.SetPropertiesFileName(fn: String);
begin
  mPropertiesFileName := fn;
  mReg.WriteString(SETTINGS_KEY_PROPERTIS_FILENAME, fn);
end;

constructor TGlobalSettings.Create;
begin
  mReg := TRegistry.Create(KEY_ALL_ACCESS);
  mReg.RootKey := HKEY_CURRENT_USER;

  Initial();
end;

destructor TGlobalSettings.Free;
begin
  if mReg <> NIL then
  begin
    mReg.CloseKey;
    mReg.Free;
  end;
end;

procedure TGlobalSettings.Initial;
var
  Ret: Boolean;
begin
  if Not mReg.KeyExists(SETTINGS_KEY_PRIMARY) then
  begin
    try
      Ret := mReg.OpenKey(SETTINGS_KEY_PRIMARY, True);
      // Setup the default value to the settings
      if Ret = True then
      begin
        mReg.WriteString(SETTINGS_KEY_SERVER_FILENAME, '');
        mReg.WriteString(SETTINGS_KEY_PROPERTIS_FILENAME, '');
      end;
    except
      // Cannot write to the registry
    end;

    Exit;
  end;

  mReg.OpenKey(SETTINGS_KEY_PRIMARY, False);
  mServerFileName := mReg.ReadString(SETTINGS_KEY_SERVER_FILENAME);
  mPropertiesFileName := mReg.ReadString(SETTINGS_KEY_PROPERTIS_FILENAME);
end;

end.
