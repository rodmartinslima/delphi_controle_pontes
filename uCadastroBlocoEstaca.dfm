inherited frmCadastroBlocoEstaca: TfrmCadastroBlocoEstaca
  Caption = 'Bloco Estacas'
  OnShow = FormShow
  TextHeight = 15
  inherited panFrmBaseTop: TPanel
    inherited labTituloForm: TLabel
      Height = 14
    end
    inherited imgBtnFechar: TImage
      Height = 16
    end
  end
  inherited panFrmBaseBotton: TPanel
    Color = 12615808
    ParentBackground = False
    inherited dbNavigator: TDBNavigator
      DataSource = DataSource
      Hints.Strings = ()
    end
  end
  inherited panFrmBasePrincipal: TPanel
    inherited dbgPrincipal: TDBGrid
      Width = 761
      Height = 288
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_CADASTRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LADO_BLOCO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALTURA_BLOCO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIAMETRO_PILAR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_BLOCOS_NOVOS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPRIMENTO_SOLO_CS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPRIMENTO_ROCHA_CR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPRIMENTO_TOTAL_CT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_ESTACAS_BLOCO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_TOTAL_ESTACAS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIR_IMG'
          Visible = True
        end>
    end
    inherited panFrmListagemBaseMenu: TPanel
      Width = 761
      ExplicitWidth = 761
      inherited btnDelete: TBitBtn
        Left = 688
      end
      inherited btnEdit: TBitBtn
        Left = 612
      end
      inherited btnNew: TBitBtn
        Left = 536
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = DMPrincipal.Qry_Bloco_Estaca
  end
end
