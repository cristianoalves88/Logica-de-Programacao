program QS7;

{$APPTYPE CONSOLE}

uses
  uTroco in 'uTroco.pas',
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas' {$R *.RES};

var
  vTroco:string;

{$R *.RES}


begin
	writeLn ( 'Teste QS7' ) ;
  Writeln (' ');
	writeLn ( 'Digite um Valor.' ) ;
  readLn  (vTroco);


  MostraResultado(vTroco);
  Readln(vTroco);

end.

