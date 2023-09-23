unit FighterLevel1;

interface
uses
  UFighter, Vcl.Dialogs;

type
  TFighterLevel1 = class (TInterfacedObject, TFigther)

    procedure strike();

  end;

implementation

{ TRocketLevel1 }

procedure TFighterLevel1.strike;
begin
  ShowMessage('Figther: hitting hard 1');
end;

end.

