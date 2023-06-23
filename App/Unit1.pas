unit Unit1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTAdhérent: TADOTable;
    ADOTAdhérentid_adhérent: TStringField;
    ADOTAdhérentnom: TWideStringField;
    ADOTAdhérentprenom: TWideStringField;
    ADOTAdhérentadresse: TWideStringField;
    ADOTAdhérentdateNaiss: TDateTimeField;
    ADOTAdhérenttel: TStringField;
    ADOTAdhérentdateFinEtude: TDateTimeField;
    ADOTAdhérentPhoto_ad: TBlobField;
    ADOTAdhérentStatut_ad: TStringField;
    ADOTAdhérentid_specialité: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

end.
