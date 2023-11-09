unit uListagemTubulao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseListagem, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrmListagemTubulao = class(TuFrmListagemBase)
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListagemTubulao: TFrmListagemTubulao;

implementation

uses
  uFrmParametrosTubulao, uFrmPrincipal, uFuncoes;
{$R *.dfm}

procedure TFrmListagemTubulao.btnEditClick(Sender: TObject);
begin
  inherited;
  InserirAba(TFrmParametrosTubulao, FrmPrincipal.pgcPrincipal, -9999);
end;

procedure TFrmListagemTubulao.btnNewClick(Sender: TObject);
begin
  inherited;
  InserirAba(TFrmParametrosTubulao, FrmPrincipal.pgcPrincipal, 9999);
end;

end.
