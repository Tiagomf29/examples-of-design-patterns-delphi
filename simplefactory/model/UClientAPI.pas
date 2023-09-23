unit UClientAPI;

interface
uses
  UClient;

type

  TClientAPI = interface

    procedure saveClient(AClient : TClient);
    procedure getAllClient();
    procedure deleteClient(AId : Integer);
    procedure updateClient(AClient : TClient);

  end;

implementation

end.
