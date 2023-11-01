unit uFuncoes;

interface

uses
  Vcl.ComCtrls, Vcl.Forms;

  function If_AbaExiste(aCaption: String; aPageControl: TPageControl): Boolean;
  procedure InserirAba(aForm: TFormClass; aPageControl: TPageControl);
  procedure FecharAba(aCaption: String; aPageControl: TPageControl);
  function ExtrairDiretorio: String;
  function CalcularVolume(const aArea, aPerimetro: Double): Double;

implementation

uses
  Vcl.Controls, SysUtils;

procedure InserirAba(aForm: TFormClass; aPageControl: TPageControl);
var
  Tab: TTabSheet;
  Form: TForm;
begin
  Form := aForm.Create(nil);

  if not If_AbaExiste(Form.Caption, aPageControl) then
  begin
    Tab := TTabSheet.Create(nil);
    Tab.PageControl := aPageControl;
    Tab.Caption := Form.Caption;

    Form.Align := alClient;
    Form.BorderStyle := bsNone;
    Form.Parent := Tab;
    Form.Show;

    aPageControl.ActivePage := Tab;
  end else
  begin
    if Assigned(Form) then
      FreeAndNil(Form);
  end;
end;

function If_AbaExiste(aCaption: String; aPageControl: TPageControl): Boolean;
var
 cont: Integer;
begin
  Result := False;

  for cont := 0 to aPageControl.PageCount - 1 do
  begin
    if LowerCase(aCaption) = LowerCase(aPageControl.Pages[cont].Caption) then
    begin
      aPageControl.ActivePage := aPageControl.Pages[cont];
      aPageControl.TabIndex := cont;
      Result := True;
      break;
    end;
  end;
end;

procedure FecharAba(aCaption: String; aPageControl: TPageControl);
var
 cont: Integer;
begin
  for cont := 0 to aPageControl.PageCount - 1 do
  begin
    if LowerCase(aCaption) = LowerCase(aPageControl.Pages[cont].Caption) then
    begin
      aPageControl.Pages[cont].Destroy;
      break;
    end;
  end;

end;

function ExtrairDiretorio: String;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function CalcularVolume(const aArea, aPerimetro: Double): Double;
begin
  Result := 0;
end;

end.
