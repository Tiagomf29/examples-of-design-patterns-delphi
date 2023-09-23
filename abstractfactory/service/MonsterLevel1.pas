unit MonsterLevel1;

interface
uses
  UMonster, Vcl.Dialogs;
type

  TMonsterLevel = class(TInterfacedObject,TMonster)

    procedure attack();


  end;

implementation

{ TMonsterLevel }

procedure TMonsterLevel.attack;
begin
  ShowMessage('Monster: Monster: only scares opponent');
end;

end.
