unit ULevel2Factory;

interface
uses
  UGameFactory, UMonster, UBomb, URocket, UFighter, UShip, BombLevel2, FighterLevel2, ShipLevel2, RocketLevel2, MonsterLevel2;

type

  TLevel2Factory = class(TInterfacedObject, TGameFactory)

    function createMoster() : TMonster;
    function createBomb()   : TBomb;
    function createRocket() : TRocket;
    function createFigther(): TFigther;
    function createShip()   : TShip;

  end;

implementation

{ TLevel1Factory }

function TLevel2Factory.createBomb: TBomb;
var
  lBomb : TBombLevel2;
begin
  lBomb  := TBombLevel2.Create;
  Result := lBomb;
end;

function TLevel2Factory.createFigther: TFigther;
var
  lFigther : TFighterLevel2;
begin
  lFigther := TFighterLevel2.Create;
  Result   := lFigther;
end;

function TLevel2Factory.createMoster: TMonster;
var
  lMonster : TMonsterLeve2;
begin
  lMonster := TMonsterLeve2.Create;
  Result   := lMonster;
end;

function TLevel2Factory.createRocket: TRocket;
var
  lRocket : TRocketLevel2;
begin
  lRocket := TRocketLevel2.Create;
  Result  := lRocket;
end;

function TLevel2Factory.createShip: TShip;
var
  lShip : TShipLevel2;
begin
  lShip := TShipLevel2.Create;
  Result := lShip;
end;

end.

