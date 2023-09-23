unit RocketLevel1;

interface
uses
  URocket, Vcl.Dialogs;

type
  TRocketLevel1 = class (TInterfacedObject, TRocket)

    procedure toThrow();

  end;

implementation

{ TRocketLevel1 }

procedure TRocketLevel1.toThrow;
begin
  ShowMessage('Rocket: power explosion 100');
end;

end.
