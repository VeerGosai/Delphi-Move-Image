object iMoveImage: TiMoveImage
  Left = 0
  Top = 0
  Caption = 'Move Image'
  ClientHeight = 500
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object imgBlock: TImage
    Left = 300
    Top = 200
    Width = 100
    Height = 100
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000640000
      0064080600000070E29554000000017352474200AECE1CE90000000467414D41
      0000B18F0BFC61050000000970485973000012740000127401DE661F78000000
      FD4944415478DAEDD14111003008C030F02F7A4C461FC9D541F7CDFCA858435A
      0C893124C6901843620C893124C6901843620C893124C6901843620C893124C6
      901843620C893124C6901843620C893124C6901843620C893124C6901843620C
      893124C6901843620C893124C6901843620C893124C6901843620C893124C690
      1843620C893124C6901843620C893124C6901843620C893124C6901843620C89
      3124C6901843620C893124C6901843620C893124C6901843620C893124C69018
      43620C893124C6901843620C893124C6901843620C893124C6901843620C8931
      24C6901843620C893124C6901843620C893124C6901843620C893124E600158E
      C79D0A340E7C0000000049454E44AE426082}
    OnMouseDown = imgBlockMouseDown
    OnMouseMove = imgBlockMouseMove
    OnMouseUp = imgBlockMouseUp
  end
end