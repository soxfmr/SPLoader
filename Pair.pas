unit Pair;

interface

type
  TPair = class(TObject)
  private
    mKey: String;
    mValue: String;
    function GetKey(): String;
    function GetValue(): String;
    procedure SetKey(key: String);
    procedure SetValue(value: String);
  public
    constructor Create(key, value: String); overload;
    property key: String Read GetKey Write SetKey;
    property value: String Read GetValue Write SetValue;
  end;

implementation

constructor TPair.Create(key, value: String);
begin
  mKey := key;
  mValue := value;
end;

function TPair.GetKey(): String;
begin
  Result := mKey;
end;

function TPair.GetValue(): String;
begin
  Result := mValue;
end;

procedure TPair.SetKey(key: String);
begin
  mKey := key;
end;

procedure TPair.SetValue(value: String);
begin
  mValue := value;
end;

end.