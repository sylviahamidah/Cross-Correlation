object Form1: TForm1
  Left = 309
  Top = 113
  Width = 1082
  Height = 653
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 192
    Width = 155
    Height = 13
    Caption = 'Input The Index Time Lag Value:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Chart1: TChart
    Left = 16
    Top = 24
    Width = 609
    Height = 161
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Gait Signal')
    BottomAxis.Title.Caption = 'Sample Number'
    LeftAxis.Title.Caption = 'Amplitudo'
    View3D = False
    TabOrder = 0
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 10485760
      Title = 'Heel (x)'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 8388863
      Title = 'Toe (y)'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart2: TChart
    Left = 16
    Top = 248
    Width = 609
    Height = 161
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Cross Correlation')
    BottomAxis.Title.Caption = 'Index Time Lag (L)'
    LeftAxis.Title.Caption = 'Rxy Value'
    Legend.LegendStyle = lsValues
    View3D = False
    TabOrder = 1
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'Rxy Value'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart3: TChart
    Left = 16
    Top = 424
    Width = 609
    Height = 161
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Normalization')
    BottomAxis.Title.Caption = 'Index Time Lag'
    LeftAxis.Title.Caption = 'Rxy Normalization'
    Legend.LegendStyle = lsValues
    View3D = False
    TabOrder = 2
    object Series4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clPurple
      Title = 'Norm'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object ListBox1: TListBox
    Left = 640
    Top = 24
    Width = 369
    Height = 385
    ItemHeight = 13
    TabOrder = 3
  end
  object Button1: TButton
    Left = 640
    Top = 424
    Width = 121
    Height = 25
    Caption = 'Show Data'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 176
    Top = 192
    Width = 65
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
  object Button2: TButton
    Left = 784
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 192
    Width = 89
    Height = 25
    Caption = 'Shift The Plot'
    TabOrder = 7
    OnClick = Button3Click
  end
end
