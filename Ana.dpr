program Ana;

uses
  Vcl.Forms,
  uFrmBase in 'uFrmBase.pas' {uFrmBase},
  uFrmBaseListagem in 'uFrmBaseListagem.pas' {uFrmListagemBase},
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFuncoes in 'uFuncoes.pas',
  uImagemRetrato in 'uImagemRetrato.pas' {frmImagemRetrato},
  uFrmImagemPaisagem in 'uFrmImagemPaisagem.pas' {frmImagemPaisagem},
  uFrmBaseParametros in 'uFrmBaseParametros.pas' {FrmBaseParametros},
  uFrmBlocoEstacas in 'uFrmBlocoEstacas.pas' {FrmBlocoSobreEstacas},
  uCadastroBlocoEstaca in 'uCadastroBlocoEstaca.pas' {frmCadastroBlocoEstaca},
  uDmPrincipal in 'uDmPrincipal.pas' {DMPrincipal: TDataModule},
  uFrmParametrosSapata in 'uFrmParametrosSapata.pas' {FrmSapata},
  uListagemSapatas in 'uListagemSapatas.pas' {uFrmListagemSapatas},
  uListagemTubulao in 'uListagemTubulao.pas' {FrmListagemTubulao},
  uFrmParametrosTubulao in 'uFrmParametrosTubulao.pas' {frmParametrosTubulao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.Run;
end.
