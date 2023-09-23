unit ShipLevel2;

interface
uses
  UShip, Vcl.Dialogs;
type

  TShipLevel2 = class(TInterfacedObject,TShip)

    procedure shoot();

  end;

implementation

{ TMonsterLevel }

procedure TShipLevel2.shoot;
begin
  ShowMessage('Ship: 5 shot at a time');
end;

end.
