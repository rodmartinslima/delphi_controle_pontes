object DMPrincipal: TDMPrincipal
  Height = 258
  Width = 599
  object TransactionPrincipal: TFDTransaction
    Connection = FDConnection1
    Left = 160
    Top = 24
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=C:\Users\rodri\Desktop\Delphi\DNITANA\BD\DNITANA.FDB'
      'Server=localhost'
      'User_Name=sysdba'
      'Password=masterkey')
    Connected = True
    LoginPrompt = False
    Transaction = TransactionPrincipal
    Left = 40
    Top = 24
  end
  object Qry_Bloco_Estaca: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from BLOCO_ESTACA')
    Left = 32
    Top = 96
    object Qry_Bloco_EstacaID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      KeyFields = 'ID'
      Origin = 'ID'
      Required = True
    end
    object Qry_Bloco_EstacaDATA_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      DisplayWidth = 35
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object Qry_Bloco_EstacaLADO_BLOCO: TFloatField
      DisplayLabel = 'Lado Bloco'
      DisplayWidth = 20
      FieldName = 'LADO_BLOCO'
      Origin = 'LADO_BLOCO'
    end
    object Qry_Bloco_EstacaALTURA_BLOCO: TFloatField
      DisplayLabel = 'Altura Bloco'
      DisplayWidth = 20
      FieldName = 'ALTURA_BLOCO'
      Origin = 'ALTURA_BLOCO'
    end
    object Qry_Bloco_EstacaDIAMETRO_PILAR: TFloatField
      DisplayLabel = 'Di'#226'metro Pilar'
      FieldName = 'DIAMETRO_PILAR'
      Origin = 'DIAMETRO_PILAR'
    end
    object Qry_Bloco_EstacaNUMERO_BLOCOS_NOVOS: TIntegerField
      DisplayLabel = 'Num. Blocos Novos'
      FieldName = 'NUMERO_BLOCOS_NOVOS'
      Origin = 'NUMERO_BLOCOS_NOVOS'
    end
    object Qry_Bloco_EstacaCOMPRIMENTO_SOLO_CS: TFloatField
      DisplayLabel = 'Comp. Solo (CS)'
      FieldName = 'COMPRIMENTO_SOLO_CS'
      Origin = 'COMPRIMENTO_SOLO_CS'
    end
    object Qry_Bloco_EstacaCOMPRIMENTO_ROCHA_CR: TFloatField
      DisplayLabel = 'Comp. Rocha (CR)'
      FieldName = 'COMPRIMENTO_ROCHA_CR'
      Origin = 'COMPRIMENTO_ROCHA_CR'
    end
    object Qry_Bloco_EstacaCOMPRIMENTO_TOTAL_CT: TFloatField
      DisplayLabel = 'Comp. Total (CT)'
      FieldName = 'COMPRIMENTO_TOTAL_CT'
      Origin = 'COMPRIMENTO_TOTAL_CT'
    end
    object Qry_Bloco_EstacaNUMERO_ESTACAS_BLOCO: TIntegerField
      DisplayLabel = 'Num. Estacas Bloco'
      FieldName = 'NUMERO_ESTACAS_BLOCO'
      Origin = 'NUMERO_ESTACAS_BLOCO'
    end
    object Qry_Bloco_EstacaNUMERO_TOTAL_ESTACAS: TIntegerField
      DisplayLabel = 'Num. Total Estacas'
      FieldName = 'NUMERO_TOTAL_ESTACAS'
      Origin = 'NUMERO_TOTAL_ESTACAS'
    end
    object Qry_Bloco_EstacaDIR_IMG: TStringField
      DisplayLabel = 'Caminho Imagem'
      FieldName = 'DIR_IMG'
      Origin = 'DIR_IMG'
      Size = 200
    end
  end
  object FDUpdateSQL: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO BLOCO_ESTACA'
      '(DATA_CADASTRO, LADO_BLOCO, ALTURA_BLOCO, DIAMETRO_PILAR, '
      
        '  NUMERO_BLOCOS_NOVOS, COMPRIMENTO_SOLO_CS, COMPRIMENTO_ROCHA_CR' +
        ', '
      
        '  COMPRIMENTO_TOTAL_CT, NUMERO_ESTACAS_BLOCO, NUMERO_TOTAL_ESTAC' +
        'AS, '
      '  DIR_IMG)'
      
        'VALUES (:NEW_DATA_CADASTRO, :NEW_LADO_BLOCO, :NEW_ALTURA_BLOCO, ' +
        ':NEW_DIAMETRO_PILAR, '
      
        '  :NEW_NUMERO_BLOCOS_NOVOS, :NEW_COMPRIMENTO_SOLO_CS, :NEW_COMPR' +
        'IMENTO_ROCHA_CR, '
      
        '  :NEW_COMPRIMENTO_TOTAL_CT, :NEW_NUMERO_ESTACAS_BLOCO, :NEW_NUM' +
        'ERO_TOTAL_ESTACAS, '
      '  :NEW_DIR_IMG)')
    ModifySQL.Strings = (
      'UPDATE BLOCO_ESTACA'
      
        'SET DATA_CADASTRO = :NEW_DATA_CADASTRO, LADO_BLOCO = :NEW_LADO_B' +
        'LOCO, '
      
        '  ALTURA_BLOCO = :NEW_ALTURA_BLOCO, DIAMETRO_PILAR = :NEW_DIAMET' +
        'RO_PILAR, '
      
        '  NUMERO_BLOCOS_NOVOS = :NEW_NUMERO_BLOCOS_NOVOS, COMPRIMENTO_SO' +
        'LO_CS = :NEW_COMPRIMENTO_SOLO_CS, '
      
        '  COMPRIMENTO_ROCHA_CR = :NEW_COMPRIMENTO_ROCHA_CR, COMPRIMENTO_' +
        'TOTAL_CT = :NEW_COMPRIMENTO_TOTAL_CT, '
      
        '  NUMERO_ESTACAS_BLOCO = :NEW_NUMERO_ESTACAS_BLOCO, NUMERO_TOTAL' +
        '_ESTACAS = :NEW_NUMERO_TOTAL_ESTACAS, '
      '  DIR_IMG = :NEW_DIR_IMG'
      'WHERE ID = :OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM BLOCO_ESTACA'
      'WHERE ID = :OLD_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ID, DATA_CADASTRO, LADO_BLOCO, ALTURA_BLOCO, DIAMETRO_PIL' +
        'AR, '
      
        '  NUMERO_BLOCOS_NOVOS, COMPRIMENTO_SOLO_CS, COMPRIMENTO_ROCHA_CR' +
        ', '
      
        '  COMPRIMENTO_TOTAL_CT, NUMERO_ESTACAS_BLOCO, NUMERO_TOTAL_ESTAC' +
        'AS, '
      '  DIR_IMG'
      'FROM BLOCO_ESTACA'
      'WHERE ID = :OLD_ID')
    Left = 136
    Top = 96
  end
end
