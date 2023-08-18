unit MoveImage_u;
//Veer Gosai
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TiMoveImage = class(TForm)
    imgBlock: TImage;
    procedure imgBlockMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgBlockMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure imgBlockMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  iMoveImage: TiMoveImage;
  IsDraggingObject: Boolean;
  DragDist: TPoint;          //Point Varibles Store A X and Y Value

implementation

{$R *.dfm}

//Activate Form
procedure TiMoveImage.FormActivate(Sender: TObject);
begin
  IsDraggingObject := False;
end;

//When Image Is Clicked
procedure TiMoveImage.imgBlockMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IsDraggingObject := True;
  DragDist := Point(X, Y);
end;

//When Mouse Moves
//1. If Mouse = Left Click
//2. If Moused Clicked (imgBlockMouseDown)
//3. Updates Movement Location Of Object (May Require 'Refresh;' On Some Comupters)
procedure TiMoveImage.imgBlockMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if (ssLeft in Shift) AND IsDraggingObject then
  begin
    imgBlock.Left := imgBlock.Left + X - DragDist.X;
    imgBlock.Top := imgBlock.Top + Y - DragDist.Y;
  end;

  //Refresh;
end;

//When You Stop Clicking
procedure TiMoveImage.imgBlockMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IsDraggingObject := False;

end;

end.
