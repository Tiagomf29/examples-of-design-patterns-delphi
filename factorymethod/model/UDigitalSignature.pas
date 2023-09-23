unit UDigitalSignature;

interface
uses
  System.SysUtils;

type

TDigitalSignature = interface

  function signature(ADocument : TBytes; ACertified : TBytes): TBytes;
  procedure verify(ADocument : TBytes; ASignature : TBytes);

end;

implementation

end.

