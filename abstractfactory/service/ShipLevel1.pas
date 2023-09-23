unit ShipLevel1;

interface
uses
  UShip, Vcl.Dialogs;
type

  TShipLevel1 = class(TInterfacedObject,TShip)

    procedure shoot();

  end;

implementation

{ TMonsterLevel }

procedure TShipLevel1.shoot;
begin
  ShowMessage('Ship: 2 shot at a time');
end;

end.
