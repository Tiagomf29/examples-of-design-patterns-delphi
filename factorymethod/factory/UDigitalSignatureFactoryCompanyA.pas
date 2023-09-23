unit UDigitalSignatureFactoryCompanyA;

interface
uses
  UDigitalSignatureFactory, UDigitalSignature;
type

TDigitalSignatureFactoryCompanyA = class(TInterfacedObject,TDigitalSignatureFactory)

  function createDigitalSignature: TDigitalSignature;

end;

implementation
uses
  UCompanySignatureA;

{ TDigitalSignatureFactoryCompanyA }

function TDigitalSignatureFactoryCompanyA.createDigitalSignature: TDigitalSignature;
var
  lCompanySignatureA : TCompanySignatureA;
begin
  lCompanySignatureA := TCompanySignatureA.Create;
  Result             := lCompanySignatureA;
end;

end.
