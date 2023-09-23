unit FighterLevel2;

interface
uses
  UFighter, Vcl.Dialogs;

type
  TFighterLevel2 = class (TInterfacedObject, TFigther)

    procedure strike();

  end;

implementation

{ TRocketLevel1 }

procedure TFighterLevel2.strike;
begin
  ShowMessage('Figther: hitting hard 10');
end;

end.

