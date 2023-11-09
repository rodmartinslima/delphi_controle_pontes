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
    btnSapata: TBitBtn;
    BitBtn2: TBitBtn;
    ImageList: TImageList;
    labMsgMenu: TLabel;
    panMenuTopo: TPanel;
    procedure btnBlocoEstacaClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure btnSapataClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uCadastroBlocoEstaca, uFrmParametrosSapata, uListagemSapatas, uListagemTubulao;

{$R *.dfm}

procedure TFrmPrincipal.BitBtn2Click(Sender: TObject);
begin
  inherited;
  InserirAba(TFrmListagemTubulao, pgcPrincipal);
end;

procedure TFrmPrincipal.btnBlocoEstacaClick(Sender: TObject);
begin
  inherited;
  InserirAba(TfrmCadastroBlocoEstaca, pgcPrincipal);
end;

procedure TFrmPrincipal.btnSapataClick(Sender: TObject);
begin
  inherited;
  InserirAba(TuFrmListagemSapatas, pgcPrincipal);
end;

procedure TFrmPrincipal.FormClick(Sender: TObject);
begin
  inherited;
  btnFechar.Visible := False;
end;

end.
