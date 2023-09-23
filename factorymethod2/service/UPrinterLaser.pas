unit UPrinterLaser;

interface
uses
  UPrinter, Vcl.Dialogs;
type


TPrinterLaser = class(TInterfacedObject,TPrinter)

  public

    procedure connect();
    procedure printOut();
    procedure disconnect();

end;

implementation

{ TPrinterLaser }

procedure TPrinterLaser.connect;
begin
  ShowMessage('connect printer laser!')
end;

procedure TPrinterLaser.disconnect;
begin
  ShowMessage('disconnect printer laser!')
end;

procedure TPrinterLaser.printOut;
begin
  ShowMessage('print out printer laser!')
end;

end.
