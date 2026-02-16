unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    Shapes: array[0..5] of TShape;
    VelX: array[0..5] of Integer;
    VelY: array[0..5] of Integer;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

// Intialization of the shapes
procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  Randomize;
  Shapes[0] := Shape1;
  Shapes[1] := Shape2;
  Shapes[2] := Shape3;
  Shapes[3] := Shape4;
  Shapes[4] := Shape5;
  Shapes[5] := Shape6;

  for i := 0 to 5 do
  begin
    VelX[i] := Random(5) + 1;  // random speed
    VelY[i] := Random(5) + 1;
  end;
end;

// Movement
procedure TForm1.Timer1Timer(Sender: TObject);
var
  i, j: Integer;
begin
  for i := 0 to 5 do
  begin
    // Move
    Shapes[i].Left := Shapes[i].Left + VelX[i];
    Shapes[i].Top  := Shapes[i].Top  + VelY[i];

    // Bounce on window edges
    if Shapes[i].Left <= 0 then
      VelX[i] := Abs(VelX[i]);

    if Shapes[i].Left + Shapes[i].Width >= ClientWidth then
      VelX[i] := -Abs(VelX[i]);

    if Shapes[i].Top <= 0 then
      VelY[i] := Abs(VelY[i]);

    if Shapes[i].Top + Shapes[i].Height >= ClientHeight then
      VelY[i] := -Abs(VelY[i]);
  end;

  // Collision between shapes
  for i := 0 to 5 do
    for j := i + 1 to 5 do
      if Shapes[i].BoundsRect.IntersectsWith(Shapes[j].BoundsRect) then
      begin
        VelX[i] := -VelX[i];
        VelY[i] := -VelY[i];
        VelX[j] := -VelX[j];
        VelY[j] := -VelY[j];
      end;
end;

end.
