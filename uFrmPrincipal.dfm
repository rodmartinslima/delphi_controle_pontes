inherited FrmPrincipal: TFrmPrincipal
  Caption = 'Controle de Pontes'
  ClientHeight = 560
  ClientWidth = 941
  WindowState = wsMaximized
  OnClick = FormClick
  ExplicitWidth = 941
  ExplicitHeight = 560
  TextHeight = 15
  inherited panFrmBaseTop: TPanel
    Width = 941
    Color = clTeal
    ExplicitWidth = 941
    inherited imgBtnFechar: TImage
      Left = 910
      ExplicitLeft = 910
    end
  end
  inherited panFrmBaseBotton: TPanel
    Top = 519
    Width = 941
    Color = clTeal
    ParentBackground = False
    ExplicitTop = 519
    ExplicitWidth = 941
    inherited btnFechar: TBitBtn
      Left = 856
      ExplicitLeft = 856
    end
  end
  inherited panFrmBasePrincipal: TPanel
    Width = 941
    Height = 497
    BevelOuter = bvRaised
    ExplicitWidth = 941
    ExplicitHeight = 497
    object panMenuLeft: TPanel
      Left = 1
      Top = 1
      Width = 208
      Height = 495
      Align = alLeft
      BevelOuter = bvNone
      Color = cl3DLight
      ParentBackground = False
      TabOrder = 0
      object btnBlocoEstaca: TBitBtn
        Left = 4
        Top = 44
        Width = 201
        Height = 75
        Caption = 'Bloco Estaca'
        DisabledImageName = 'btnBlocoEstaca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615808
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnBlocoEstacaClick
      end
      object BitBtn1: TBitBtn
        Left = 4
        Top = 125
        Width = 201
        Height = 75
        Caption = 'Sapata'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615808
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btnBlocoEstacaClick
      end
      object BitBtn2: TBitBtn
        Left = 4
        Top = 205
        Width = 201
        Height = 75
        Caption = 'Tubul'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615808
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnBlocoEstacaClick
      end
      object panMenuTopo: TPanel
        Left = 0
        Top = 0
        Width = 208
        Height = 41
        Align = alTop
        Color = 12615808
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615808
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object labMsgMenu: TLabel
          Left = 1
          Top = 1
          Width = 206
          Height = 39
          Align = alClient
          Alignment = taCenter
          Caption = 'Menu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -27
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
          ExplicitWidth = 65
          ExplicitHeight = 37
        end
      end
    end
    object pgcPrincipal: TPageControl
      AlignWithMargins = True
      Left = 209
      Top = 1
      Width = 731
      Height = 495
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      TabOrder = 1
    end
  end
  object ImageList: TImageList
    Left = 16
    Top = 495
  end
end
