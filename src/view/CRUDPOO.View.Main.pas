unit CRUDPOO.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, CRUDPOO.Model.Endereco, CRUDPOO.Model.Pessoa,
  CRUDPOO.DAO.Pessoa;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation


{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  lPessoa: TPessoa;
  lEndereco: TEndereco;
  lDAOPessoa: TDAOPessoa;
  i: Integer;
begin
  lPessoa := TPessoa.Create;
  lDAOPessoa := TDAOPessoa.Create;
  try
    lPessoa.Id := 1;
    lPessoa.Nome := 'Igor';

    lEndereco := TEndereco.Create;
    lEndereco.Id := 1;
    lEndereco.IdPessoa := lPessoa.Id;
    lEndereco.Logradouro := 'Rua do teste 1';
    lPessoa.Endereco.Add(lEndereco);

    lEndereco := TEndereco.Create;
    lEndereco.Id := 2;
    lEndereco.IdPessoa := lPessoa.Id;
    lEndereco.Logradouro := 'Rua do teste 2';
    lPessoa.Endereco.Add(lEndereco);

    lDAOPessoa.CreatePessoa(lPessoa);
  finally
    lPessoa.DisposeOf;
    lEndereco.DisposeOf;
    lDAOPessoa.DisposeOf;
  end;
end;
//begin
//  lPessoa := TPessoa.Create;
//
//  try
//    lPessoa.Id := 1;
//    lPessoa.Nome := 'Igor';
//
//    lEndereco := TEndereco.Create;
//    lEndereco.Id := 1;
//    lEndereco.IdPessoa := lPessoa.Id;
//    lEndereco.Logradouro := 'Rua do teste 1';
//    lPessoa.Endereco.Add(lEndereco);
//
//    lEndereco := TEndereco.Create;
//    lEndereco.Id := 2;
//    lEndereco.IdPessoa := lPessoa.Id;
//    lEndereco.Logradouro := 'Rua do teste 2';
//    lPessoa.Endereco.Add(lEndereco);
//
//    Memo1.Lines.Add('Id: ' + lPessoa.id.ToString);
//    Memo1.Lines.Add('Id: ' + lPessoa.Nome);
//
//    Memo1.Lines.Add('----------------------');
//    for I := 0 to Pred(lPessoa.Endereco.Count) do
//    begin
//      Memo1.Lines.Add('Id: ' +lPessoa.Endereco[i].Id.ToString);
//      Memo1.Lines.Add('Id Pessoa: ' +lPessoa.Endereco[i].IdPessoa.ToString);
//      Memo1.Lines.Add('Logradouro: ' +lPessoa.Endereco[i].Logradouro);
//      Memo1.Lines.Add('----------------------');
//    end;
//  finally
//    lPessoa.DisposeOf;
//    lEndereco.DisposeOf;
//  end;
//end;

end.
