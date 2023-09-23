unit UClientSOAP;

interface
uses
  UClientAPI, UClient, Vcl.Dialogs;

type

TClientSOAP = class(TInterfacedObject,TClientAPI)

    procedure saveClient(AClient : TClient);
    procedure getAllClient();
    procedure deleteClient(AId : Integer);
    procedure updateClient(AClient : TClient);

end;

implementation

{ TClientSOAP }

procedure TClientSOAP.deleteClient(AId: Integer);
begin
  ShowMessage('deleted client (SOAP)!');
end;

procedure TClientSOAP.getAllClient;
begin
  ShowMessage('returned all clients (SOAP)!');
end;

procedure TClientSOAP.saveClient(AClient: TClient);
begin
    ShowMessage('save client (SOAP)!');
end;

procedure TClientSOAP.updateClient(AClient: TClient);
begin
    ShowMessage('updated client (SOAP)!');
end;

end.
