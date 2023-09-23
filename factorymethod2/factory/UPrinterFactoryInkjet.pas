unit UPrinterFactoryInkjet;

interface
uses
  UPrinterFactory, UPrinter;

type

  TPrinterFactoryInkjet = class(TPrinterFactory)

    function creatingPrinter(): TPrinter; override;

  end;

implementation
uses
  UPrinterInkJet;

{ TPrinterFactoryInkjet }

function TPrinterFactoryInkjet.creatingPrinter: TPrinter;
var
  lPrinter : TPrinter;
begin
  lPrinter := TPrinterInkJet.Create;
  Result  := lPrinter;
end;

end.
