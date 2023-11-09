unit uListagemSapatas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseListagem, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TuFrmListagemSapatas = class(TuFrmListagemBase)
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrmListagemSapatas: TuFrmListagemSapatas;

implementation

uses
  uFrmPrincipal, uFrmParametrosSapata, uDmPrincipal, uFuncoes;

{$R *.dfm}

procedure TuFrmListagemSapatas.btnEditClick(Sender: TObject);
begin
  inherited;
  InserirAba(TFrmSapata, FrmPrincipal.pgcPrincipal, -9999);
end;

procedure TuFrmListagemSapatas.btnNewClick(Sender: TObject);
begin
  inherited;
  InserirAba(TFrmSapata, FrmPrincipal.pgcPrincipal, 9999);
end;

end.
