unit UPrinterInkJet;

interface
uses
  UPrinter, Vcl.Dialogs;
type


TPrinterInkJet = class(TInterfacedObject,TPrinter)

  public

    procedure connect();
    procedure printOut();
    procedure disconnect();

end;

implementation

{ TPrinterLaser }

procedure TPrinterInkJet.connect;
begin
  ShowMessage('connect printer inkJet!')
end;

procedure TPrinterInkJet.disconnect;
begin
  ShowMessage('disconnect printer inkJet!')
end;

procedure TPrinterInkJet.printOut;
begin
  ShowMessage('print out printer inkJet!')
end;

end.

