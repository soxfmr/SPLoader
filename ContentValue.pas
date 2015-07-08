unit ContentValue;

interface

uses
  System.Classes;

type
  TContentValue = class(TObject)
  public
    constructor Create;
    destructor Free;
    procedure Add(key, value: String);
    procedure Clear();
    procedure Remove(key: string);
    function GetName(index: Integer): String;
    function Get(index: Integer): String; overload;
    function Get(key: String): String; overload;
    function Get(key, defalutValue: String): String; overload;
    function Count(): Integer;
    function ContaineKey(key: String): Boolean;
  private
    mNameValuePair: TStringList;
  end;

implementation

constructor TContentValue.Create;
begin
  mNameValuePair := TStringList.Create;
end;

destructor TContentValue.Free;
begin
  if mNameValuePair <> NIL then
  begin
    mNameValuePair.Free;
  end;
end;

procedure TContentValue.Add(key, value: String);
var
  Index: Integer;
begin
  if ContaineKey(key) then
  begin
    Index:= mNameValuePair.IndexOfName(key);
    mNameValuePair.Delete(Index);
  end;

  mNameValuePair.Values[key]:= value;
end;

procedure TContentValue.Remove(key: String);
var
  Index: Integer;
begin
  Index:= mNameValuePair.IndexOfName(key);
  if Index <> -1 then
  begin
    mNameValuePair.Delete(Index);
  end;
end;

procedure TContentValue.Clear;
begin
  mNameValuePair.Clear;
end;

function TContentValue.GetName(index: Integer): String;
begin
  Result:= mNameValuePair.Names[index];
end;

function TContentValue.Get(index: Integer): String;
begin
  Result:= mNameValuePair[index];
end;

function TContentValue.Get(key: String): String;
begin
  Result:= mNameValuePair.Values[key];
end;

function TContentValue.Get(key, defalutValue: String): String;
begin
  Result:= mNameValuePair.Values[key];
  if Result = '' then
  begin
    Result:= defalutValue;
  end;
end;

function TContentValue.Count(): Integer;
begin
  Result:= mNameValuePair.Count;
end;

function TContentValue.ContaineKey(key: String): Boolean;
var
  Index: Integer;
begin
  Index:= mNameValuePair.IndexOfName(key);
  if Index <> -1 then
  begin
    Result:= True;
    Exit;
  end;
  Result:= False;
end;

end.

