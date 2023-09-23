unit UConnection;

interface
uses
  Vcl.Dialogs, System.SysUtils, System.Classes, Generics.Collections;

type
  TConnection = class

    private
      class var listCodes : TList<Integer>;

    public
      constructor Create();
      procedure includeCodes(ACode: Integer);
      procedure listCodesIncludes();
      class procedure desctruct();

  end;

implementation

{ TConexao }

constructor TConnection.create;
begin
  if(not Assigned(listCodes))then
    listCodes := TList<Integer>.Create;
end;

class procedure TConnection.desctruct;
begin
  if(Assigned(listCodes))then
    FreeAndNil(listCodes);
end;

procedure TConnection.includeCodes(ACode: Integer);
begin
  listCodes.Add(Acode);
end;

procedure TConnection.listCodesIncludes;
var
  i : Integer;
begin
  for i := 0 to listCodes.Count -1 do
      ShowMessage(IntToStr(listCodes[i]));
end;

end.
