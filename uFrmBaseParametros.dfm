inherited FrmBaseParametros: TFrmBaseParametros
  AlignWithMargins = True
  Anchors = []
  BorderIcons = []
  Caption = 'FrmBaseParametros'
  ClientHeight = 280
  ClientWidth = 596
  Position = poScreenCenter
  PrintScale = poProportional
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 596
  ExplicitHeight = 280
  TextHeight = 15
  inherited panFrmBaseTop: TPanel
    Width = 596
    Color = clTeal
    ExplicitWidth = 596
    inherited labTituloForm: TLabel
      Align = alNone
      Color = clWhite
      Font.Color = clWhite
      ParentColor = False
    end
    inherited imgBtnFechar: TImage
      Left = 565
      Height = 16
      ExplicitLeft = 441
    end
  end
  inherited panFrmBaseBotton: TPanel
    Top = 239
    Width = 596
    Color = clSilver
    ParentBackground = False
    ExplicitTop = 239
    ExplicitWidth = 596
    inherited btnFechar: TBitBtn
      Left = 511
      ExplicitLeft = 511
    end
    object btnVerImg: TBitBtn
      AlignWithMargins = True
      Left = 186
      Top = 3
      Width = 75
      Height = 35
      Margins.Left = 10
      Align = alLeft
      Caption = 'Ver Imagem'
      DisabledImageName = 'btnVerImg'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12615808
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 75
      Height = 35
      Margins.Left = 10
      Align = alLeft
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12615808
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnFecharClick
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 98
      Top = 3
      Width = 75
      Height = 35
      Margins.Left = 10
      Align = alLeft
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12615808
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnFecharClick
    end
  end
  inherited panFrmBasePrincipal: TPanel
    Width = 596
    Height = 217
    ExplicitWidth = 596
    ExplicitHeight = 217
    object panPrincipalTop: TPanel
      Left = 0
      Top = 0
      Width = 596
      Height = 209
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object panParametros: TPanel
        Left = 0
        Top = 5
        Width = 411
        Height = 199
        Margins.Left = 50
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object labParam1: TLabel
          Left = 140
          Top = 34
          Width = 56
          Height = 15
          Alignment = taRightJustify
          Caption = 'labParam1'
        end
        object labParam2: TLabel
          Left = 140
          Top = 62
          Width = 56
          Height = 15
          Alignment = taRightJustify
          Caption = 'labParam2'
        end
        object labParam3: TLabel
          Left = 140
          Top = 90
          Width = 56
          Height = 15
          Alignment = taRightJustify
          Caption = 'labParam3'
        end
        object labParam4: TLabel
          Left = 140
          Top = 120
          Width = 56
          Height = 15
          Alignment = taRightJustify
          Caption = 'labParam4'
        end
        object labParam5: TLabel
          Left = 140
          Top = 147
          Width = 56
          Height = 15
          Alignment = taRightJustify
          Caption = 'labParam5'
        end
        object labParam6: TLabel
          Left = 140
          Top = 174
          Width = 56
          Height = 15
          Alignment = taRightJustify
          Caption = 'labParam6'
        end
        object labTituloParametros: TLabel
          Left = 16
          Top = 6
          Width = 128
          Height = 16
          Alignment = taCenter
          Caption = 'P A R '#194' M E T R O S '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtParam1: TDBEdit
          Left = 199
          Top = 31
          Width = 176
          Height = 23
          ImeName = 'Portuguese (Brazilian ABNT)'
          TabOrder = 0
        end
        object edtParam2: TDBEdit
          Left = 199
          Top = 59
          Width = 176
          Height = 23
          ImeName = 'Portuguese (Brazilian ABNT)'
          TabOrder = 1
        end
        object edtParam3: TDBEdit
          Left = 199
          Top = 87
          Width = 176
          Height = 23
          ImeName = 'Portuguese (Brazilian ABNT)'
          TabOrder = 2
        end
        object edtParam4: TDBEdit
          Left = 199
          Top = 117
          Width = 176
          Height = 23
          ImeName = 'Portuguese (Brazilian ABNT)'
          TabOrder = 3
        end
        object edtParam5: TDBEdit
          Left = 199
          Top = 144
          Width = 176
          Height = 23
          ImeName = 'Portuguese (Brazilian ABNT)'
          TabOrder = 4
        end
        object edtParam6: TDBEdit
          Left = 199
          Top = 171
          Width = 176
          Height = 23
          ImeName = 'Portuguese (Brazilian ABNT)'
          TabOrder = 5
        end
      end
      object panPrincipalLinhaTopo: TPanel
        Left = 0
        Top = 0
        Width = 596
        Height = 5
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clGradientActiveCaption
        ParentBackground = False
        TabOrder = 1
      end
      object panPreviewImg: TPanel
        Left = 411
        Top = 5
        Width = 185
        Height = 199
        Align = alRight
        TabOrder = 2
        object imgPreview: TImage
          Left = 1
          Top = 1
          Width = 183
          Height = 197
          Align = alClient
          Center = True
          Proportional = True
          Stretch = True
          ExplicitLeft = 64
          ExplicitTop = 64
          ExplicitWidth = 105
          ExplicitHeight = 105
        end
      end
      object panLinhaRodape: TPanel
        Left = 0
        Top = 204
        Width = 596
        Height = 5
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clGradientActiveCaption
        ParentBackground = False
        TabOrder = 3
      end
    end
  end
end
