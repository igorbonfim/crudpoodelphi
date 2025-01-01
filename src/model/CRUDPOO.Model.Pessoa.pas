unit CRUDPOO.Model.Pessoa;

interface

uses
  CRUDPOO.Model.Endereco,
  System.Generics.Collections;

type
  TPessoa = class
    private
    FId: Integer;
    FNome: String;
    FEndereco: TList<TEndereco>;
    public
      property Id : Integer read FId write FId;
      property Nome : String read FNome write FNome;
      property Endereco : TList<TEndereco> read FEndereco write FEndereco;
      constructor Create;
      destructor Destroy; override;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin
  FEndereco := TList<TEndereco>.Create;
end;

destructor TPessoa.Destroy;
begin
  FEndereco.DisposeOf;
  inherited;
end;

end.
