unit ProjetoUdemy;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Resultado: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Functions: TLabel;
    Total: TLabel;
    Valor2: TLabel;
    Valor1: TLabel;
    parOUimpar: TButton;
    Contador: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Data: TToggleBox;
    Edit4: TEdit;
    edtNumero: TEdit;
    EstruturaRepeticao: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure parOUimparClick(Sender: TObject);
    procedure ContadorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataChange(Sender: TObject);
    procedure ResultadoClick(Sender: TObject);
  private
    function Soma(a, b: Integer): Integer;
  procedure VErificarParImpar(iNomedaVariavel:Integer);
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.DataChange(Sender: TObject);
var
  x:TDate;
  y:TDate;

begin

//TODO:  Now = hora
//TODO:  Date = data

  x:=Now;
  y:=Date;
  Edit1.Text:=TimeToStr(x);
  Edit2.Text:=DateToStr(y);

//TODO: Editar classes e estilos com With

  With Edit1 do
  begin
    MaxLength:=50;
    Width:=194;
    Color:=clYellow;
    Font.Size:=12;
    Font.Style:=[fsBold];
    Height:=25;
  end;

    With Edit2 do
  begin
    MaxLength:=50;
    Width:=194;
    Color:=clBlue;
    Font.Size:=12;
    Font.Style:=[fsBold];
    Height:=25;
  end;


end;

procedure TForm1.ResultadoClick(Sender: TObject);
begin
  Edit7.Text:= IntToStr(Soma(StrToInt(Edit5.Text), StrToInt(Edit6.Text)));
end;

//TODO: Função de soma function
{TODO: Quando criar uma FUNCTION actionar o
CTRL+SHIT+C para ela ser declarada no PRIVATE}

function TForm1.Soma(a,b:Integer):Integer;
begin
 Result:= a * b;
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
end;

//TODO: Criação do Procedure

procedure TForm1.VerificarParImpar(iNomedaVariavel:Integer);
begin
  if (iNomedaVariavel mod 2 = 0) then
  ShowMessage('Número: ' +iNomedaVariavel.ToString()+ ' é Par')
  else
    ShowMessage('Número ' +iNomedaVariavel.ToString()+ ' é ímpar');
end;




procedure TForm1.Button1Click(Sender: TObject);
var
  iValor1:Integer;
  iValor2:Integer;
begin
  iValor1:=40;
  iValor2:=40;

  if iValor1=iValor2 then
  ShowMessage('Os valores são iguais')
  else
  ShowMessage('Os valores são diferentes')

end;

 //TODO: Estrutura de repetição While Do

procedure TForm1.Button2Click(Sender: TObject);
var i:Integer;
begin
  while i < 10 do
  begin
    if (i mod 2 = 0) then
    begin
      if (i = 6) then
      begin
        ShowMessage('Valor é '+ 1.ToString());
        inc(i);
        Continue;
      end;
      if ( i = 8 ) then
      begin
        ShowMessage('Parou quando i =' +i.ToString());
        break;
      end;
    end;
    inc(i);
  end;

end;


 //TODO: Estrutura condicional case of
procedure TForm1.Button3Click(Sender: TObject);
var i:Integer;
begin
  i:=StrToInt(edtNumero.Text);
  case i of
    1, 2, 3, 4, 5, 6, 7: begin
      ShowMessage('Digitado o número ' + i.ToString());
    end;
    //2: begin
    //  ShowMessage('Digitado o número 2');
    //end;
    //3: begin
    //  ShowMessage('Digitado o número 3');
    //end;
    else
      ShowMessage('Número não está permitido');
  end;
end;

 { TODO:
 -Criação de um modal,
 1 -Crie um novo formulario,
 2 - importe a unidade dele dentro de uses, Unit2,
 3 - Crie algum link para acessar, como um botão,
 4 - use o Self para informar de qual tela sera aberto,
  nesse caso o self é ele mesmo (principal) }

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form2:=TForm2.Create(Self);
  Form2.ShowModal; //Toda vez que sair de show, destruir para desc memoria
  Form2.Release;

end;


//TODO: Chamando a procedure e validando o par ou impar
procedure TForm1.parOUimparClick(Sender: TObject);
begin
  VerificarParImpar(StrToInt(Edit4.Text));
end;



//TODO: Estrutura de repetição contador
//de 0 a 50 e caminho reverso de 50 a 0


procedure TForm1.ContadorClick(Sender: TObject);
var i, y:Integer;

begin
  for I := 1949 to 2021 do
  begin

    Edit3.Text:=i.ToString(i);
    ListBox1.Items.Add(i.ToString());
  end;

   for y := 2021 DownTo 1949 do
  begin
    ListBox2.Items.Add(y.ToString());
  end;

end;






end.

