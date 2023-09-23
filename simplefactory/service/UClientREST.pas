unit UClientREST;

interface
uses
  UClientAPI, UClient, Vcl.Dialogs;

type

TClientREST = class(TInterfacedObject,TClientAPI)

    procedure saveClient(AClient : TClient);
    procedure getAllClient();
    procedure deleteClient(AId : Integer);
    procedure updateClient(AClient : TClient);

end;

implementation

{ TClientSOAP }

procedure TClientREST.deleteClient(AId: Integer);
begin
  ShowMessage('deleted client (REST)!');
end;

procedure TClientREST.getAllClient;
begin
  ShowMessage('returned all clients (REST)!');
end;

procedure TClientREST.saveClient(AClient: TClient);
begin
    ShowMessage('save client (REST)!');
end;

procedure TClientREST.updateClient(AClient: TClient);
begin
    ShowMessage('updated client (REST)!');
end;

end.

