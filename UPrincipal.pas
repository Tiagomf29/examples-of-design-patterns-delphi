unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, UDigitalSignatureFactory, UConexao;

type
  TForm1 = class(TForm)
    gbFactoryMethod: TGroupBox;
    btnFactoryMethod: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Label7: TLabel;
    procedure btnFactoryMethodClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    FConnect : TConexao;
    procedure signatureDocument(ADigitalSignatureFactory: TDigitalSignatureFactory);  overload;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
  UDigitalSignature, UDigitalSignatureFactoryCompanyA, UDigitalSignatureFactoryCompanyB,
  UPrinter, UPrinterFactory, UPrinterFactoryInkjet, UPrinterFactoryLaser,
  UClientFactory, UClientAPI, UClientSOAP, UClient, UConnection,
  UGameFactory, ULevel1Factory, BombLevel1, UBomb,
  BombLevel2, ULevel2Factory, UShip, URocket, UMonster, UFighter;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  lDigitalSignatureFactory         : TDigitalSignatureFactory;
begin
  lDigitalSignatureFactory := TDigitalSignatureFactoryCompanyB.Create;
  signatureDocument(lDigitalSignatureFactory);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
  lPrinterFactory : TPrinterFactory;
begin
  lPrinterFactory := TPrinterFactoryLaser.Create;
  try
    lPrinterFactory.creating();
  finally
    FreeAndNil(lPrinterFactory);
  end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
  lPrinterFactory : TPrinterFactory;
begin
  lPrinterFactory := TPrinterFactoryInkjet.create;
  try
    lPrinterFactory.creating();
  finally
    FreeAndNil(lPrinterFactory);
  end;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var
  lClientFactory : TClientFactory;
  lClientApi     : TClientAPI;
  lClient        : TClient;
begin
  lClientApi := TClientFactory.createClient(tctSOAP);
  lClient := TClient.Create;
  try
    lClientApi.saveClient(lClient);
    lClientApi.getAllClient();
    lClientApi.deleteClient(1);
    lClientApi.updateClient(lClient);
  finally
    FreeAndNil(lClient);
  end;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
var
  lClientFactory : TClientFactory;
  lClientApi     : TClientAPI;
  lClient        : TClient;
begin
  lClientApi := TClientFactory.createClient(tctREST);
  lClient := TClient.Create;
  try
    lClientApi.saveClient(lClient);
    lClientApi.getAllClient();
    lClientApi.deleteClient(1);
    lClientApi.updateClient(lClient);
  finally
    FreeAndNil(lClient);
  end;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
var
  lClientFactory : TClientFactory;
  lClientApi     : TClientAPI;
  lClient        : TClient;
begin
  lClientApi := TClientFactory.createClient(tctGraphQL);
  lClient := TClient.Create;
  try
    lClientApi.saveClient(lClient);
    lClientApi.getAllClient();
    lClientApi.deleteClient(1);
    lClientApi.updateClient(lClient);
  finally
    FreeAndNil(lClient);
  end;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
var
  lClientFactory : TClientFactory;
  lClientApi     : TClientAPI;
  lClient        : TClient;
begin
  lClientApi := TClientFactory.createClient(tctGRPC);
  lClient := TClient.Create;
  try
    lClientApi.saveClient(lClient);
    lClientApi.getAllClient();
    lClientApi.deleteClient(1);
    lClientApi.updateClient(lClient);
  finally
    FreeAndNil(lClient);
  end;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
var
  lGameFactory   : TGameFactory;
  lBomb          : TBomb;
  lShip          : TShip;
  lMonster       : TMonster;
  lFighter       : TFigther;
  lRocket        : TRocket;
begin
   lGameFactory := TLevel1Factory.Create;

   lBomb        := lGameFactory.createBomb();
   lShip        := lGameFactory.createShip();
   lMonster     := lGameFactory.createMoster();
   lFighter     := lGameFactory.createFigther();
   lRocket      := lGameFactory.createRocket();

   lBomb.bomb();
   lShip.shoot();
   lMonster.attack();
   lFighter.strike();
   lRocket.toThrow();
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
var
  lGameFactory : TGameFactory;
  lBomb          : TBomb;
  lShip          : TShip;
  lMonster       : TMonster;
  lFighter       : TFigther;
  lRocket        : TRocket;
begin
  lGameFactory := TLevel2Factory.Create;

   lBomb        := lGameFactory.createBomb();
   lShip        := lGameFactory.createShip();
   lMonster     := lGameFactory.createMoster();
   lFighter     := lGameFactory.createFigther();
   lRocket      := lGameFactory.createRocket();

   lBomb.bomb();
   lShip.shoot();
   lMonster.attack();
   lFighter.strike();
   lRocket.toThrow();
end;

procedure TForm1.btnFactoryMethodClick(Sender: TObject);
var
  lDigitalSignatureFactory : TDigitalSignatureFactory;
begin
  lDigitalSignatureFactory := TDigitalSignatureFactoryCompanyA.Create;
  signatureDocument(lDigitalSignatureFactory);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Tconexao.isConnected();
  FConnect := Tconexao.getInstance();
  Tconexao.isConnected();
  FConnect.isQuantityConnection();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Tconexao.isConnected();
  FConnect := Tconexao.getInstance();
  Tconexao.isConnected();
  FConnect.isQuantityConnection();
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  lConnection : TConnection;
begin
  ShowMessage('Criando a instancia!');
  lConnection := TConnection.Create;
  try
    ShowMessage('Adicionando o novo c�digo na lista compartilhada!');
    lConnection.includeCodes(StrToInt(Edit1.Text));
    ShowMessage('verificando os c�digos da lista compartilhada!');
    lConnection.listCodesIncludes();
  finally
    FreeAndNil(lConnection);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  lConnection : TConnection;
begin
  ShowMessage('Criando a instancia!');
  lConnection := TConnection.Create;
  try
    ShowMessage('Adicionando o novo c�digo na lista compartilhada!');
    lConnection.includeCodes(StrToInt(Edit1.Text));
    ShowMessage('verificando os c�digos da lista compartilhada!');
    lConnection.listCodesIncludes();
  finally
    FreeAndNil(lConnection);
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if(Assigned(FConnect))then
    FreeAndNil(FConnect);

  TConnection.desctruct();
end;

procedure TForm1.signatureDocument(ADigitalSignatureFactory: TDigitalSignatureFactory);
var
  lDigitalSignature : TDigitalSignature;
  lDocument, lCertified, lSignature : TBytes;
begin
  lDocument  := TEncoding.Default.GetBytes('EXEMPLO');
  lCertified := TEncoding.Default.GetBytes('EXEMPLO');

  lDigitalSignature := ADigitalSignatureFactory.createDigitalSignature();
  lSignature        := lDigitalSignature.signature(lDocument, lCertified);
  lDigitalSignature.verify(lDocument, lSignature);
end;

end.
