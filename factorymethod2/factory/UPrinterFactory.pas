unit UPrinterFactory;

interface
uses
  UPrinter;
type


  TPrinterFactory  = class

      function creating : TPrinter;
      function creatingPrinter(): TPrinter; virtual; abstract;

  end;

implementation

{ TPrinterFactory }

function TPrinterFactory.creating: TPrinter;
var
  lPrinter : TPrinter;
begin
  lPrinter := creatingPrinter();
  lPrinter.connect();
  lPrinter.printOut();
  lPrinter.disconnect();

  Result := lPrinter;
end;

end.
