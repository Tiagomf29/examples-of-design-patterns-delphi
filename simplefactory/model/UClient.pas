unit UClient;

interface
type

TClient = class

  FId : Integer;
  FNome : string;
  FNasc : TDate;
  FMae  : String;

  private

    function getId: Integer;
    function getMae: string;
    function getNasc: TDate;
    function getNome: string;

    procedure setId(const AValue: Integer);
    procedure setMae(const AValue: string);
    procedure setNasc(const AValue: TDate);
    procedure setNome(const AValue: string);

  public

    property id : Integer read getId write setId;
    property nome : string read getNome write setNome;
    property nasc : TDate read getNasc write setNasc;
    property mae : string read getMae write setMae;

end;

implementation

{ TClient }

function TClient.getId: Integer;
begin
  Result := FId;
end;

function TClient.getMae: string;
begin
  Result := FMae;
end;

function TClient.getNasc: TDate;
begin
  Result := FNasc;
end;

function TClient.getNome: string;
begin
  Result := FNome;
end;

procedure TClient.setId(const AValue: Integer);
begin
  FId := AValue;
end;

procedure TClient.setMae(const AValue: string);
begin
  FMae := AValue;
end;

procedure TClient.setNasc(const AValue: TDate);
begin
  FNasc := AValue;
end;

procedure TClient.setNome(const AValue: string);
begin
  FNome := AValue;
end;

end.
