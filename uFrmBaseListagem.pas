unit uFrmBaseListagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uFuncoes, uFrmPrincipal, IBX.IBCustomDataSet,
  uDMPrincipal;
type
  TuFrmListagemBase = class(TuFrmBase)
    dbgPrincipal: TDBGrid;
    panFrmListagemBaseMenu: TPanel;
    edtPesquisar: TMaskEdit;
    labPesquisar: TLabel;
    btnDelete: TBitBtn;
    btnEdit: TBitBtn;
    btnNew: TBitBtn;
    dbNavigator: TDBNavigator;
    DataSource: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure imgBtnFecharClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    procedure Fechar;
  public
    { Public declarations }
  end;

var
  uFrmListagemBase: TuFrmListagemBase;

implementation

{$R *.dfm}

procedure TuFrmListagemBase.btnDeleteClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TuFrmListagemBase.btnEditClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TuFrmListagemBase.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Fechar();
end;

procedure TuFrmListagemBase.btnNewClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TuFrmListagemBase.Fechar;
begin
  FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

procedure TuFrmListagemBase.imgBtnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Fechar();
end;

end.
