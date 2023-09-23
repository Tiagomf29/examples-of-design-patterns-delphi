unit ULevel1Factory;

interface
uses
  UGameFactory, UMonster, UBomb, URocket, UFighter, UShip, BombLevel1, FighterLevel1, ShipLevel1, RocketLevel1, MonsterLevel1;

type

  TLevel1Factory = class(TInterfacedObject, TGameFactory)

    public
      function createMoster() : TMonster;
      function createBomb()   : TBomb;
      function createRocket() : TRocket;
      function createFigther(): TFigther;
      function createShip()   : TShip;

  end;

implementation

{ TLevel1Factory }

function TLevel1Factory.createBomb: TBomb;
var
  lBomb : TBombLevel1;
begin
  lBomb  := TBombLevel1.Create;
  Result := lBomb;
end;

function TLevel1Factory.createFigther: TFigther;
var
  lFigther : TFighterLevel1;
begin
  lFigther := TFighterLevel1.Create;
  Result   := lFigther;
end;

function TLevel1Factory.createMoster: TMonster;
var
  lMonster : TMonsterLevel;
begin
  lMonster := TMonsterLevel.Create;
  Result   := lMonster;
end;

function TLevel1Factory.createRocket: TRocket;
var
  lRocket : TRocketLevel1;
begin
  lRocket := TRocketLevel1.Create;
  Result  := lRocket;
end;

function TLevel1Factory.createShip: TShip;
var
  lShip : TShipLevel1;
begin
  lShip := TShipLevel1.Create;
  Result := lShip;
end;

end.
