unit UClientGRPC;

interface
uses
  UClientAPI, UClient, Vcl.Dialogs;

type

TClientGRPC = class(TInterfacedObject,TClientAPI)

    procedure saveClient(AClient : TClient);
    procedure getAllClient();
    procedure deleteClient(AId : Integer);
    procedure updateClient(AClient : TClient);

end;

implementation

{ TClientSOAP }

procedure TClientGRPC.deleteClient(AId: Integer);
begin
  ShowMessage('deleted client (GRPC)!');
end;

procedure TClientGRPC.getAllClient;
begin
  ShowMessage('returned all clients (GRPC)!');
end;

procedure TClientGRPC.saveClient(AClient: TClient);
begin
    ShowMessage('save client (GRPC)!');
end;

procedure TClientGRPC.updateClient(AClient: TClient);
begin
    ShowMessage('updated client (GRPC)!');
end;

end.

