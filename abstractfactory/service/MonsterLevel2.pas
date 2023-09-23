unit MonsterLevel2;

interface
uses
  UMonster, Vcl.Dialogs;
type

  TMonsterLeve2 = class(TInterfacedObject,TMonster)

    procedure attack();


  end;

implementation

{ TMonsterLevel }

procedure TMonsterLeve2.attack;
begin
  ShowMessage('Monster: scares and bites opponent');
end;

end.
