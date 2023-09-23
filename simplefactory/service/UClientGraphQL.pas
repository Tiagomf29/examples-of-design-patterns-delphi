unit UClientGraphQL;

interface
uses
  UClientAPI, UClient, Vcl.Dialogs;

type

TClientGraphQL = class(TInterfacedObject,TClientAPI)

    procedure saveClient(AClient : TClient);
    procedure getAllClient();
    procedure deleteClient(AId : Integer);
    procedure updateClient(AClient : TClient);

end;

implementation

{ TClientSOAP }

procedure TClientGraphQL.deleteClient(AId: Integer);
begin
  ShowMessage('deleted client (GraphQl)!');
end;

procedure TClientGraphQL.getAllClient;
begin
  ShowMessage('returned all clients (GraphQl)!');
end;

procedure TClientGraphQL.saveClient(AClient: TClient);
begin
    ShowMessage('save client (GraphQl)!');
end;

procedure TClientGraphQL.updateClient(AClient: TClient);
begin
    ShowMessage('updated client (GraphQl)!');
end;

end.

