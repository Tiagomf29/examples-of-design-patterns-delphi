unit UGameFactory;

interface
uses
  UMonster, UBomb, URocket, UFighter, UShip;
type

  TGameFactory = interface

    function createMoster() : TMonster;
    function createBomb()   : TBomb;
    function createRocket() : TRocket;
    function createFigther(): TFigther;
    function createShip()   : TShip;

  end;

implementation

end.
