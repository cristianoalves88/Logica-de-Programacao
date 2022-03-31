program QS6;

{$APPTYPE CONSOLE}

uses
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas';

var
  sSubstituir:TSubstitui;
  sStr:string;
  sDe:string;
  sPara:string;

{$R *.RES}

begin
	writeLn ( 'Teste QS6' ) ;
  Writeln (' ');
	writeLn ( 'Digite um texto.' ) ;
  readLn  ( sStr );
  writeLn ( 'Digite uma palavra parte de uma palavra para ser substituido.' ) ;
  readLn  ( sDe );
	writeLn ( 'Digite o nova palvra ou parte de uma palavra para ser substituido.' ) ;
  readLn  ( sPara );

  writeLn (sSubstituir.Substituir(sStr,sDe,sPara));

  readLn  (sStr);

end.

