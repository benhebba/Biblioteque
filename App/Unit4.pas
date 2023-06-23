unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.Win.ADODB,
  Datasnap.DBClient, Vcl.Buttons;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Label2: TLabel;
    Image1: TImage;
    ADOQuery1: TADOQuery;
    Label3: TLabel;
    ComboBox1: TComboBox;
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit5;

procedure TForm4.Button1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
if messagedlg ('Voulez vous Supprimer la ligne',mtconfirmation,[mbyes,mbno],0)=mryes then
DataModule1.ADOTAdhérent.Delete;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
Form4.Close;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
DataModule1.ADOTAdhérent.Edit;
Form3.Show;
end;

procedure TForm4.Edit1Change(Sender: TObject);
Var
CountR : integer;
begin
if ComboBox1.Text='Nom' then
if Edit1.text ='' then DataModule1.ADOTAdhérent.Filtered:=false else
   begin
   DataModule1.ADOTAdhérent.Filtered:=False;
   DataModule1.ADOTAdhérent.Filter:= 'nom' +' LIKE ' + Quotedstr (Edit1.text+'%');
   DataModule1.ADOTAdhérent.Filtered:=True;
   CountR:= DataModule1.ADOTAdhérent.RecordCount;
   if CountR=0 then
   Begin
   label3.visible:=True;
   Label3.Caption := 'The word '+'"'+Edit1.text+'"'+' Not found';
   End
   else
   label3.visible := False;
   end;
if ComboBox1.Text='Id' then
if Edit1.text ='' then DataModule1.ADOTAdhérent.Filtered:=false else
   begin
   DataModule1.ADOTAdhérent.Filtered:=False;
   DataModule1.ADOTAdhérent.Filter:='id_adhérent' +' LIKE ' + Quotedstr (Edit1.text+'%');
   DataModule1.ADOTAdhérent.Filtered:=True;
    CountR:= DataModule1.ADOTAdhérent.RecordCount;
   if CountR=0 then
   Begin
   label3.visible:=True;
   Label3.Caption := 'The word '+'"'+Edit1.text+'"'+' Not found';
   End
   else
   label3.visible := False;
   end;
if ComboBox1.Text='Specialite' then
if Edit1.text ='' then DataModule1.ADOTAdhérent.Filtered:=false else
   begin
   DataModule1.ADOTAdhérent.Filtered:=False;
   DataModule1.ADOTAdhérent.Filter:= 'id_specialité' +' LIKE ' + Quotedstr (Edit1.text+'%');
   DataModule1.ADOTAdhérent.Filtered:=True;
    CountR:= DataModule1.ADOTAdhérent.RecordCount;
   if CountR=0 then
   Begin
   label3.visible:=True;
   Label3.Caption := 'The word '+'"'+Edit1.text+'"'+' Not found';
   End
   else
   label3.visible := False;
   end;
if ComboBox1.Text='Prenom' then
if Edit1.text ='' then DataModule1.ADOTAdhérent.Filtered:=false else
   begin
   DataModule1.ADOTAdhérent.Filtered:=False;
   DataModule1.ADOTAdhérent.Filter:= 'prenom' +' LIKE ' + Quotedstr (Edit1.text+'%');
   DataModule1.ADOTAdhérent.Filtered:=True;
    CountR:= DataModule1.ADOTAdhérent.RecordCount;
   if CountR=0 then
   Begin
   label3.visible:=True;
   Label3.Caption := 'The word '+'"'+Edit1.text+'"'+' Not found';
   End
   else
   label3.visible := False;
   end;
end;


procedure TForm4.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if Edit1.Text ='' then
label3.visible :=False;
end;

end.
