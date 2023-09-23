unit BombLevel1;

interface
uses
  UBomb, Vcl.Dialogs;

type

  TBombLevel1 = class(TInterfacedObject, TBomb)

      procedure bomb();

  end;


implementation

{ TBombLevel1 }

procedure TBombLevel1.bomb;
begin
  ShowMessage('Bomb: power explosion 10');
end;

end.
