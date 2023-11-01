unit uFrmBlocoEstacas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseParametros, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, uDmPrincipal;

type
  TFrmBlocoSobreEstacas = class(TFrmBaseParametros)
    panParametrosEstacas: TPanel;
    labCompRocha: TLabel;
    labCompSolo: TLabel;
    labCompTotal: TLabel;
    labNumEstacasBloco: TLabel;
    labNumTotalEstacas: TLabel;
    labParamEstacas: TLabel;
    DataSource: TDataSource;
    edtCompRocha: TDBEdit;
    edtCompSolo: TDBEdit;
    edtCompTotal: TDBEdit;
    edtNumEstacasBloco: TDBEdit;
    edtNumTotalEstacas: TDBEdit;
    procedure btnVerImgClick(Sender: TObject);
    procedure edtNumEstacasBlocoExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgBtnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FIsEdicao: Boolean;
    procedure SetDados;
  public
    function IsEdicao(aModo:String): Boolean; virtual;
  end;
var
  FrmBlocoSobreEstacas: TFrmBlocoSobreEstacas;

implementation

uses
  uFrmImagemPaisagem, uImagemRetrato, FireDAC.Comp.Client;

{$R *.dfm}

procedure TFrmBlocoSobreEstacas.BitBtn2Click(Sender: TObject);
begin
  inherited;
  DMPrincipal.Qry_Bloco_EstacaDATA_CADASTRO.AsDateTime := Date;
  DMPrincipal.Qry_Bloco_EstacaDIR_IMG.AsString := imgPreview.Picture.GetNamePath;

  if (Self.Tag = 9999) and (Self.Tag <> 0) then
    DMPrincipal.Qry_Bloco_EstacaID.AsInteger :=  DMPrincipal.GetID(UpperCase('Bloco_Estaca'));

  DMPrincipal.Qry_Bloco_Estaca.Post;

  Self.Close;
end;

procedure TFrmBlocoSobreEstacas.btnVerImgClick(Sender: TObject);
begin
  inherited;
  frmImagemRetrato.imgRetrato.Picture := imgPreview.Picture;
  frmImagemRetrato.ShowModal;
end;

procedure TFrmBlocoSobreEstacas.edtNumEstacasBlocoExit(Sender: TObject);
begin
  inherited;
  with DMPrincipal do
  begin
    if (VarToStr(Qry_Bloco_EstacaNUMERO_BLOCOS_NOVOS.Value) <> '') and
      (VarToStr(Qry_Bloco_EstacaNUMERO_ESTACAS_BLOCO.Value) <> '') then
    begin
      Qry_Bloco_Estaca.Edit;
      Qry_Bloco_EstacaNUMERO_TOTAL_ESTACAS.Value := Qry_Bloco_EstacaNUMERO_BLOCOS_NOVOS.Value *
                                   Qry_Bloco_EstacaNUMERO_ESTACAS_BLOCO.Value;
    end;
  end;
end;

procedure TFrmBlocoSobreEstacas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FIsEdicao := False;
end;

procedure TFrmBlocoSobreEstacas.FormShow(Sender: TObject);
begin
  inherited;
  Self.SetDados();
end;

procedure TFrmBlocoSobreEstacas.imgBtnFecharClick(Sender: TObject);
begin
  inherited;
  DMPrincipal.Qry_Bloco_Estaca.Cancel;
end;

function TFrmBlocoSobreEstacas.IsEdicao(aModo: String): Boolean;
const
  modoOpr : array  [0..2] of string = ('Novo','Editar','Deletar');
begin
  Result := False;

  if aModo = modoOpr[1] then
    Result := True;

  FIsEdicao := Result;
end;

procedure TFrmBlocoSobreEstacas.SetDados;
begin
  //Nomeação dos parâmetros
  labParam1.Caption := 'Lado do Bloco';
  labParam2.Caption := 'Altura do Bloco';
  labParam3.Caption := 'Diâmetro do Pilar';
  labParam4.Caption := 'Número de blocos novos';

  //valores default
  with DMPrincipal do
  begin
    if (Self.Tag = -9999) and (Self.Tag <> 0) then
      Qry_Bloco_Estaca.Edit
    else if (Self.Tag = 9999) and (Self.Tag <> 0) then
    begin
      Qry_Bloco_Estaca.Open;
      Qry_Bloco_Estaca.Append;
      Qry_Bloco_EstacaLADO_BLOCO.AsFloat := 2.5;
      Qry_Bloco_EstacaALTURA_BLOCO.AsFloat := 1.5;
      Qry_Bloco_EstacaDIAMETRO_PILAR.AsFloat := 0.92;
      Qry_Bloco_EstacaNUMERO_BLOCOS_NOVOS.AsInteger := 0;
    end;
  end;

  edtParam4.Hint := 'Número de pilares da ponte - Valor original';
  edtParam4.ShowHint := True;

  //ocultar
  LabParam5.Visible := False;
  LabParam6.Visible := False;
  edtParam5.Visible := False;
  edtParam6.Visible := False;
end;

end.
