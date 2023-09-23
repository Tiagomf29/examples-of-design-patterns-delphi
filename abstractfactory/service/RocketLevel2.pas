unit RocketLevel2;

interface
uses
  URocket, Vcl.Dialogs;

type
  TRocketLevel2 = class (TInterfacedObject, TRocket)

    procedure toThrow();

  end;

implementation

{ TRocketLevel1 }

procedure TRocketLevel2.toThrow;
begin
  ShowMessage('Rocket: power explosion 1000');
end;

end.

