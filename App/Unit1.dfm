object DataModule1: TDataModule1
  Height = 807
  Width = 1084
  PixelsPerInch = 96
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=GestionBiblioth'#232'que;Data Source=YACINE-' +
      'PC;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=YACINE-PC;Use Encryption for Data=False;Tag w' +
      'ith column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 24
  end
  object ADOTAdhérent: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Adh'#233'rent'
    Left = 56
    Top = 104
    object ADOTAdhérentid_adhérent: TStringField
      DisplayWidth = 10
      FieldName = 'id_adh'#233'rent'
      Size = 4
    end
    object ADOTAdhérentnom: TWideStringField
      DisplayWidth = 13
      FieldName = 'nom'
    end
    object ADOTAdhérentprenom: TWideStringField
      DisplayWidth = 15
      FieldName = 'prenom'
    end
    object ADOTAdhérentadresse: TWideStringField
      DisplayWidth = 14
      FieldName = 'adresse'
      Size = 50
    end
    object ADOTAdhérentdateNaiss: TDateTimeField
      DisplayWidth = 15
      FieldName = 'dateNaiss'
    end
    object ADOTAdhérenttel: TStringField
      DisplayWidth = 14
      FieldName = 'tel'
      Size = 10
    end
    object ADOTAdhérentdateFinEtude: TDateTimeField
      DisplayWidth = 18
      FieldName = 'dateFinEtude'
    end
    object ADOTAdhérentPhoto_ad: TBlobField
      DisplayWidth = 10
      FieldName = 'Photo_ad'
    end
    object ADOTAdhérentStatut_ad: TStringField
      DisplayWidth = 10
      FieldName = 'Statut_ad'
      Size = 7
    end
    object ADOTAdhérentid_specialité: TStringField
      DisplayWidth = 10
      FieldName = 'id_specialit'#233
      Size = 4
    end
  end
end
