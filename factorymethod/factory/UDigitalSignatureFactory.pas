unit UDigitalSignatureFactory;

interface
uses
  UDigitalSignature;

type

TDigitalSignatureFactory = interface

  function createDigitalSignature: TDigitalSignature;

end;

implementation

end.
