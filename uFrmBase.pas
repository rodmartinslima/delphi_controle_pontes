unit uFrmBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TuFrmBase = class(TForm)
    panFrmBaseTop: TPanel;
    labTituloForm: TLabel;
    imgBtnFechar: TImage;
    panFrmBaseBotton: TPanel;
    panFrmBasePrincipal: TPanel;
    btnFechar: TBitBtn;
    procedure imgBtnFecharClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function GetIsEdicao: Boolean;
    procedure SetIsEdicao(const aValue: Boolean);
    { Private declarations }
  public
    FIsEdicao: Boolean;
    property isEdicao: Boolean read GetIsEdicao write SetIsEdicao;
  end;

var
  frmBase: TuFrmBase;

implementation

{$R *.dfm}

procedure TuFrmBase.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TuFrmBase.FormCreate(Sender: TObject);
begin
  labTituloForm.Caption := Self.Caption;
end;

function TuFrmBase.GetIsEdicao: Boolean;
begin
  Result := FIsEdicao;
end;

procedure TuFrmBase.imgBtnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TuFrmBase.SetIsEdicao(const aValue: Boolean);
begin
  FIsEdicao := aValue;
end;

end.
