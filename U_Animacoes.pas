unit U_Animacoes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Ani, FMX.Edit;

type
  TFrmAnimacoes = class(TForm)
    Circle1: TCircle;
    BtnPlay: TButton;
    FloatAnimation1: TFloatAnimation;
    LblDuracao: TLabel;
    EdtDuracao: TEdit;
    BtnPause: TButton;
    procedure BtnPauseClick(Sender: TObject);
    procedure BtnPlayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAnimacoes: TFrmAnimacoes;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

procedure TFrmAnimacoes.BtnPauseClick(Sender: TObject);
begin
    FloatAnimation1.Enabled  := false;
    EdtDuracao.Text          := '0';
end;

procedure TFrmAnimacoes.BtnPlayClick(Sender: TObject);
begin
    FloatAnimation1.Enabled  := false;
    FloatAnimation1.Duration := StrToInt(EdtDuracao.Text);
    FloatAnimation1.Enabled  := true;
end;

end.
