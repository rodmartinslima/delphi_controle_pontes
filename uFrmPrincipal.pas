unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls, uFuncoes, System.ImageList,
  Vcl.ImgList;

type
  TFrmPrincipal = class(TuFrmBase)
    panMenuLeft: TPanel;
    btnBlocoEstaca: TBitBtn;
    pgcPrincipal: TPageControl;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ImageList: TImageList;
    labMsgMenu: TLabel;
    panMenuTopo: TPanel;
    procedure btnBlocoEstacaClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uFrmBlocoEstacas, uCadastroBlocoEstaca;

{$R *.dfm}

procedure TFrmPrincipal.btnBlocoEstacaClick(Sender: TObject);
begin
  inherited;
  InserirAba(TFrmCadastroBlocoEstaca, pgcPrincipal);

  {if cbxTpFundacao.ItemIndex = 0 then
  else if cbxTpFundacao.ItemIndex = 1  then
    //InserirAba(TFormxxx, pgcPrincipal)
  else if cbxTpFundacao.ItemIndex = 2  then
    //InserirAba(TFormxxx, pgcPrincipal)     }
end;

procedure TFrmPrincipal.FormClick(Sender: TObject);
begin
  inherited;
  btnFechar.Visible := False;
end;

end.
