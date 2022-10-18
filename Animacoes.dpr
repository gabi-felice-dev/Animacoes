program Animacoes;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Animacoes in 'U_Animacoes.pas' {FrmAnimacoes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmAnimacoes, FrmAnimacoes);
  Application.Run;
end.
