unit UConexao;

interface
uses
  Vcl.Dialogs, System.SysUtils;

type
  TConexao = class

    private

      class var FConexao : TConexao;
      constructor Create();

    public
      class function getInstance(): TConexao;
      class procedure isConnected();
      procedure isQuantityConnection();

  end;

implementation

{ TConexao }

constructor TConexao.create;
begin

end;

class function TConexao.getInstance: TConexao;
begin
  if(not Assigned(FConexao))then
    FConexao := TConexao.create;

  Result:= FConexao;
end;

class procedure TConexao.isConnected;
begin
  if(FConexao<> nil) then
    ShowMessage('Conected!!')
  else
    ShowMessage('Not conected!!')
end;

procedure TConexao.isQuantityConnection;
begin
  ShowMessage('only 1 connection!')
end;

end.
