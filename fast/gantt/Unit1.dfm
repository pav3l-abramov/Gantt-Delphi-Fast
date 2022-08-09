object Form1: TForm1
  Left = 540
  Top = 187
  Caption = 'Form1'
  ClientHeight = 638
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  DesignSize = (
    760
    638)
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 345
    Top = 428
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label4: TLabel
    Left = 228
    Top = 418
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object PageControl1: TPageControl
    Left = -6
    Top = 0
    Width = 770
    Height = 638
    ActivePage = TabSheet3
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      DesignSize = (
        762
        610)
      object Chart1: TChart
        Left = 3
        Top = 0
        Width = 759
        Height = 613
        Cursor = crHandPoint
        AllowPanning = pmNone
        Border.EndStyle = esSquare
        Border.Visible = True
        Legend.Visible = False
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.DateTimeFormat = 'dd/MM/yyyy'
        BottomAxis.Grid.Color = clBlack
        BottomAxis.GridCentered = True
        BottomAxis.MinorTicks.Visible = False
        BottomAxis.Ticks.Visible = False
        Hover.Visible = False
        LeftAxis.Axis.Visible = False
        LeftAxis.Grid.Color = clBlack
        LeftAxis.GridCentered = True
        LeftAxis.MinorTicks.Visible = False
        LeftAxis.TickInnerLength = 1
        LeftAxis.Ticks.Width = 6
        LeftAxis.Ticks.Visible = False
        LeftAxis.TicksInner.Width = 0
        LeftAxis.TicksInner.Visible = False
        RightAxis.GridCentered = True
        TopAxis.GridCentered = True
        View3D = False
        Zoom.Allow = False
        BevelOuter = bvNone
        TabOrder = 0
        Anchors = [akLeft, akTop, akRight, akBottom]
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TGanttSeries
          Cursor = crArrow
          ClickableLine = False
          Pointer.InflateMargins = True
          Pointer.Pen.Visible = False
          Pointer.SizeUnits = suAxis
          Pointer.Style = psRectangle
          XValues.Name = 'Start'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          Callout.Style = psRightTriangle
          Callout.Arrow.Visible = False
          StartValues.Name = 'Start'
          StartValues.Order = loAscending
          EndValues.Name = 'End'
          EndValues.Order = loNone
          NextTask.Name = 'NextTask'
          NextTask.Order = loNone
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      DesignSize = (
        762
        610)
      object Chart2: TChart
        Left = 3
        Top = 0
        Width = 759
        Height = 612
        Legend.Visible = False
        Title.Text.Strings = (
          'TChart')
        View3D = False
        TabOrder = 0
        Anchors = [akLeft, akTop, akRight, akBottom]
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series2: TGanttSeries
          PercentFormat = 'h:mm'
          ValueFormat = 'h:mm'
          ClickableLine = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'Start'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          Callout.Style = psRightTriangle
          Callout.Arrow.Visible = False
          StartValues.Name = 'Start'
          StartValues.Order = loAscending
          EndValues.Name = 'End'
          EndValues.Order = loNone
          NextTask.Name = 'NextTask'
          NextTask.Order = loNone
          Data = {0000000000}
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      DesignSize = (
        762
        610)
      object Chart3: TChart
        Left = 3
        Top = 0
        Width = 759
        Height = 614
        Legend.Visible = False
        Title.Text.Strings = (
          'TChart')
        View3D = False
        TabOrder = 0
        Anchors = [akLeft, akTop, akRight, akBottom]
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series3: TGanttSeries
          ClickableLine = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'Start'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          Callout.Style = psRightTriangle
          Callout.Arrow.Visible = False
          StartValues.Name = 'Start'
          StartValues.Order = loAscending
          EndValues.Name = 'End'
          EndValues.Order = loNone
          NextTask.Name = 'NextTask'
          NextTask.Order = loNone
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      DesignSize = (
        762
        610)
      object Label1: TLabel
        Left = 133
        Top = 567
        Width = 68
        Height = 13
        Anchors = [akBottom]
        Caption = 'Name member'
      end
      object Label2: TLabel
        Left = 260
        Top = 567
        Width = 90
        Height = 13
        Anchors = [akBottom]
        Caption = 'Start date member'
      end
      object Label5: TLabel
        Left = 389
        Top = 567
        Width = 84
        Height = 13
        Anchors = [akBottom]
        Caption = 'End date member'
      end
      object Label6: TLabel
        Left = 515
        Top = 567
        Width = 86
        Height = 13
        Anchors = [akBottom]
        Caption = 'Resource member'
      end
      object Button1: TButton
        Left = 651
        Top = 586
        Width = 105
        Height = 21
        Anchors = [akRight, akBottom]
        Caption = 'Load Data From File'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 133
        Top = 586
        Width = 121
        Height = 21
        Anchors = [akBottom]
        TabOrder = 1
      end
      object Edit4: TEdit
        Left = 515
        Top = 586
        Width = 121
        Height = 21
        Anchors = [akBottom]
        TabOrder = 2
      end
      object Chart4: TChart
        Left = 3
        Top = 0
        Width = 759
        Height = 557
        Legend.Visible = False
        Title.Text.Strings = (
          'TChart')
        View3D = False
        TabOrder = 3
        Anchors = [akLeft, akTop, akRight, akBottom]
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series4: TGanttSeries
          ClickableLine = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'Start'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          Callout.Style = psRightTriangle
          Callout.Arrow.Visible = False
          StartValues.Name = 'Start'
          StartValues.Order = loAscending
          EndValues.Name = 'End'
          EndValues.Order = loNone
          NextTask.Name = 'NextTask'
          NextTask.Order = loNone
        end
      end
      object Button2: TButton
        Left = 11
        Top = 563
        Width = 105
        Height = 44
        Anchors = [akLeft, akBottom]
        Caption = 'Add New Line'
        TabOrder = 4
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 651
        Top = 563
        Width = 105
        Height = 21
        Anchors = [akRight, akBottom]
        Caption = 'Clear'
        TabOrder = 5
        OnClick = Button3Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 260
        Top = 586
        Width = 123
        Height = 21
        Date = 44705.000000000000000000
        Time = 0.557243391202064200
        Color = clBtnFace
        DateMode = dmUpDown
        ParentShowHint = False
        ShowHint = False
        TabOrder = 6
      end
      object DateTimePicker2: TDateTimePicker
        Left = 389
        Top = 586
        Width = 120
        Height = 21
        Date = 44705.000000000000000000
        Time = 0.557243391202064200
        Color = clBtnFace
        Kind = dtkTime
        ParentShowHint = False
        ShowHint = False
        TabOrder = 7
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 726
    Top = 592
  end
end
