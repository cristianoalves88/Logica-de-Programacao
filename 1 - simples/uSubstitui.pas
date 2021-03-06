unit uSubstitui;

interface

uses
  uISubstitui;

type
  TSubstitui = class(TInterfacedObject,ISubstitui)
  private

  public
  function Substituir(Str, Velho, Novo: String): string;

  end;

implementation


{ TSubstitui }

function TSubstitui.Substituir(Str, Velho, Novo: String): String;
var
   Cont : Integer;
begin
 if Novo = Velho then
  begin
    Result := Str;
    Exit;
  end;

  cont := Pos(Velho,Str);

  while Cont > 0 do
  begin
    Delete(Str,Cont,Length(Velho));
    Insert(Novo,Str,Cont);
    cont := Pos(Velho,Str);
  end;

  Result := Str;
end;

end.

