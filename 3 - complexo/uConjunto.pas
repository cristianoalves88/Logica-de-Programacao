unit uConjunto;

interface

uses
  StrUtils,Classes;

type

  TConjunto = class
  private
    FQuantidade: array of Integer;
  public
    constructor Create(Quantidade: Integer); reintroduce;
    procedure Connect(n1,n2:integer);
    function Query(n1,n2:integer):Boolean;
  end;

implementation

  constructor TConjunto.Create(Quantidade: Integer);
  begin
    inherited Create;
    SetLength(FQuantidade, Quantidade);
  end;

  procedure TConjunto.Connect(n1,n2:integer);
  var
    I:integer;
  begin
    TConjunto.Create(n2-n1);
    for I := Low(FQuantidade) to High(FQuantidade) do
    begin
      FQuantidade[I] := n1;
      inc(n1);
    end;
  end;

  function TConjunto.Query(n1,n2:integer):Boolean;
  var
    I:integer;
    Achou1,Achou2:integer;
  begin
    Achou1 := 0;
    Achou2 := 0;
    for I := Low(FQuantidade) to High(FQuantidade) do
    begin
      if FQuantidade[I] = n1 then
        Achou1 := 1;

      if FQuantidade[I] = n2 then
        Achou1 := 1;
    end;

    if (n1 > 0) and (n2 > 0) then
      Result := True
    else
      Result := False;
  end;
end.


