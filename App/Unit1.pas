unit Unit1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTAdh�rent: TADOTable;
    ADOTAdh�rentid_adh�rent: TStringField;
    ADOTAdh�rentnom: TWideStringField;
    ADOTAdh�rentprenom: TWideStringField;
    ADOTAdh�rentadresse: TWideStringField;
    ADOTAdh�rentdateNaiss: TDateTimeField;
    ADOTAdh�renttel: TStringField;
    ADOTAdh�rentdateFinEtude: TDateTimeField;
    ADOTAdh�rentPhoto_ad: TBlobField;
    ADOTAdh�rentStatut_ad: TStringField;
    ADOTAdh�rentid_specialit�: TStringField;
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
