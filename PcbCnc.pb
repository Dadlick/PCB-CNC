EnableExplicit

Macro GetFunctionProtoQuote
	"
EndMacro
Macro GetFunctionProto(dll, name)
	Global name.name
	name = GetFunction(dll, GetFunctionProtoQuote#name#GetFunctionProtoQuote)
	CompilerIf #PB_Compiler_Debugger  ; Only enable assert in debug mode
		If name = #Null
			Debug "Assert on line " + #PB_Compiler_Line + ", GetFunction(" + GetFunctionProtoQuote#dll#GetFunctionProtoQuote + ", " + GetFunctionProtoQuote#name#GetFunctionProtoQuote + ")"
		EndIf
	CompilerEndIf
EndMacro

Threaded _ClipperLib.i
PrototypeC.l InflatePaths64(*paths, delta.d, jointype.b , endtype.b, miter_limit.d, arc_tolerance.d, reverse_solution)
PrototypeC DisposeExportedCPaths64(*paths)

#NbDecimal = 6
#EquArrowDistance = 10
#MeName = "Sprint-layout To G-Code"
#MinInt = - 2147483648

CompilerSelect #PB_Compiler_OS
  CompilerCase #PB_OS_Linux 
    #Scroll_Width       = 18                 
  CompilerCase #PB_OS_MacOS           
    #Scroll_Width       = 18          
  CompilerDefault
    #Scroll_Width       = 18        
CompilerEndSelect 

Enumeration CustomEvent #PB_Event_FirstCustomValue
  #PlayButtonEvent
EndEnumeration
Enumeration Windows
  #Win
EndEnumeration

Enumeration Gadgets
  #Viewer = 1
  #Font  
  #ProjSettingsBtn
  #DrillSettingsBtn
  #PcbSettingsBtn
  #PcbCutSettingsBtn
  #ProjSettingsGadget
  #DrillSettingsGadget
  #PcbSettingsGadget
  #PcbCutSettingsGadget
  #OpenPltFileBtn
  #SavePcbGCodeBtn
  #SavePcbCutGCodeBtn
  #SaveDrillGCodeBtn
EndEnumeration

Enumeration Direction
  #Circle
  #Cw
  #Ccw
EndEnumeration

Structure VertexD
  X.d
  Y.d  
EndStructure 

Structure VertexI
  X.i
  Y.i  
EndStructure 

Structure Pline
  List Vertex.VertexD()
  List OffsetVertex.VertexD()
  List VertexI.VertexI()
  Nesting.i
  Direction.i  
  MinX.i
  MaxX.i
  MinY.i
  MaxY.i
  Dx.i
  Dy.i
  Ci.i
EndStructure 

Structure Layer
  Name.s
  CircleD.d
  CutDraw.i
  List Plines.Pline()
EndStructure  

Structure Line
  Sp.VertexD
  Ep.VertexD
EndStructure  

Structure Int
 i.i 
EndStructure

Structure Viewer2DGadgetCData
  Viewer.i
EndStructure

Structure Viewer2DGadgetData
  ViewerBackColor.i
  RulerBackColor.i
  State.i
  DrillColor.q
  OutlineColor.q
  PcbColor.q
  CutDrillColor.q
  CutOutlineColor.q
  CutPcbColor.q
  PenRulerColor.q
  RulerColor.q
  BorderColor.i
  AxisColor.q
  OffsetX.d
  OffsetY.d
  Zoom.d
  MinX.d
  MaxX.d
  MinY.d
  MaxY.d
  PixelSize.d
  List Layers.Layer()
  UsingMoveWorkArea.i
  MoveWorkAreaStartdeltaX.d
  MoveWorkAreaStartdeltaY.d
  StartPointPressX.i
  StartPointPressY.i
  ZoomFaktor.d
  RulerSize.i
  StatusBarSize.i
  VerticalRuler.i  
  HorizontalRuler.i
  Container.i
  Corner.i
  Fontid.i
  X0.d
  Y0.d
EndStructure

Structure ProjSettingsGadgetData
  ScaleGadget.i
  RoundGadget.i
  NullPosTlGadget.i
  NullPosTrGadget.i
  NullPosBlGadget.i
  NullPosBrGadget.i
  NullPosCGadget.i
  BiasGadget.i
  BiasXGadget.i
  BiasYGadget.i
  PcbDxGadget.i
  PcbDyGadget.i
  SafeZGadget.i
  ParkingXGadget.i
  ParkingYGadget.i
  ParkingZGadget.i
  ParkingStartGadget.i
  ParkingEndGadget.i
  Header1.i
  Header2.i
  Header3.i
  Header4.i
  Header5.i
  Header6.i
  BiasXTxt.i
  BiasYTxt.i
  PcbDxTxt.i
  PcbDyTxt.i
  ParkingXTxt.i
  ParkingYTxt.i
  ParkingZTxt.i
EndStructure

Structure PcbSettingsGadgetData
  PcbTopDrawGadget.i
  PcbTopCutGadget.i
  PcbTopNameGadget.i
  PcbBotDrawGadget.i
  PcbBotCutGadget.i
  PcbBotNameGadget.i
  OffsetGadget.i
  CutDepthGadget.i
  PassDepthGadget.i
  SpindleSpeedGadget.i
  CuttingFeedGadget.i
  PlungeFeedGadget.i
  FeedUnitGadget.i
  CreateToolpathGadget.i
EndStructure  

Structure PcbCutSettingsGadgetData
  PcbCutDrawGadget.i
  PcbCutNameGadget.i
  OffsetGadget.i
  CutDepthGadget.i
  PassDepthGadget.i
  SpindleSpeedGadget.i
  CuttingFeedGadget.i
  PlungeFeedGadget.i
  FeedUnitGadget.i
  CreateToolpathGadget.i
EndStructure  

Structure UnitGadgetData
  UnitGadget.i
  CuttingFeedGadget.i
  PlungeFeedGadget.i
EndStructure 

Structure DrillItemGadgetData
  DrillDrawGadget.i
  DrillCutGadget.i
  DrillNameGadget.i
  DrillDiaGadget.i
EndStructure 

Structure DrillSettingsGadgetData
  ScrlGadget.i
  CutAllHoleGadget.i
  CutDepthGadget.i
  PassDepthGadget.i
  ReboundDrillGadget.i
  AboveStartGadget.i
  AbovePassGadget.i 
  ReboundDistanceGadget.i
  ReboundHeader1Gadget.i
  ReboundHeader1aGadget.i
  SpindleSpeedGadget.i
  CuttingFeedGadget.i
  FeedUnitGadget.i
  CreateToolpathGadget.i
EndStructure 

Structure UnitValueGadgetData
  Unit.i
  Val.i
EndStructure 

Structure ParentGadgetData
  Array *Parent(0)
EndStructure

Structure LayerNameGadgetData
  LayerName.s
EndStructure

Global DoubleClickTime = DoubleClickTime() 
Global Scale.d , NewList Layers.Layer()
Global MinX, MaxX, MinY, MaxY, XyRound, X0.d, Y0.d

Procedure Clipper_Free_Library()
  If IsLibrary(_ClipperLib)
    CloseLibrary(_ClipperLib)
  EndIf
EndProcedure

Procedure.i Clipper_Load_Library(dllpath$)
  Protected  dll.i, result.i
  
  If IsLibrary(_ClipperLib)
    ProcedureReturn #False
  EndIf
  
  _ClipperLib = OpenLibrary(#PB_Any, dllpath$)
  dll = _ClipperLib
  If IsLibrary(dll) = #False
    ProcedureReturn #False
  EndIf
  
  GetFunctionProto(dll, InflatePaths64)
  GetFunctionProto(dll, DisposeExportedCPaths64)
  ProcedureReturn #True
EndProcedure


Procedure GetWindowBackgroundColor(hwnd=0) ;hwnd используется только в Linux, в Win/Mac игнорируется 
  CompilerSelect #PB_Compiler_OS   
    CompilerCase #PB_OS_Windows  
      Protected color = GetSysColor_(#COLOR_WINDOW)
      If color = $FFFFFF Or color=0: color = GetSysColor_(#COLOR_BTNFACE): EndIf
      ProcedureReturn color    
    CompilerCase #PB_OS_Linux   ;thanks to uwekel http://www.purebasic.fr/english/viewtopic.php?p=405822
      Protected *style.GtkStyle, *color.GdkColor
      *style = gtk_widget_get_style_(hwnd) ;GadgetID(Gadget))
      *color = *style\bg[0]                ;0=#GtkStateNormal
      ProcedureReturn RGB(*color\red >> 8, *color\green >> 8, *color\blue >> 8)      
    CompilerCase #PB_OS_MacOS   ;thanks to wilbert http://purebasic.fr/english/viewtopic.php?f=19&t=55719&p=497009
      Protected.i color, Rect.NSRect, Image, NSColor = CocoaMessage(#Null, #Null, "NSColor windowBackgroundColor")
      If NSColor
        Rect\size\width = 1
        Rect\size\height = 1
        Image = CreateImage(#PB_Any, 1, 1)
        StartDrawing(ImageOutput(Image))
        CocoaMessage(#Null, NSColor, "drawSwatchInRect:@", @Rect)
        color = Point(0, 0)
        StopDrawing()
        FreeImage(Image)
        ProcedureReturn color
      Else
        ProcedureReturn -1
      EndIf
  CompilerEndSelect
EndProcedure 

Procedure IsGadgetDisabled(GadgetNumber)
  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Linux
      Protected *Widget.GtkWidget = GadgetID(GadgetNumber)
      ProcedureReturn Bool(*Widget\state)
    CompilerCase #PB_OS_MacOS
      ProcedureReturn CocoaMessage(0, GadgetID(GadgetNumber), "isEnabled") ! 1
    CompilerCase #PB_OS_Windows
      ProcedureReturn IsWindowEnabled_(GadgetID(GadgetNumber)) ! 1
  CompilerEndSelect
EndProcedure

Procedure Draw2DViewer(Gadget, *data.Viewer2DGadgetData)
  Protected Ls, Ps, Vs, l, p, v, X.d, Y.d, dx, dy
  Protected CornerDx, CornerDy, VrulerDx, VrulerDy, HrulerDx, HrulerDy, HVDmm.d 
  Protected HVMin, HVMax, Hv, St, Hv_.d , S.s, dxt.d, dyt.d, LayerN, HoleR.d
  With *data 
    VrulerDx = DesktopScaledX(GadgetWidth(\VerticalRuler))
    VrulerDy = DesktopScaledY(GadgetHeight(\VerticalRuler))
    HrulerDx = DesktopScaledX(GadgetWidth(\HorizontalRuler))
    HrulerDy = DesktopScaledY(GadgetHeight(\HorizontalRuler))
    CornerDx = DesktopScaledX(GadgetWidth(\Corner))
    CornerDy = DesktopScaledY(GadgetHeight(\Corner))
    HVDmm = HrulerDy / \PixelSize
    
    StartDrawing(CanvasOutput(\Corner))
    DrawingMode(#PB_2DDrawing_Default)
    Box(0, 0, CornerDx, CornerDy, \RulerBackColor)
    Box(0, 0, 2, CornerDy, \BorderColor)
    Box(0, CornerDy-2, CornerDx, 2, \BorderColor)
    StopDrawing() 
    
    If StartVectorDrawing(CanvasVectorOutput(\VerticalRuler, #PB_Unit_Millimeter))
      If \fontid
        VectorFont(FontID(\fontid), 0.4 * HVDmm)
      EndIf
      
      StartDrawing(CanvasOutput(\VerticalRuler))
      DrawingMode(#PB_2DDrawing_Default)
      Box(0, 0, VrulerDx, VrulerDy, \RulerBackColor)
      StopDrawing()  
      
      TranslateCoordinates(0, \OffsetY) 
      
      HVMin = Round(\MinY / 5 , #PB_Round_Down) * 5
      HVMax = Round(\MaxY / 5 , #PB_Round_Up ) * 5
      St = 0
      VectorSourceColor(\RulerColor)
      For Hv = HVMin To HVMax
        Hv_ = -Hv * \Zoom
        If St = 0
          St = 4
          MovePathCursor(HVDmm, Hv_ )
          AddPathLine( HVDmm / 2,Hv_)
          S = Str(Hv)
          dxt = VectorTextWidth(S) /2
          dyt = VectorTextHeight(S)       
          MovePathCursor(HVDmm / 1.98 - dyt , Hv_  + dxt ) 
          RotateCoordinates(0, 0 , -90)   
          DrawVectorText(S)
          RotateCoordinates(0  , 0 , 90)
        Else
          MovePathCursor(HVDmm , Hv_)
          AddPathLine(HVDmm-HVDmm / 4, Hv_)
          St = St - 1
        EndIf
      Next Hv
      VectorSourceColor(\PenRulerColor)
      StrokePath(0.1)
      
      StartDrawing(CanvasOutput(\VerticalRuler))
      DrawingMode(#PB_2DDrawing_Default)
      Box(0, 0, VrulerDx, 2, \BorderColor) 
      Box(0, 0, 2, VrulerDy, \BorderColor)
      StopDrawing() 
      StopVectorDrawing()   
    EndIf
    
    If StartVectorDrawing(CanvasVectorOutput(\HorizontalRuler, #PB_Unit_Millimeter))
      If \fontid
        VectorFont(FontID(\fontid), 0.4 * HVDmm)
      EndIf
      StartDrawing(CanvasOutput(\HorizontalRuler))
      DrawingMode(#PB_2DDrawing_Default)
      Box(0, 0, HrulerDx, HrulerDy, \RulerBackColor)       
      StopDrawing()
      TranslateCoordinates(\OffsetX, 0) 
      
      HVMin = Round(\MinX / 5 , #PB_Round_Down) * 5
      HVMax = Round(\MaxX / 5 , #PB_Round_Up ) * 5
      St = 0
      VectorSourceColor(\RulerColor)
      For Hv = HVMin To HVMax
        Hv_ = Hv * \Zoom
        If St = 0
          St = 4
          MovePathCursor(Hv_ , 0)
          AddPathLine(Hv_, HVDmm / 2)
          S = Str(Hv)
          dxt = VectorTextWidth(S) / 2
          MovePathCursor(Hv_ - dxt , HVDmm / 1.98)       
          DrawVectorText(S)       
        Else
          MovePathCursor(Hv_, 0)
          AddPathLine(Hv_, HVDmm / 4)
          St = St - 1
        EndIf
      Next Hv
      VectorSourceColor(\PenRulerColor)
      StrokePath(0.1) 
      
      StartDrawing(CanvasOutput(\HorizontalRuler))
      DrawingMode(#PB_2DDrawing_Default)      
      Box(0, HrulerDy-2, HrulerDx, 2, \BorderColor) 
      Box(HrulerDx-2, 0, HrulerDx, HrulerDy, \BorderColor) 
      StopDrawing()
      StopVectorDrawing()   
    EndIf
    
    If StartVectorDrawing(CanvasVectorOutput(Gadget, #PB_Unit_Millimeter))
      dx = DesktopScaledX(GadgetWidth(Gadget))
      dy = DesktopScaledY(GadgetHeight(Gadget))
      StartDrawing(CanvasOutput(Gadget))
      DrawingMode(#PB_2DDrawing_Default)
      Box(0, 0, dx, dy , *data\ViewerBackColor) 
      StopDrawing()
      
      TranslateCoordinates(\OffsetX, \OffsetY) 
      
      X = \X0 * \Zoom
      Y = -1 * \Y0 * \Zoom
      MovePathCursor(X, Y - 10000)
      AddPathLine(X, Y + 10000)
      MovePathCursor(X - 10000, Y)
      AddPathLine(X + 10000, Y)
      VectorSourceColor(\AxisColor)
      StrokePath(0.1)
      
      Ls = ListSize(\Layers())  - 1
      For l = 0 To Ls
        SelectElement(\Layers(), l)
        LayerN = Int(ValF(ReplaceString(\Layers()\Name,"SP","")))
        HoleR = \Layers()\CircleD / 2 * \Zoom
        Ps = ListSize(\Layers()\Plines())  - 1
        For p = 0 To Ps
          SelectElement(\Layers()\Plines(), p)    
          If LayerN = 1 Or LayerN = 4 Or LayerN > 5
            SelectElement(\Layers()\Plines()\Vertex(), 0)
            X = \Layers()\Plines()\Vertex()\X 
            Y =-1* \Layers()\Plines()\Vertex()\y
            X = X * \Zoom
            Y = Y * \Zoom
            AddPathCircle(X, Y , HoleR ) 
            VectorSourceColor(\DrillColor)
            StrokePath(0.1)
            If \Layers()\CutDraw
              MovePathCursor(X - HoleR, Y)
              AddPathLine(X + HoleR, Y)
              MovePathCursor(X, Y - HoleR)
              AddPathLine(X, Y + HoleR)
              VectorSourceColor(\CutDrillColor)
              DashPath(0.1,  0.2)
            EndIf
          Else
            Vs = ListSize(\Layers()\Plines()\Vertex())  - 1
            For v = 0 To Vs
              SelectElement(\Layers()\Plines()\Vertex(), v)
              X = \Layers()\Plines()\Vertex()\X 
              Y =-1* \Layers()\Plines()\Vertex()\Y
              X = X * \Zoom
              Y = Y * \Zoom
              If v = 0
                MovePathCursor(X, Y)
              Else
                AddPathLine(X, Y)
              EndIf
            Next v
            If \Layers()\Name ="SP2" Or \Layers()\Name ="SP3"
              VectorSourceColor(\PcbColor)
            ElseIf \Layers()\Name ="SP5"
              VectorSourceColor(\OutlineColor)
            EndIf          
            StrokePath(0.1)
            
            If \Layers()\CutDraw
              Vs = ListSize(\Layers()\Plines()\OffsetVertex())  - 1
              If Vs > -1
                For v = 0 To Vs
                  SelectElement(\Layers()\Plines()\OffsetVertex(), v)
                  X = \Layers()\Plines()\OffsetVertex()\X 
                  Y =-1* \Layers()\Plines()\OffsetVertex()\Y
                  X = X * \Zoom
                  Y = Y * \Zoom
                  If v = 0
                    MovePathCursor(X, Y)
                  Else
                    AddPathLine(X, Y)
                  EndIf
                Next v        
                If \Layers()\Name ="SP2" Or \Layers()\Name ="SP3"
                  VectorSourceColor(\CutPcbColor)
                ElseIf \Layers()\Name ="SP5"
                  VectorSourceColor(\CutOutlineColor)
                EndIf
                DashPath(0.1,  0.5) 
              EndIf
            EndIf
            
          EndIf
        Next p
      Next l
      
      StartDrawing(CanvasOutput(Gadget))
      DrawingMode(#PB_2DDrawing_Default)
      Box(0, 0, dx, 2, \BorderColor)
      Box(dx-2, 0, dx, dy, \BorderColor)
      StopDrawing()
      StopVectorDrawing() 
    EndIf
  EndWith
EndProcedure  

Procedure VievAllCalc(Gadget, *data.Viewer2DGadgetData)
  Protected dx, dy, Zx.d, Zy.d
  dx = DesktopScaledX(GadgetWidth(Gadget))
  dy = DesktopScaledY(GadgetHeight(Gadget))
  Zx  = dx / (*data\MaxX -*data\MinX) / *data\PixelSize * 0.95
  Zy  = dy / (*data\MaxY -*data\MinY) / *data\PixelSize * 0.95
  If Zx < Zy : *data\Zoom = Zx : Else : *data\Zoom = Zy : EndIf
  *data\OffsetY = (dy / *data\PixelSize - (*data\MaxY -*data\MinY) * -*data\Zoom) / 2 - *data\MinY * -*data\Zoom
  *data\OffsetX = (dx / *data\PixelSize - (*data\MaxX -*data\MinX) * *data\Zoom) / 2 - *data\MinX * *data\Zoom
EndProcedure

Procedure EventHandler2DContainer()
  Protected Gadget, event, Width, Height, *cdata.Viewer2DGadgetCData, *data.Viewer2DGadgetData
  event = EventType()
  Gadget = EventGadget()
  *cdata = GetGadgetData(Gadget)
  *data = GetGadgetData(*cdata\Viewer)
  Select event
    Case #PB_EventType_Resize 
      Width = GadgetWidth(Gadget)
      Height = GadgetHeight(Gadget)
      ResizeGadget(*data\Corner, 0, Height - *data\RulerSize - *data\StatusBarSize, *data\RulerSize,  *data\RulerSize)
      ResizeGadget(*data\VerticalRuler, 0, 0, *data\RulerSize, Height - *data\RulerSize - *data\StatusBarSize)
      ResizeGadget(*data\HorizontalRuler, *data\RulerSize, Height - *data\RulerSize - *data\StatusBarSize, Width - *data\RulerSize , *data\RulerSize)
      ResizeGadget(*cdata\Viewer, *data\RulerSize, 0, Width  - *data\RulerSize, Height  - *data\RulerSize - *data\StatusBarSize)      
      Draw2DViewer(*cdata\Viewer, *data)
  EndSelect        
EndProcedure 

Procedure EventHandler2DViewer()
  Protected Gadget, event, *Data.Viewer2DGadgetData, ptX, ptY, Wh.i, ScaleX.d, ScaleY.d, X.d, Y.d, middle_diff
  Static middle_time
  event = EventType()
  Gadget = EventGadget()
  *data = GetGadgetData(Gadget) 
  *data\state = event
  Select event
    Case #PB_EventType_LeftButtonDown
      ptX = DesktopUnscaledX(GetGadgetAttribute(Gadget, #PB_Canvas_MouseX))
      ptY = DesktopUnscaledY(GetGadgetAttribute(Gadget, #PB_Canvas_MouseY))
      *data\UsingMoveWorkArea = 1
      *data\MoveWorkAreaStartdeltaX = *data\OffsetX
      *data\MoveWorkAreaStartdeltaY = *data\OffsetY
      *data\StartPointPressX = ptX 
      *data\StartPointPressY = ptY 
    Case #PB_EventType_LeftButtonUp       
      *data\UsingMoveWorkArea = 0
    Case #PB_EventType_MouseMove    
      If *data\UsingMoveWorkArea = 1
        ptX = DesktopUnscaledX(GetGadgetAttribute(Gadget, #PB_Canvas_MouseX))
        ptY = DesktopUnscaledY(GetGadgetAttribute(Gadget, #PB_Canvas_MouseY))
        *data\OffsetX = *data\MoveWorkAreaStartdeltaX + (ptX  - *data\StartPointPressX)/ *data\PixelSize
        *data\OffsetY = *data\MoveWorkAreaStartdeltaY + (ptY  - *data\StartPointPressY)/ *data\PixelSize
        Draw2DViewer(Gadget, *data)
      EndIf
    Case #PB_EventType_MouseWheel
      Wh = GetGadgetAttribute(Gadget, #PB_Canvas_WheelDelta)
      ptX = DesktopUnscaledX(GetGadgetAttribute(Gadget, #PB_Canvas_MouseX))
      ptY = DesktopUnscaledY(GetGadgetAttribute(Gadget, #PB_Canvas_MouseY))
      ScaleX = (ptX / *data\PixelSize - *data\OffsetX) / *data\Zoom
      ScaleY  = (ptY / *data\PixelSize - *data\OffsetY) / *data\Zoom
      If Wh = 1
        *data\Zoom = *data\Zoom * *data\ZoomFaktor
      ElseIf Wh = -1
        *data\Zoom = *data\Zoom / *data\ZoomFaktor
      EndIf
      X = (ptX / *data\PixelSize - *data\OffsetX) / *data\Zoom
      Y = (ptY  / *data\PixelSize - *data\OffsetY) / *data\Zoom
      *data\OffsetX = *data\OffsetX - (ScaleX - X) * *data\Zoom
      *data\OffsetY = *data\OffsetY - (ScaleY - Y) * *data\Zoom
      Draw2DViewer(Gadget, *data)
    Case #PB_EventType_MiddleButtonDown
      middle_diff = ElapsedMilliseconds() - middle_time
      If middle_time > 0 And middle_diff > 1 And middle_diff < DoubleClickTime
        VievAllCalc(Gadget, *data)
        Draw2DViewer(Gadget, *data)
        middle_time = 0
      Else
        middle_time = ElapsedMilliseconds()
      EndIf 
  EndSelect 
EndProcedure

Procedure SetPltDataViewer2DGadget(Gadget, List *Layers.Layer(), MinX.d, MaxX.d, MinY.d, MaxY.d)
  Protected *data.Viewer2DGadgetData, *cdata.Viewer2DGadgetCData   
  If IsGadget(Gadget)
    If GadgetType(Gadget) = #PB_GadgetType_Canvas
      *cdata = GetGadgetData(Gadget)
      If *cdata
        *data = GetGadgetData(*cdata\Viewer)
        If *data
          *data\state = #PB_EventType_MouseLeave
          ClearList(*data\Layers())
          CopyList(*Layers() , *data\Layers())
          *data\MinX = MinX
          *data\MaxX = MaxX
          *data\MinY = MinY
          *data\MaxY = MaxY
          VievAllCalc(*cdata\Viewer, *data)
          Draw2DViewer(*cdata\Viewer, *data)
        EndIf
      EndIf
    EndIf
  EndIf   
EndProcedure

Procedure SetLayersDataViewer2DGadget(Gadget, List *Layers.Layer())
  Protected *data.Viewer2DGadgetData, *cdata.Viewer2DGadgetCData   
  If IsGadget(Gadget)
    If GadgetType(Gadget) = #PB_GadgetType_Canvas
      *cdata = GetGadgetData(Gadget)
      If *cdata
        *data = GetGadgetData(*cdata\Viewer)
        If *data
          *data\state = #PB_EventType_MouseLeave
          ClearList(*data\Layers())
          CopyList(*Layers() , *data\Layers())
          Draw2DViewer(*cdata\Viewer, *data)
        EndIf
      EndIf
    EndIf
  EndIf   
EndProcedure

Procedure SetX0Y0Viewer2DGadget(Gadget, X0.d, Y0.d)
  Protected *data.Viewer2DGadgetData, *cdata.Viewer2DGadgetCData   
  If IsGadget(Gadget)
    If GadgetType(Gadget) = #PB_GadgetType_Canvas
      *cdata = GetGadgetData(Gadget)
      If *cdata
        *data = GetGadgetData(*cdata\Viewer)
        If *data
          *data\state = #PB_EventType_MouseLeave
          *data\X0 = X0
          *data\Y0 = Y0
          Draw2DViewer(*cdata\Viewer, *data)
        EndIf
      EndIf
    EndIf
  EndIf    
EndProcedure

Procedure Viewer2DGadget(Gadget, x, y, Width, Height, RulerSize, StatusBarSize, Fontid)
  Protected WinBackColor, Corner, VerticalRuler, HorizontalRuler, result, id, idc, *data.Viewer2DGadgetData, *cdata.Viewer2DGadgetCData   
  result = CanvasGadget(Gadget, x, y, Width, Height, #PB_Canvas_Container)
  Corner = CanvasGadget(#PB_Any, 0, Height - RulerSize - StatusBarSize, RulerSize,  RulerSize)
  VerticalRuler = CanvasGadget(#PB_Any, 0, 0, RulerSize, Height - RulerSize - StatusBarSize)
  HorizontalRuler = CanvasGadget(#PB_Any, RulerSize, Height - RulerSize - StatusBarSize, Width - RulerSize , RulerSize)
  id = CanvasGadget(#PB_Any, RulerSize, 0, Width  - RulerSize, Height  - RulerSize - StatusBarSize, #PB_Canvas_Keyboard)
  CloseGadgetList()
  
  If result
    If Gadget = #PB_Any
      idc = result
    Else
      idc = Gadget
    EndIf  
    WinBackColor = GetWindowBackgroundColor(WindowID(#win))
    *cdata = AllocateStructure(Viewer2DGadgetCData)
    *cdata\Viewer = id
    SetGadgetData(idc, *cdata)
    *data = AllocateStructure(Viewer2DGadgetData)
    *data\state = #PB_EventType_MouseLeave
    *data\OutlineColor = RGBA(255, 0, 0, 255) 
    *data\DrillColor = RGBA(0, 0, 255, 255)
    *data\PcbColor = RGBA(0, 255, 0, 255) 
    *data\CutOutlineColor = RGBA(255, 0, 0, 255) 
    *data\CutDrillColor = RGBA(0, 0, 255, 255)
    *data\CutPcbColor = RGBA(0, 255, 0, 255) 
    *data\ViewerBackColor =RGB(0, 0, 0)
    *data\RulerBackColor = WinBackColor
    *data\PenRulerColor = RGBA(0, 0, 255, 255) 
    *data\RulerColor = RGBA(0, 0, 0, 255)
    *data\BorderColor = RGBA(169, 169, 169, 255) 
    *data\AxisColor = RGBA(169, 169, 169, 255) 
    *data\OffsetX = 10
    *data\OffsetY = -Height
    *data\Zoom = 5
    StartVectorDrawing(CanvasVectorOutput(Gadget,#PB_Unit_Pixel))
    *data\PixelSize = VectorResolutionX() /25.4
    StopVectorDrawing()
    *data\UsingMoveWorkArea = 0
    *data\ZoomFaktor = 1.25
    *data\Container = idc
    *data\Corner = Corner
    *data\RulerSize = RulerSize
    *data\StatusBarSize = StatusBarSize
    *data\VerticalRuler = VerticalRuler 
    *data\HorizontalRuler = HorizontalRuler
    *data\Fontid = Fontid
    *data\X0 = 0
    *data\Y0 = 0
    SetGadgetData(id, *data)
    Draw2DViewer(id, *data)
    BindGadgetEvent(id, @EventHandler2DViewer())
    BindGadgetEvent(idc, @EventHandler2DContainer())
  EndIf 
  ProcedureReturn result  
EndProcedure

Procedure DestroyViewer2DGadget(Gadget)
  Protected *data.Viewer2DGadgetData, *cdata.Viewer2DGadgetCData 
  If IsGadget(Gadget)
    If GadgetType(Gadget) = #PB_GadgetType_Canvas
      *cdata = GetGadgetData(Gadget)
      If *cdata
        *data = GetGadgetData(*cdata\Viewer)
        If *data
          FreeStructure(*data)
        EndIf  
        UnbindGadgetEvent(Gadget, @EventHandler2DContainer())
        UnbindGadgetEvent(*cdata\Viewer, @EventHandler2DViewer())
        FreeStructure(*cdata)
      EndIf
    EndIf
    FreeGadget(Gadget)
  EndIf 
EndProcedure


Procedure.d PerpendicularDistance(*Point1.VertexI, *Point2.VertexI, *Point.VertexI )
  Protected Area.d = Abs(0.5 * (*Point1\X * *Point2\Y + *Point2\X * *Point\Y + *Point\X * *Point1\Y - *Point2\X * *Point1\Y - *Point\X * *Point2\Y - *Point1\X * *Point\Y))
  Protected Bottom.d = Sqr(Pow(*Point1\X - *Point2\X, 2) + Pow(*Point1\Y - *Point2\Y, 2))
  ProcedureReturn Area / Bottom * 2
EndProcedure

Procedure DouglasPeuckerReduction(List Pl.VertexI(), FirstPoint, LastPoint, Tolerance.d, List PointIndexsToKeep.i() )
  Protected MaxDistance.d = 0
  Protected IndexFarthest = 0
  Protected Index, Distance.d , Pfirst.VertexI, Plast.VertexI, P.VertexI
  SelectElement(Pl(), FirstPoint)
  Pfirst = Pl()
  SelectElement(Pl(), LastPoint)
  Plast = Pl()
  For Index = FirstPoint To LastPoint - 1
    SelectElement(Pl(), Index)
    P = Pl()
    Distance  = PerpendicularDistance(@Pfirst,  @Plast, @P)
    If distance > maxDistance 
      maxDistance = distance
      indexFarthest = index
    EndIf
  Next
  
  If maxDistance > tolerance And indexFarthest <> 0 
    ;Добавьте самую большую точку, превышающую допуск
    AddElement(PointIndexsToKeep())
    PointIndexsToKeep() = indexFarthest 
    DouglasPeuckerReduction(Pl(), firstPoint, indexFarthest, tolerance, PointIndexsToKeep())
    DouglasPeuckerReduction(Pl(), indexFarthest, lastPoint, tolerance, PointIndexsToKeep())
  EndIf
EndProcedure

Procedure  DouglasPeucker(List Pl.VertexI(), Tolerance.d)
  Protected FirstPoint, LastPoint, Loop, P0.VertexI, Pn.VertexI
  Protected NewList IPlt.VertexI()
  Protected NewList PointIndexsToKeep.i() 
  LastPoint = ListSize(Pl())  - 1  
  If LastPoint > 2
    FirstPoint = 0  
    SelectElement(Pl(), FirstPoint)
    P0 = Pl()
    
    ;Добавить первый и последний индекс в масив хранителя
    AddElement(PointIndexsToKeep())
    PointIndexsToKeep() = FirstPoint
    AddElement(PointIndexsToKeep())
    PointIndexsToKeep() = LastPoint
    
    ;Первая и последняя точка не должны совпадать
    Loop = 1
    While Loop = 1
      SelectElement(Pl(), LastPoint)
      Pn = Pl()
      If P0\X = Pn\X And P0\Y = Pn\Y
        LastPoint = LastPoint - 1
        AddElement(PointIndexsToKeep())
        PointIndexsToKeep() = LastPoint
      Else
        Loop = 0
      EndIf
    Wend
    
    DouglasPeuckerReduction(Pl(), FirstPoint, LastPoint, Tolerance, PointIndexsToKeep())
    SortList(PointIndexsToKeep() , #PB_Sort_Ascending)
    ForEach PointIndexsToKeep()
      SelectElement(Pl(), PointIndexsToKeep())
      AddElement(IPlt())
      IPlt() = Pl()
    Next
    ClearList(Pl())
    CopyList(IPlt() , Pl())
  EndIf
EndProcedure

Procedure.i PolyRight(List Vertex.VertexI()) 
  Protected rez.d, Vs, v, Xi, Yp, Yn
  Vs = ListSize(Vertex())  - 1
  rez = 0
  SelectElement(Vertex(), 0)
  Xi = Vertex()\X 
  SelectElement(Vertex(), 1)
  Yp = Vertex()\Y
  SelectElement(Vertex(), Vs)
  Yn = Vertex()\Y
  rez = rez + Xi * (Yp - Yn)
  For v = 1 To Vs -1
    SelectElement(Vertex(), v)
    Xi = Vertex()\X 
    SelectElement(Vertex(), v-1)
    Yp = Vertex()\Y
    SelectElement(Vertex(), v+1)
    Yn = Vertex()\Y 
    rez = rez + Xi * (Yn - Yp)      
  Next v
  SelectElement(Vertex(), Vs)
  Xi = Vertex()\X 
  SelectElement(Vertex(), 0)
  Yp = Vertex()\Y
  SelectElement(Vertex(), Vs-1)
  Yn = Vertex()\Y 
  rez = rez + Xi * (Yp - Yn)
  
  If rez < 0 ; по часовой стрелке #Cw
    ProcedureReturn 1
  Else         ; против часовой стрелке #Cсw
    ProcedureReturn 0
  EndIf  
EndProcedure

Procedure EquPLine(List Pl.Pline(), h.d)
  Protected *rPaths, *rPaths_, *rPath ,*Path ,*Paths, Vs, v, t, n, cnts, c, cnt, X.d, Y.d, PointerSize
    CompilerSelect #PB_Compiler_Processor
    CompilerCase #PB_Processor_x86
      PointerSize = 4
    CompilerCase #PB_Processor_x64
      PointerSize = 8
  CompilerEndSelect
  ClearList(Pl()\OffsetVertex())
  Vs = ListSize(Pl()\Vertex()) 
  *Path = AllocateMemory((2 + Vs * 2) * 8) 
  PokeQ(*Path, Vs)
  PokeQ(*Path + 8, 1)
  t = 16
  For v = 0 To Vs - 1 
    SelectElement(Pl()\Vertex(), v)
    PokeQ(*Path + t, Int(Pl()\Vertex()\X * 1000000))
    PokeQ(*Path + t + 8, Int(Pl()\Vertex()\Y * 1000000))
    t = t + 16
  Next v
  
  *Paths = AllocateMemory(PointerSize * 2)
  PokeI(*Paths, *Path)
  PokeI(*Paths + PointerSize , *Path) 
  *rPaths = InflatePaths64(*Paths, Int(h * 1000000) , 1, 0, 2, Scale * 1000000 ,0)
  If *rPaths
    *rPaths_ = *rPaths
    *rPath = PeekI(*rPaths)
    cnts = PeekQ(*rPath + 8)
    For n= 1 To 1
      *rPath = PeekI(*rPaths + n * PointerSize)      
      cnt = PeekQ(*rPath)
      t = 16
      For c= 1 To cnt
        AddElement(Pl()\OffsetVertex())
        Pl()\OffsetVertex()\X = PeekQ(*rPath + t) / 1000000
        Pl()\OffsetVertex()\Y = PeekQ(*rPath + t + 8) / 1000000
        If c= 1
          X = Pl()\OffsetVertex()\X
          Y = Pl()\OffsetVertex()\Y
        EndIf
        t = t + 16
      Next c
      AddElement(Pl()\OffsetVertex())
      Pl()\OffsetVertex()\X = X
      Pl()\OffsetVertex()\Y = Y
    Next n
    DisposeExportedCPaths64(@*rPaths_)
  EndIf
  FreeMemory(*Path)
  FreeMemory(*Paths)
EndProcedure

Procedure EquLayer(LayerName.s, h.d)
  Protected Ls, Ps, l, p
  Protected  *Pl.Pline
  Ls = ListSize(Layers())  - 1
  For l = 0 To Ls
    SelectElement(Layers(), l)
    If Layers()\Name =LayerName
      Layers()\CutDraw = 1
      Ps = ListSize(Layers()\Plines())  - 1    
      For p = 0 To Ps
        SelectElement(Layers()\Plines(), p)
        If Layers()\Plines()\Direction = #Cw
          EquPLine(Layers()\Plines(), h)
        Else
          EquPLine(Layers()\Plines(), -h)
        EndIf    
      Next p     
    EndIf
  Next l
EndProcedure

Procedure.i PointInPolygon(*p.VertexI, List Points.VertexI()) 
  ;положение точки в многоугольнике
  ;возврашаемые значения
  ;0 снаружи
  ;1 внутри
  ;2 на грне  
  Protected Vs, i, v.VertexI, w.VertexI, parity
  Protected a, b, c, f, r
  parity = 1
  Vs = ListSize(Points())  - 2  
  For i = 0 To Vs
    SelectElement(Points(), i)
    v = Points()
    SelectElement(Points(), i + 1)
    w = Points()   
    ;коэффициенты уравнения прямой
    a = v\Y - w\Y
    b = w\X - v\X
    c = v\X * w\Y - w\X * v\Y 
    ;подставим точку в уравнение прямой
    f  = a * *p\X + b * *p\Y + c
    If f > 0 
      ;точка лежит справа от отрезка
      If w\Y < *p\Y And *p\Y <= v\Y 
        r = 2 ;Пересечение
      Else
        r = 3 ;нет
      EndIf
    ElseIf f < 0 
      ;точка лежит слева от отрезка
      If v\Y < *p\Y And *p\Y <= w\Y 
        r = 2 ;Пересечение
      Else
        r = 3 ;нет
      EndIf
    Else
      Protected minX, maxX, minY, maxY
      If v\X < w\X : minX = v\X : Else : minX = w\X : EndIf
      If v\X > w\X : maxX = v\X : Else : maxX = w\X : EndIf
      If v\Y < w\Y : minY = v\Y : Else : minY = w\Y : EndIf
      If v\Y > w\Y : maxY = v\Y : Else : maxY = w\Y : EndIf      
      If minX <= *p\X And *p\X <= maxX And minY <= *p\Y And *p\Y <= maxY       
        r = 1 ;точка лежит на отрезке
      EndIf
      r = 3 ;точка лежит на прямой, но не на отрезке
    EndIf    
    Select r
      Case 1
        ProcedureReturn 2
      Case 2
        If parity = 1 : parity = -1 : Else : parity = 1 : EndIf
    EndSelect 
  Next i 
  If parity = 1
    ProcedureReturn 0
  Else
    ProcedureReturn 1
  EndIf
EndProcedure

Procedure ReverseListD(List InList.VertexD())
  Protected MaxIndex, MidleIndex, i, *FirstElement, *SecondElement
  MaxIndex = ListSize(InList()) - 1
  MidleIndex = Round(MaxIndex / 2, #PB_Round_Up) - 1
  For i = 0 To MidleIndex
    SelectElement(InList(), i)
    *FirstElement = @InList()
    SelectElement(InList(), MaxIndex - i)
    *SecondElement  = @InList()
    SwapElements(InList() , *FirstElement , *SecondElement)
  Next i
EndProcedure

Procedure ReverseListI(List InList.VertexI())
  Protected MaxIndex, MidleIndex, i, *FirstElement, *SecondElement
  MaxIndex = ListSize(InList()) - 1
  MidleIndex = Round(MaxIndex / 2, #PB_Round_Up) - 1
  For i = 0 To MidleIndex
    SelectElement(InList(), i)
    *FirstElement = @InList()
    SelectElement(InList(), MaxIndex - i)
    *SecondElement  = @InList()
    SwapElements(InList() , *FirstElement , *SecondElement)
  Next i
EndProcedure

Procedure.i Contains(List InList.i() , Value.i)
  Protected Ret = 0
  ForEach InList()
    If InList() = Value
      Ret =1
      Break
    EndIf
  Next
  ProcedureReturn Ret
EndProcedure

Procedure ParsePlt(File.s)
  Protected NewList IPlt.VertexI()
  Protected NewList Plines.Pline()
  Protected NewList Ci.i(), CiSize
  Protected Type.i, T.s, Str.s, Com.s, Init, InitP 
  Protected Ls, Ps, Vs, l, p, v  
  Protected PminX, PmaxX, PminY, PmaxY
  Protected X, Y, Px, Py, Pt.VertexI, LayerN, MinVertex
  ClearList(Layers())
  Px = #MinInt
  Py = #MinInt
  Init = -1
  InitP = -1
  If ReadFile(0, File)   
    While Eof(0) = 0           
      Str = ReadString(0)
      Com = Left(Str , 2)   
      If Com = "SP"       
        If ListSize(Plines()) > 0      
          CopyList(Plines() , Layers()\Plines())
          ClearList(Plines()) 
        EndIf
        AddElement(Layers())
        Layers()\Name = ReplaceString(Str,";","")  
        LayerN = Int(ValF(ReplaceString(Layers()\Name,"SP","")))
        InitP = -1
        Px = #MinInt
        Py = #MinInt
      ElseIf Com = "PU" 
        If LayerN = 2 Or LayerN = 3 Or LayerN = 5 
          MinVertex = 2
        Else
          MinVertex = 0
        EndIf
        If ListSize(IPlt()) > MinVertex
          AddElement(Plines())
          DouglasPeucker(IPlt(), 0.5)
          CopyList(IPlt() , Plines()\VertexI()) 
          Plines()\MinX = PminX
          Plines()\MinY = PminY
          Plines()\MaxX = PmaxX
          Plines()\MaxY = PmaxY
          Plines()\Dx = PmaxX - PminX
          Plines()\Dy = PmaxY - PminY 
          Plines()\Ci = - 1
        EndIf 
        ClearList(IPlt()) 
        InitP = -1
        Px = #MinInt
        Py = #MinInt
      ElseIf Com = "CI"
        T = ReplaceString(ReplaceString(Str,"CI",""),";","")
        If ListSize(IPlt()) > 0
          AddElement(Plines())
          DouglasPeucker(IPlt(), 0.5)
          CopyList(IPlt() , Plines()\VertexI()) 
          Plines()\MinX = PminX
          Plines()\MinY = PminY
          Plines()\MaxX = PmaxX
          Plines()\MaxY = PmaxY
          Plines()\Dx = PmaxX - PminX
          Plines()\Dy = PmaxY - PminY 
          Plines()\Ci = Int(Val(T))
          If Not Contains(Ci(), Plines()\Ci)
            AddElement(Ci())
            Ci() = Plines()\Ci
          EndIf
        EndIf 
        ClearList(IPlt()) 
        InitP = -1
        Px = #MinInt
        Py = #MinInt
      ElseIf Com = "PD" 
        
      ElseIf Com = "PA"
        T = ReplaceString(ReplaceString(Str,"PA",""),";","")        
        X = ValF(LCase(StringField(T,1,","))) 
        Y = ValF(LCase(StringField(T,2,",")))             
        
        If Init = -1
          MinX = X
          MinY = Y
          MaxX = X
          MaxY = Y 
          
          AddElement(IPlt())
          IPlt()\X = X 
          IPlt()\Y = Y
          Init = 1
        Else
          If Px <> X Or Py <> Y
            If MinX > X : MinX = X : EndIf
            If MinY > Y : MinY = Y : EndIf
            If MaxX < X : MaxX = X : EndIf
            If MaxY < Y : MaxY = Y : EndIf
            
            AddElement(IPlt())
            IPlt()\X = X 
            IPlt()\Y = Y
          EndIf
        EndIf
        If InitP = -1
          PminX = X
          PminY = Y
          PmaxX = X  
          PmaxY = Y
          InitP = 1
        Else
          If PminX > X : PminX = X : EndIf
          If PminY > Y : PminY = Y : EndIf
          If PmaxX < X : PmaxX = X : EndIf
          If PmaxY < Y : PmaxY = Y : EndIf
        EndIf 
        Px = X
        Py = Y
      EndIf     
    Wend
    If ListSize(Plines()) > 0      
      CopyList(Plines() , Layers()\Plines())
      ClearList(Plines()) 
    EndIf
    CloseFile(0)   
  EndIf
  
  ;>---------Диаметры отверстий, если CI---------
  CiSize = ListSize(Ci()) 
  If CiSize > 0
    If CiSize = 1
      SelectElement(Ci() , 0)
      Ls = ListSize(Layers())  - 1    
      For l = 0 To Ls 
        SelectElement(Layers(), l)
        LayerN = Int(ValF(ReplaceString(Layers()\Name,"SP","")))
        If  LayerN = 4 
          Layers()\CircleD = Ci() / 20
        EndIf
      Next l
    Else  
      SortList(Ci() , #PB_Sort_Ascending )
      For l = 0 To Ls 
        SelectElement(Layers(), l)
        LayerN = Int(ValF(ReplaceString(Layers()\Name,"SP","")))
        If LayerN = 4        
          For v = 1 To CiSize - 1
            ClearList(Plines())
            SelectElement(Ci() , v)
            SelectElement(Layers(), l)
            p = 0
            While p < ListSize(Layers()\Plines())
              SelectElement(Layers()\Plines(), p) 
              If Layers()\Plines()\Ci = Ci()
                AddElement(Plines())
                Plines() =  Layers()\Plines()
                DeleteElement(Layers()\Plines(), 1)
              Else 
                p = p + 1
              EndIf
            Wend
            LastElement(Layers())
            AddElement(Layers())
            Layers()\Name = "SP" + Str(5 + v)  
            LayerN = 5 + v
            Layers()\CircleD = Ci() / 20
            CopyList(Plines() , Layers()\Plines())       
          Next v
          SelectElement(Layers(), l)
          SelectElement(Ci() , 0)
          Layers()\CircleD = Ci() / 20
          Break
        EndIf
      Next l   
    EndIf
  EndIf
  ;<---------Диаметры отверстий, если CI---------
  
  
  ;>---------Определение направления путей по часовой, против часовой---------
  Ls = ListSize(Layers())  - 1
  
  For l = 0 To Ls 
    SelectElement(Layers(), l)
    Ps = ListSize(Layers()\Plines())  - 1
    For p = 0 To Ps
      SelectElement(Layers()\Plines(), p)     
      Vs = ListSize(Layers()\Plines()\VertexI())  - 1  
      For v = 0 To Vs
        SelectElement(Layers()\Plines()\VertexI(), v)
        AddElement(Layers()\Plines()\Vertex())
        Layers()\Plines()\Vertex()\X = Layers()\Plines()\VertexI()\X * Scale
        Layers()\Plines()\Vertex()\Y = Layers()\Plines()\VertexI()\Y * Scale
      Next v       
    Next p
  Next l
  
  For l = 0 To Ls
    SelectElement(Layers(), l)
    LayerN = Int(ValF(ReplaceString(Layers()\Name,"SP","")))
    If LayerN = 1 Or LayerN = 4 Or LayerN > 5
      If Layers()\CircleD = 0
        Layers()\CircleD = 0.6
      EndIf
      Layers()\CutDraw = 1
    EndIf
    Ps = ListSize(Layers()\Plines())  - 1
    For p = 0 To Ps
      SelectElement(Layers()\Plines(), p) 
      If LayerN = 1 Or LayerN = 4 Or LayerN > 5
        SelectElement(Layers()\Plines()\Vertex(), 0)
        Layers()\Plines()\Direction = #Circle
      Else      
        If PolyRight(Layers()\Plines()\VertexI()) = 1 
          Layers()\Plines()\Direction = #Cw
        Else
          Layers()\Plines()\Direction = #Ccw
        EndIf 
      EndIf
    Next p
  Next l
  ;<---------Определение направления путей по часовой, против часовой---------
  
  Ls = ListSize(Layers())  - 1
  For l = 0 To Ls
    SelectElement(Layers(), l)
    If Layers()\Name = "SP2" Or Layers()\Name = "SP3" Or Layers()\Name = "SP5"
      Ps = ListSize(Layers()\Plines())  - 1
      For p = 0 To Ps
        SelectElement(Layers()\Plines(), p)
        Layers()\Plines()\Nesting = 0
        SelectElement(Layers()\Plines()\VertexI(), 0)
        Pt = Layers()\Plines()\VertexI()
        For v = 0 To Ps
          If v <> p
            SelectElement(Layers()\Plines(), v)
            If PointInPolygon(Pt, Layers()\Plines()\VertexI()) = 1
              SelectElement(Layers()\Plines(), p)
              Layers()\Plines()\Nesting =  Layers()\Plines()\Nesting + 1 
            EndIf
          EndIf
        Next v
      Next p
      For p = 0 To Ps
        SelectElement(Layers()\Plines(), p)
        If Layers()\Plines()\Nesting %2 = 0
          ;четное вложение
          If Layers()\Plines()\Direction = #Ccw
            ReverseListD(Layers()\Plines()\Vertex())
            ReverseListI(Layers()\Plines()\VertexI())
            Layers()\Plines()\Direction = #Cw
          EndIf
        Else
          ;не четное вложение
          If Layers()\Plines()\Direction = #Cw
            ReverseListD(Layers()\Plines()\Vertex())
            ReverseListI(Layers()\Plines()\VertexI())
            Layers()\Plines()\Direction = #Ccw
          EndIf       
        EndIf
      Next p
    EndIf
  Next l
  
  SetPltDataViewer2DGadget(#Viewer, Layers(), MinX * Scale, MaxX * Scale, MinY * Scale, MaxY * Scale)
EndProcedure

Procedure PcbNullPoint(X.d , Y.d)
  Protected *data.ProjSettingsGadgetData = GetGadgetData(#ProjSettingsGadget)  
  SetGadgetText(*Data\BiasXGadget, StrD(X, 4))
  SetGadgetText(*Data\BiasYGadget, StrD(Y, 4))
  SetGadgetState(*Data\BiasGadget, 1)
  SetGadgetState(*Data\NullPosBlGadget, 1)
EndProcedure  

Procedure PcbSize(Dx.d , Dy.d)
  Protected *data.ProjSettingsGadgetData = GetGadgetData(#ProjSettingsGadget)
  SetGadgetText(*Data\PcbDxGadget , StrD(Dx, XyRound))
  SetGadgetText(*Data\PcbDyGadget , StrD(Dy, XyRound))
EndProcedure

Procedure RoundChangeEvent()
  Select GetGadgetState(EventGadget())
    Case 0
      XyRound = 2
    Case 1
      XyRound = 3
    Default
      XyRound = 4
  EndSelect
  PcbSize((MaxX - MinX) * Scale , (MaxY - MinY) * Scale)
EndProcedure

Procedure ScaleChangeEvent()
  Protected l, Ls, p, Ps, v, Vs 
  Select GetGadgetState(EventGadget())
    Case 0
      Scale = 0.0254
    Case 1
      Scale = 0.025
    Default
      Scale = 1
  EndSelect
  Ls = ListSize(Layers())  - 1
  For l = 0 To Ls 
    SelectElement(Layers(), l)
    Ps = ListSize(Layers()\Plines())  - 1
    For p = 0 To Ps
      SelectElement(Layers()\Plines(), p)     
      Vs = ListSize(Layers()\Plines()\VertexI())  - 1  
      For v = 0 To Vs
        SelectElement(Layers()\Plines()\VertexI(), v)
        SelectElement(Layers()\Plines()\Vertex(), v)
        Layers()\Plines()\Vertex()\X = Layers()\Plines()\VertexI()\X * Scale
        Layers()\Plines()\Vertex()\Y = Layers()\Plines()\VertexI()\Y * Scale
      Next v       
    Next p
  Next l
  PcbSize((MaxX - MinX) * Scale , (MaxY - MinY) * Scale)
  SetPltDataViewer2DGadget(#Viewer, Layers(), MinX * Scale, MaxX * Scale, MinY * Scale, MaxY * Scale)
EndProcedure

Procedure SetCursorPosition(StringGadgetID.i, CursorPosition.i)
  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      SendMessage_(GadgetID(StringGadgetID), #EM_SETSEL, CursorPosition, CursorPosition)
    CompilerCase #PB_OS_Linux
      gtk_editable_set_position_(GadgetID(StringGadgetID), CursorPosition)
    CompilerCase #PB_OS_MacOS
      Protected Range.NSRange, TextView.I
      Range\location = CursorPosition
      Range\length = 0
      TextView = CocoaMessage(0, GadgetID(StringGadgetID), "currentEditor")
      If TextView
        CocoaMessage(0, TextView, "setSelectedRange:@", @Range)
      EndIf
  CompilerEndSelect
EndProcedure

Procedure.i GetCursorPosition(StringGadgetID.i)
  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      ProcedureReturn SendMessage_(GadgetID(StringGadgetID), #EM_GETSEL, 0, 0) >> 16
    CompilerCase #PB_OS_Linux
      ProcedureReturn gtk_editable_get_position_(GadgetID(StringGadgetID))
    CompilerCase #PB_OS_MacOS
      Protected CursorPosition.I
      Protected TextView.I = CocoaMessage(0, GadgetID(StringGadgetID), "currentEditor")
      If TextView
        CursorPosition = CocoaMessage(0, CocoaMessage(0, CocoaMessage(0, TextView, "selectedRanges"), "objectAtIndex:", 0), "rangeValue")
      EndIf
      ProcedureReturn CursorPosition
  CompilerEndSelect
EndProcedure

Procedure CheckFloatInput(gadget, bNegativeOK.b = #True, bNegativeIntegers.b = #False, bPositiveIntegers.b = #False, nDecimals.u = 9999)
  Protected start, count, pointcount, new$, nPosPoint.a
  start = GetCursorPosition(gadget)
  Protected txt$ = GetGadgetText(gadget)
  Protected *p.Character = @txt$  
  While *p\c
    If (*p\c = '.' Or *p\c = ',') And count > 0 And Not bPositiveIntegers
      pointcount+1
      If pointcount < 2 And Not bNegativeIntegers
        new$ + ".";Chr(*p\c)
        nPosPoint = count
      Else
        If start>count : start-1 : EndIf
      EndIf
    ElseIf count = 0 And *p\c = '-' And bNegativeOK
      new$ + Chr('-')
    ElseIf *p\c >= '0' And *p\c <= '9' And Count - nPosPoint <= nDecimals
      new$ + Chr(*p\c)
    Else
      start - 1
    EndIf
    *p + SizeOf(Character)
    count + 1
  Wend   
  If bNegativeIntegers 
    If Len(new$) = 0 Or new$ = "-" Or ValD(new$) >= 0
      new$ = "-1"
    EndIf       
  EndIf
  SetGadgetText(gadget, new$)
  SetCursorPosition(gadget, start)  
EndProcedure 

Procedure NullPointChangeEvent()
  Protected *data.ProjSettingsGadgetData = GetGadgetData(#ProjSettingsGadget) 
  If GetGadgetState(*Data\NullPosTlGadget)
    If GetGadgetState(*data\BiasGadget)
      X0 = MinX * Scale - ValD(GetGadgetText(*Data\BiasXGadget))
      Y0 = MaxY * Scale - ValD(GetGadgetText(*Data\BiasYGadget))
    Else
      X0 = MinX * Scale
      Y0 = MaxY * Scale
    EndIf
  ElseIf GetGadgetState(*Data\NullPosTrGadget)
    If GetGadgetState(*data\BiasGadget)
      X0 = MaxX * Scale - ValD(GetGadgetText(*Data\BiasXGadget))
      Y0 = MaxY * Scale - ValD(GetGadgetText(*Data\BiasYGadget))
    Else
      X0 = MaxX * Scale
      Y0 = MaxY * Scale
    EndIf
  ElseIf GetGadgetState(*data\NullPosBlGadget)
    If GetGadgetState(*data\BiasGadget)
      X0 = MinX * Scale - ValD(GetGadgetText(*Data\BiasXGadget))
      Y0 = MinY * Scale - ValD(GetGadgetText(*Data\BiasYGadget))
    Else
      X0 = MinX * Scale
      Y0 = MinY * Scale
    EndIf
  ElseIf GetGadgetState(*data\NullPosBrGadget)
    If GetGadgetState(*data\BiasGadget)
      X0 = MaxX * Scale - ValD(GetGadgetText(*Data\BiasXGadget))
      Y0 = MinY * Scale - ValD(GetGadgetText(*Data\BiasYGadget))
    Else
      X0 = MaxX * Scale
      Y0 = MinY * Scale
    EndIf
  ElseIf GetGadgetState(*data\NullPosCGadget)
    If GetGadgetState(*data\BiasGadget)
      X0 = (MaxX + MinX) / 2 * Scale - ValD(GetGadgetText(*Data\BiasXGadget))
      Y0 = (MaxY + MinY) / 2 * Scale - ValD(GetGadgetText(*Data\BiasYGadget))
    Else
      X0 = (MaxX + MinX) / 2 * Scale
      Y0 = (MaxY + MinY) / 2 * Scale
    EndIf
  EndIf
  SetX0Y0Viewer2DGadget(#Viewer, X0, Y0)
EndProcedure

Procedure BiasValChangeEvent() 
  CheckFloatInput(EventGadget(), #True, #False, #False, 4)
  NullPointChangeEvent()
EndProcedure 

Procedure ValFloatNegativeChangeEvent()
  CheckFloatInput(EventGadget(), #True, #False, #False, 4) 
EndProcedure 



Procedure ValFloatPositiveChangeEvent()
  Protected Gadget = EventGadget()
  Protected *data.UnitValueGadgetData = GetGadgetData(Gadget) 
  If *data
    Select *data\Unit
      Case 0
        CheckFloatInput(Gadget, #False, #False, #False, 4)
        *data\Val = Int(ValF(GetGadgetText(Gadget)) * 60)
      Case 1
        CheckFloatInput(EventGadget(), #False, #False, #True) 
        *data\Val = Int(ValF(GetGadgetText(Gadget)))
      Case 2
        CheckFloatInput(Gadget, #False, #False, #False, 4)
        *data\Val = Int(ValF(GetGadgetText(Gadget)) * 1000)
    EndSelect
  Else
    CheckFloatInput(Gadget, #False, #False, #False, 4)
  EndIf
EndProcedure 

Procedure DrillDvalChangeEvent()
  Protected Gadget = EventGadget()
  Protected *data.LayerNameGadgetData = GetGadgetData(Gadget)
  Protected Ls, l
  CheckFloatInput(Gadget, #False, #False, #False, 4)
  Ls = ListSize(Layers())  - 1
  For l = 0 To Ls
    SelectElement(Layers(), l) 
    If *data\LayerName = Layers()\Name
      Layers()\CircleD = ValD(GetGadgetText(Gadget))
    EndIf
  Next l
  SetLayersDataViewer2DGadget(#Viewer, Layers())
EndProcedure

Procedure DrawCutLayerChangeEvent()
  Protected Gadget = EventGadget()
  Protected *data.LayerNameGadgetData = GetGadgetData(Gadget) 
  Protected Ls, l
  Ls = ListSize(Layers())  - 1
  For l = 0 To Ls
    SelectElement(Layers(), l) 
    If *data\LayerName = Layers()\Name
      Layers()\CutDraw = GetGadgetState(Gadget)
    EndIf
  Next l
  SetLayersDataViewer2DGadget(#Viewer, Layers())
EndProcedure

Procedure ValIntegerPositiveChangeEvent()
  CheckFloatInput(EventGadget(), #False, #False, #True) 
EndProcedure 

Procedure BiasChangeEvent()
  Protected *data.ProjSettingsGadgetData = GetGadgetData(#ProjSettingsGadget)  
  If GetGadgetState(EventGadget())
    DisableGadget(*Data\BiasXGadget , 0)
    DisableGadget(*Data\BiasYGadget , 0)
  Else
    SetGadgetText(*Data\BiasXGadget, StrD(0, 1))
    SetGadgetText(*Data\BiasYGadget, StrD(0, 1))
    DisableGadget(*Data\BiasXGadget , 1)
    DisableGadget(*Data\BiasYGadget , 1)
  EndIf
  NullPointChangeEvent()
EndProcedure

Procedure _MoveToNextGadgetY(Gadget, Add = 3)
  ProcedureReturn GadgetY(Gadget)  + GadgetHeight(Gadget) + Add
EndProcedure

Procedure _MoveToNextGadgetX(Gadget, Add = 3)
  ProcedureReturn GadgetX(Gadget)  + GadgetWidth(Gadget) + Add
EndProcedure

Procedure _FitGadgetH(Gadget)
  ResizeGadget(Gadget , #PB_Ignore , #PB_Ignore , #PB_Ignore , GadgetHeight(Gadget, #PB_Gadget_RequiredSize))
EndProcedure

Procedure _FitGadgetWH(Gadget)
  ResizeGadget(Gadget , #PB_Ignore , #PB_Ignore , GadgetWidth(Gadget, #PB_Gadget_RequiredSize), GadgetHeight(Gadget, #PB_Gadget_RequiredSize))
EndProcedure

Procedure _Refresh(Gadget)
  ResizeGadget(Gadget, #PB_Ignore, #PB_Ignore, #PB_Ignore, #PB_Ignore)
EndProcedure

Procedure ProjSettingsGadget(Gadget, x, y, Width, Height)
  Protected result, WinBackColor,BorderColor, *Data.ProjSettingsGadgetData
  Protected OHeight, OWidth, dX, dY
  Protected Block1Y, Block2Y, Block3Y, Block4Y, Block5Y
  *data = AllocateStructure(ProjSettingsGadgetData)
  
  result = CanvasGadget(Gadget, x, y, Width, Height, #PB_Canvas_Container)
  With *data 
    \Header1 = TextGadget(#PB_Any, 2, 2, Width - 4, 20, "Масштабирование:", #PB_Text_Center)
    _FitGadgetH(\Header1)
    y = _MoveToNextGadgetY(\Header1) 
    \ScaleGadget = ComboBoxGadget(#PB_Any, 2, y, Width - 4, 15)
    BindGadgetEvent(\ScaleGadget, @ScaleChangeEvent()) 
    AddGadgetItem(\ScaleGadget, -1, "1HPGL-ед.=0.0254мм(1mil)")
    AddGadgetItem(\ScaleGadget, -1, "1HPGL-ед.=0.025мм(1/40мм)")
    SetGadgetState(\ScaleGadget, 1)
    _FitGadgetH(\ScaleGadget)  
    y = _MoveToNextGadgetY(\ScaleGadget) + 2
    Block1Y = DesktopScaledY(y) 
    
    y = y + 4  
    \Header2 = TextGadget(#PB_Any, 2, y, Width - 4, 20, "Округление:", #PB_Text_Center)
    _FitGadgetH(\Header2)
    y = _MoveToNextGadgetY(\Header2) 
    \RoundGadget = ComboBoxGadget(#PB_Any, 2, y, Width - 4, 15)
    BindGadgetEvent(\RoundGadget, @RoundChangeEvent()) 
    AddGadgetItem(\RoundGadget, -1, ".## (2 знака)")
    AddGadgetItem(\RoundGadget, -1, ".### (3 знака)")
    AddGadgetItem(\RoundGadget, -1, ".#### (4 знака)")
    SetGadgetState(\RoundGadget, 2)
    _FitGadgetH(\RoundGadget)
    y = _MoveToNextGadgetY(\RoundGadget) + 2 
    Block2Y = DesktopScaledY(y)
    
    y = y + 4 
    \Header3 = TextGadget(#PB_Any, 2, y, Width - 4, 20, "Размер платы", #PB_Text_Center)
    _FitGadgetH(\Header3)
    y = _MoveToNextGadgetY(\Header3) 
    \PcbDxTxt = TextGadget(#PB_Any, 2, y, 20, 20, "Ширина, мм:")
    _FitGadgetWH(\PcbDxTxt)
    y = _MoveToNextGadgetY(\PcbDxTxt)
    \PcbDyTxt = TextGadget(#PB_Any, 2, y, 20, 20, "Высота, мм:")
    _FitGadgetWH(\PcbDyTxt)  
    If GadgetWidth(\PcbDxTxt) > GadgetWidth(\PcbDyTxt)
      x = _MoveToNextGadgetX(\PcbDxTxt)
    Else
      x = _MoveToNextGadgetX(\PcbDyTxt) 
    EndIf  
    \PcbDxGadget = TextGadget(#PB_Any, x, GadgetY(\PcbDxTxt) , Width - 4 -x, 20, StrD(0, 1))
    \PcbDyGadget = TextGadget(#PB_Any, x, GadgetY(\PcbDyTxt) , Width - 4 -x, 20, StrD(0, 1))
    _FitGadgetH(\PcbDxGadget)
    _FitGadgetH(\PcbDyGadget)  
    y = _MoveToNextGadgetY(\PcbDyTxt) + 2  
    Block3Y = DesktopScaledY(y)
    
    y = y + 4  
    \Header4 = TextGadget(#PB_Any, 2, y, Width - 4, 20, "Начало координат XY", #PB_Text_Center)
    _FitGadgetH(\Header4)
    y = _MoveToNextGadgetY(\Header4)
    \NullPosTlGadget = OptionGadget(#PB_Any, 10, y, 20, 20, "")
    BindGadgetEvent(\NullPosTlGadget, @NullPointChangeEvent())
    _FitGadgetWH(\NullPosTlGadget)
    \NullPosTrGadget = OptionGadget(#PB_Any, 50, y, 20, 20, "")
    BindGadgetEvent(\NullPosTrGadget, @NullPointChangeEvent())
    _FitGadgetWH(\NullPosTrGadget)
    \NullPosBlGadget = OptionGadget(#PB_Any, 10, y + 40, 20, 20, "")
    BindGadgetEvent(\NullPosBlGadget, @NullPointChangeEvent())
    _FitGadgetWH(\NullPosBlGadget)
    \NullPosBrGadget = OptionGadget(#PB_Any, 50, y + 40, 20, 20, "")
    BindGadgetEvent(\NullPosBrGadget, @NullPointChangeEvent())
    _FitGadgetWH(\NullPosBrGadget)
    \NullPosCGadget = OptionGadget(#PB_Any, 30, y + 20, 20, 20, "")
    BindGadgetEvent(\NullPosCGadget, @NullPointChangeEvent())
    _FitGadgetWH(\NullPosCGadget) 
    x = GadgetX(\NullPosTrGadget)  + GadgetWidth(\NullPosTrGadget) + 5
    \BiasGadget = CheckBoxGadget(#PB_Any, x, y, 88, 24, "Смещение")
    BindGadgetEvent(\BiasGadget, @BiasChangeEvent()) 
    _FitGadgetWH(\BiasGadget) 
    y = _MoveToNextGadgetY(\BiasGadget)
    \BiasXTxt = TextGadget(#PB_Any, x, y, 20, 20, "X:", #PB_Text_Center)
    _FitGadgetWH(\BiasXTxt)  
    x = x + GadgetWidth(\BiasXTxt) + 5
    \BiasXGadget = StringGadget(#PB_Any, x  ,  y , Width - x - 5 , 20, StrD(0, 1))
    BindGadgetEvent(\BiasXGadget, @BiasValChangeEvent()) 
    _FitGadgetH(\BiasXGadget)  
    x = GadgetX(\NullPosTrGadget)  + GadgetWidth(\NullPosTrGadget) + 5
    y = _MoveToNextGadgetY(\BiasXGadget)
    \BiasYTxt = TextGadget(#PB_Any, x, y, 20, 20, "Y:", #PB_Text_Center)
    _FitGadgetWH(\BiasYTxt) 
    x = x + GadgetWidth(\BiasXTxt) + 5
    \BiasYGadget = StringGadget(#PB_Any, x  ,  y , Width - x - 5 , 20, StrD(0, 1))
    BindGadgetEvent(\BiasYGadget, @BiasValChangeEvent()) 
    _FitGadgetH(\BiasYGadget)  
    y = _MoveToNextGadgetY(\BiasYGadget) + 2
    Block4Y = DesktopScaledY(y)
    y= y + 4
    \Header5 = TextGadget(#PB_Any, 2, y, Width - 4, 20, "Перемещение над заготовкой по Z", #PB_Text_Center)
    _FitGadgetH(\Header5)
    y = _MoveToNextGadgetY(\Header5)  
    \SafeZGadget = StringGadget(#PB_Any, 2  ,  y , 80 , 20, StrD(5.00, 2))
    BindGadgetEvent(\SafeZGadget, @ValFloatPositiveChangeEvent()) 
    _FitGadgetH(\SafeZGadget) 
    y = _MoveToNextGadgetY(\SafeZGadget) + 2 
    Block5Y = DesktopScaledY(y)
    
    y= y + 4 
    \Header6 = TextGadget(#PB_Any, 2, y, Width - 4, 20, "Парковка", #PB_Text_Center)
    _FitGadgetH(\Header6)
    y = _MoveToNextGadgetY(\Header6)  
    \ParkingXTxt = TextGadget(#PB_Any, 2, y, 20, 20, "X:", #PB_Text_Center)
    _FitGadgetWH(\ParkingXTxt) 
    \ParkingYTxt = TextGadget(#PB_Any, Width/2 + 2, y, 20, 20, "Y:", #PB_Text_Center)
    _FitGadgetWH(\ParkingYTxt) 
    \ParkingXGadget = StringGadget(#PB_Any, _MoveToNextGadgetX(\ParkingXTxt), GadgetY(\ParkingXTxt) , 60 , 20, StrD(0.00, 2))
    BindGadgetEvent(\ParkingXGadget, @ValFloatNegativeChangeEvent())
    _FitGadgetH(\ParkingXGadget)
    y = _MoveToNextGadgetY(\ParkingXGadget)
    \ParkingZTxt = TextGadget(#PB_Any, Width/2 + 2, y, 20, 20, "Z:", #PB_Text_Center)
    _FitGadgetWH(\ParkingZTxt) 
    \ParkingYGadget = StringGadget(#PB_Any, _MoveToNextGadgetX(\ParkingZTxt), GadgetY(\ParkingYTxt) , 60 , 20, StrD(0.00, 2))
    BindGadgetEvent(\ParkingYGadget, @ValFloatNegativeChangeEvent())
    _FitGadgetH(\ParkingYGadget) 
    \ParkingZGadget = StringGadget(#PB_Any, _MoveToNextGadgetX(\ParkingZTxt), GadgetY(\ParkingZTxt) , 60 , 20, StrD(5.00, 2))
    BindGadgetEvent(\ParkingZGadget, @ValFloatPositiveChangeEvent())
    _FitGadgetH(\ParkingZGadget)
    y = _MoveToNextGadgetY(\ParkingZGadget) 
    \ParkingStartGadget = CheckBoxGadget(#PB_Any, 2, y, 100, 16, "В начале программы")
    _FitGadgetWH(\ParkingStartGadget)
    y = _MoveToNextGadgetY(\ParkingStartGadget)
    \ParkingEndGadget = CheckBoxGadget(#PB_Any, 2, y, 100, 16, "В конце программы")
    _FitGadgetWH(\ParkingEndGadget)
    y = _MoveToNextGadgetY(\ParkingEndGadget)
    ResizeGadget(Gadget , #PB_Ignore , #PB_Ignore , #PB_Ignore, y )
    
    WinBackColor = GetWindowBackgroundColor(WindowID(#win))
    
    StartDrawing(CanvasOutput(Gadget))
    OHeight = OutputHeight()
    OWidth = OutputWidth()
    Box(0, 0, OWidth, OHeight, WinBackColor)
    StopDrawing()
    
    StartVectorDrawing(CanvasVectorOutput(Gadget))
    AddPathBox(0 , 2 , OWidth , Block1Y-5) 
    AddPathBox(0 , Block1Y + 2 , OWidth , Block2Y - Block1Y - 6)
    AddPathBox(0 , Block2Y + 2 , OWidth , Block3Y - Block2Y - 6)
    AddPathBox(0 , Block3Y + 2 , OWidth , Block4Y - Block3Y - 6)
    AddPathBox(0 , Block4Y + 2 , OWidth , Block5Y - Block4Y - 6)
    AddPathBox(0 , Block5Y + 2 , OWidth , OHeight - Block5Y - 3)
    VectorSourceColor(RGBA(169, 169, 169, 255) )
    StrokePath(2)
    
    X = DesktopScaledX(GadgetX(\NullPosTlGadget)) + DesktopScaledX(GadgetWidth(\NullPosTlGadget)) / 2 - 3
    y = DesktopScaledY(GadgetY(\NullPosTlGadget)) + DesktopScaledY(GadgetHeight(\NullPosTlGadget)) / 2
    
    dX = DesktopScaledX(GadgetX(\NullPosTrGadget)) + DesktopScaledX(GadgetWidth(\NullPosTrGadget)) / 2 - x - 3
    dY = DesktopScaledY(GadgetY(\NullPosBrGadget)) + DesktopScaledY(GadgetHeight(\NullPosBrGadget)) / 2 - y 
        
    AddPathBox(x , y , dX , dY)
    VectorSourceColor(RGBA(0, 0, 0, 255) )
    StrokePath(2)
    StopVectorDrawing() 
    
    _Refresh(\NullPosTlGadget)
    _Refresh(\NullPosTrGadget)
    _Refresh(\NullPosBlGadget)
    _Refresh(\NullPosBrGadget)
    _Refresh(\NullPosCGadget)
    _Refresh(\BiasGadget)
    _Refresh(\ParkingStartGadget)
    _Refresh(\ParkingEndGadget)
    
    CloseGadgetList()
  EndWith
  SetGadgetData(Gadget, *data)
EndProcedure

Procedure DisableProjSettingsGadget(Gadget , State)
  Protected *data.ProjSettingsGadgetData 
  If GadgetType(Gadget) = #PB_GadgetType_Canvas
    *data = GetGadgetData(Gadget)
    If *data
      With *data  
        DisableGadget(\ScaleGadget, State)
        DisableGadget(\RoundGadget, State)
        DisableGadget(\NullPosTlGadget, State)
        DisableGadget(\NullPosTrGadget, State)
        DisableGadget(\NullPosBlGadget, State)
        DisableGadget(\NullPosBrGadget, State)
        DisableGadget(\NullPosCGadget, State)
        DisableGadget(\BiasGadget, State)
        DisableGadget(\BiasXGadget, State)
        DisableGadget(\BiasYGadget, State)
        DisableGadget(\PcbDxGadget, State)
        DisableGadget(\PcbDyGadget, State)
        DisableGadget(\SafeZGadget, State)
        
        DisableGadget(\ParkingXGadget, State)
        DisableGadget(\ParkingYGadget, State)
        DisableGadget(\ParkingZGadget, State)
        DisableGadget(\ParkingStartGadget, State)
        DisableGadget(\ParkingEndGadget, State)
        
        DisableGadget(\BiasXTxt, State)
        DisableGadget(\BiasYTxt, State)
        DisableGadget(\PcbDxTxt, State)
        DisableGadget(\PcbDyTxt, State)      
        DisableGadget(\ParkingXTxt, State)
        DisableGadget(\ParkingYTxt, State)
        DisableGadget(\ParkingZTxt, State)       
        DisableGadget(\Header1, State)
        DisableGadget(\Header2, State)
        DisableGadget(\Header3, State)
        DisableGadget(\Header4, State)
        DisableGadget(\Header5, State)
        DisableGadget(\Header6, State)
        DisableGadget(Gadget , State)
      EndWith
    EndIf
  EndIf
EndProcedure

Procedure DestroyProjSettingsGadget(Gadget)
  Protected *data.ProjSettingsGadgetData 
  If IsGadget(Gadget)
    If GadgetType(Gadget) = #PB_GadgetType_Canvas
      *data = GetGadgetData(Gadget)
      If *data
        With *data
          UnbindGadgetEvent(\ScaleGadget, @ScaleChangeEvent())
          UnbindGadgetEvent(\RoundGadget, @RoundChangeEvent()) 
          UnbindGadgetEvent(\BiasXGadget, @BiasValChangeEvent()) 
          UnbindGadgetEvent(\BiasYGadget, @BiasValChangeEvent())   
          UnbindGadgetEvent(\NullPosTlGadget, @NullPointChangeEvent())
          UnbindGadgetEvent(\NullPosTrGadget, @NullPointChangeEvent())
          UnbindGadgetEvent(\NullPosBlGadget, @NullPointChangeEvent())
          UnbindGadgetEvent(\NullPosBrGadget, @NullPointChangeEvent())
          UnbindGadgetEvent(\NullPosCGadget, @NullPointChangeEvent()) 
          UnbindGadgetEvent(\SafeZGadget, @ValFloatPositiveChangeEvent()) 
          UnbindGadgetEvent(\ParkingXGadget, @ValFloatNegativeChangeEvent())
          UnbindGadgetEvent(\ParkingYGadget, @ValFloatNegativeChangeEvent())
          UnbindGadgetEvent(\ParkingZGadget, @ValFloatPositiveChangeEvent())
        EndWith
        FreeStructure(*data)
      EndIf
    EndIf
    FreeGadget(Gadget)
  EndIf 
EndProcedure

Procedure UnitChange(Gadget, Unit)
  Protected *data.UnitValueGadgetData = GetGadgetData(Gadget)
  Protected NewValue.s
  Select Unit
    Case 0
      NewValue = StrD(*data\Val / 60, 4)
    Case 1
      NewValue = StrD(*data\Val, 0)
    Case 2
      NewValue = StrD(*data\Val / 1000, 4)
  EndSelect
  *data\Unit = Unit
  SetGadgetText(Gadget, NewValue)  
EndProcedure

Procedure FeedUnitChangeEvent()
  Protected *data.UnitGadgetData = GetGadgetData(EventGadget())
  Protected Unit
  If *data\UnitGadget 
    SetGadgetText(*data\UnitGadget, GetGadgetText(EventGadget()))
  EndIf
  Unit = GetGadgetState(EventGadget())
  If *data\CuttingFeedGadget 
    UnitChange(*data\CuttingFeedGadget, Unit)
  EndIf
  If *data\PlungeFeedGadget 
    UnitChange(*data\PlungeFeedGadget, Unit) 
  EndIf
EndProcedure  

Procedure PcbOffsetEvent()
  Protected *data.PcbSettingsGadgetData
  *data = GetGadgetData(#PcbSettingsGadget) 
  If Not IsGadgetDisabled(*Data\PcbTopNameGadget)
    EquLayer("SP2", Abs(ValF(GetGadgetText(*data\OffsetGadget))))
    DisableGadget(*data\PcbTopDrawGadget, 0)
    SetGadgetState(*data\PcbTopDrawGadget, 1)
  EndIf
  If Not IsGadgetDisabled(*Data\PcbBotNameGadget)
    EquLayer("SP3", Abs(ValF(GetGadgetText(*data\OffsetGadget))))
    DisableGadget(*data\PcbBotDrawGadget, 0)
    SetGadgetState(*data\PcbBotDrawGadget, 1)
  EndIf
  DisableGadget(#SavePcbGCodeBtn, 0)
  
  SetLayersDataViewer2DGadget(#Viewer, Layers())
EndProcedure 

Procedure PcbSettingsGadget(Gadget, x, y, Width, Height)
  Protected result, WinBackColor,BorderColor, *data.PcbSettingsGadgetData, *data1.UnitGadgetData, *data2.UnitValueGadgetData, *data3.UnitValueGadgetData
  Protected OHeight, OWidth, x2
  Protected Block1Y, Block2Y, Block3Y, Block4Y, Block5Y
  Protected Header1, Header1a, Header2, Header2a, Header3, Header3a, Header4, Header4a
  Protected Header5, Header5a, Header6, Header6b, Header6a
  Protected *PcbTop.LayerNameGadgetData, *PcbBtm.LayerNameGadgetData
  *PcbTop = AllocateStructure(LayerNameGadgetData)
  *PcbBtm = AllocateStructure(LayerNameGadgetData)
  *PcbTop\LayerName = "SP2"
  *PcbBtm\LayerName = "SP3"
  *data = AllocateStructure(PcbSettingsGadgetData)
  *data1 = AllocateStructure(UnitGadgetData)
  *data2 = AllocateStructure(UnitValueGadgetData)
  *data3 = AllocateStructure(UnitValueGadgetData)
  *data2\Unit = 1
  *data3\Unit = 1
  result = CanvasGadget(Gadget, x, y, Width, Height, #PB_Canvas_Container)
  
  With *data 
    y = 2
    x = 2
    \PcbTopDrawGadget = CheckBoxGadget(#PB_Any, x, y, 16, 16, "")
    SetGadgetData(\PcbTopDrawGadget, *PcbTop)
    BindGadgetEvent(\PcbTopDrawGadget, @DrawCutLayerChangeEvent())
    _FitGadgetWH(\PcbTopDrawGadget)
    x = _MoveToNextGadgetX(\PcbTopDrawGadget) + 20
    \PcbTopNameGadget = TextGadget(#PB_Any, x, y, 16, 16, "Верхняя сторона", #PB_Text_Center)
    _FitGadgetWH(\PcbTopNameGadget)  
    y = _MoveToNextGadgetY(\PcbTopNameGadget)
    x = 2   
    \PcbBotDrawGadget = CheckBoxGadget(#PB_Any, x, y, 16, 16, "")
    SetGadgetData(\PcbBotDrawGadget, *PcbBtm)
    BindGadgetEvent(\PcbBotDrawGadget, @DrawCutLayerChangeEvent())
    _FitGadgetWH(\PcbBotDrawGadget)
    x = _MoveToNextGadgetX(\PcbBotDrawGadget) + 20      
    \PcbBotNameGadget = TextGadget(#PB_Any, x, y, 16, 16, "Нижняя сторона", #PB_Text_Center)
    _FitGadgetWH(\PcbBotNameGadget)
    y = 2
    x = _MoveToNextGadgetX(\PcbTopDrawGadget)
    \PcbTopCutGadget = OptionGadget(#PB_Any, x, y, 16, 16, "")
    _FitGadgetWH(\PcbTopCutGadget)
    y = _MoveToNextGadgetY(\PcbTopNameGadget)
    x = _MoveToNextGadgetX(\PcbBotDrawGadget)
    \PcbBotCutGadget = OptionGadget(#PB_Any, x, y, 16, 16, "")
    _FitGadgetWH(\PcbBotCutGadget)
    ResizeGadget(\PcbTopNameGadget , _MoveToNextGadgetX(\PcbTopCutGadget) , #PB_Ignore , #PB_Ignore , #PB_Ignore)
    ResizeGadget(\PcbBotNameGadget , _MoveToNextGadgetX(\PcbBotCutGadget) , #PB_Ignore , #PB_Ignore , #PB_Ignore)
    
    y = _MoveToNextGadgetY(\PcbBotNameGadget)
    x = 2
    x2 = 125
    Header1 = TextGadget(#PB_Any, x, y, 16, 16, "Отступ")
    _FitGadgetWH(Header1)
    \OffsetGadget = StringGadget(#PB_Any, x2, y, 45, 16, StrD(0.10, 2))
    BindGadgetEvent(\OffsetGadget, @ValFloatPositiveChangeEvent())
    _FitGadgetH(\OffsetGadget)
    Header1a = TextGadget(#PB_Any, _MoveToNextGadgetX(\OffsetGadget), y, 16, 16, "мм")
    _FitGadgetWH(Header1a)
    
    y = _MoveToNextGadgetY(\OffsetGadget)
    x = 2
    Header2 = TextGadget(#PB_Any, x, y, 16, 16, "Глубина фрезеровки")
    _FitGadgetWH(Header2)
    \CutDepthGadget= StringGadget(#PB_Any, x2, y, 45, 16, StrD(0.10, 2))
    BindGadgetEvent(\CutDepthGadget, @ValFloatPositiveChangeEvent())
    _FitGadgetH(\CutDepthGadget) 
    Header2a = TextGadget(#PB_Any, _MoveToNextGadgetX(\CutDepthGadget), y, 16, 16, "мм")
    _FitGadgetWH(Header2a) 
    y = _MoveToNextGadgetY(\CutDepthGadget)
    x = 2
    Header3 = TextGadget(#PB_Any, x, y, 16, 16, "Глубина прохода")  
    _FitGadgetWH(Header3) 
    \PassDepthGadget= StringGadget(#PB_Any, x2, y, 45, 16, StrD(0.05, 2))
    BindGadgetEvent(\PassDepthGadget, @ValFloatPositiveChangeEvent())
    _FitGadgetH(\PassDepthGadget) 
    Header3a = TextGadget(#PB_Any, _MoveToNextGadgetX(\PassDepthGadget), y, 16, 16, "мм")
    _FitGadgetWH(Header3a)   
    
    y = _MoveToNextGadgetY(\PassDepthGadget)
    x = 2
    Header4 = TextGadget(#PB_Any, x, y, 16, 16, "Скорость шпинделя") 
    _FitGadgetWH(Header4) 
    \SpindleSpeedGadget = StringGadget(#PB_Any, x2, y, 45, 16, StrD(12000, 0))
    BindGadgetEvent(\SpindleSpeedGadget, @ValIntegerPositiveChangeEvent()) 
    _FitGadgetH(\SpindleSpeedGadget) 
    Header4a = TextGadget(#PB_Any, _MoveToNextGadgetX(\PassDepthGadget), y, 16, 16, "об/мин")
    _FitGadgetWH(Header4a)  
    
    y = _MoveToNextGadgetY(\SpindleSpeedGadget)
    x = 2
    Header5 = TextGadget(#PB_Any, x, y, 16, 16, "Подача") 
    _FitGadgetWH(Header5) 
    y = _MoveToNextGadgetY(Header5,0)
    Header5a = TextGadget(#PB_Any, x, y, 16, 16, "резания") 
    _FitGadgetWH(Header5a)
    y = _MoveToNextGadgetY(\SpindleSpeedGadget)
    \CuttingFeedGadget = StringGadget(#PB_Any, x2 -52, y, 60, 16, StrD(800, 0))
    *data1\CuttingFeedGadget = \CuttingFeedGadget
    *data2\Val = 800
    SetGadgetData(\CuttingFeedGadget , *data2)
    BindGadgetEvent(\CuttingFeedGadget, @ValFloatPositiveChangeEvent()) 
    _FitGadgetH(\CuttingFeedGadget) 
    \FeedUnitGadget = ComboBoxGadget(#PB_Any, _MoveToNextGadgetX(\CuttingFeedGadget, 2), y, 70, 16)
    BindGadgetEvent(\FeedUnitGadget, @FeedUnitChangeEvent()) 
    AddGadgetItem(\FeedUnitGadget, -1, "мм/сек")
    AddGadgetItem(\FeedUnitGadget, -1, "мм/мин")
    AddGadgetItem(\FeedUnitGadget, -1, "м/мин")
    SetGadgetState(\FeedUnitGadget, 1)
    _FitGadgetH(\FeedUnitGadget)
    y = _MoveToNextGadgetY(\SpindleSpeedGadget) + (GadgetHeight(Header5) + GadgetHeight(Header5a) - GadgetHeight(\FeedUnitGadget))/2
    ResizeGadget(\FeedUnitGadget , #PB_Ignore , y , #PB_Ignore, #PB_Ignore )
    y = _MoveToNextGadgetY(\SpindleSpeedGadget) + (GadgetHeight(Header5) + GadgetHeight(Header5a) - GadgetHeight(\CuttingFeedGadget))/2
    ResizeGadget(\CuttingFeedGadget , #PB_Ignore , y , #PB_Ignore, #PB_Ignore ) 
    y = _MoveToNextGadgetY(Header5a)
    Header6 = TextGadget(#PB_Any, x, y, 16, 16, "Подача")
    _FitGadgetWH(Header6) 
    y = _MoveToNextGadgetY(Header6, 0)
    Header6b = TextGadget(#PB_Any, x, y, 16, 16, "врезания")
    _FitGadgetWH(Header6b) 
    y = _MoveToNextGadgetY(Header5a) + (GadgetHeight(Header6) + GadgetHeight(Header6b) - GadgetHeight(\CuttingFeedGadget))/2
    \PlungeFeedGadget = StringGadget(#PB_Any, x2 -52, y, 60, 16, StrD(400, 0))
    *data3\Val = 400
    SetGadgetData(\PlungeFeedGadget , *data3)
    *data1\PlungeFeedGadget = \PlungeFeedGadget
    BindGadgetEvent(\PlungeFeedGadget, @ValFloatPositiveChangeEvent())
    _FitGadgetH(\PlungeFeedGadget)
    Header6a = TextGadget(#PB_Any, _MoveToNextGadgetX(\PlungeFeedGadget), y, 70, 16, "мм/мин")
    *data1\UnitGadget = Header6a
    SetGadgetData(\FeedUnitGadget , *data1)
    _FitGadgetH(Header6a)
    y = _MoveToNextGadgetY(Header6b)
    \CreateToolpathGadget = ButtonGadget(#PB_Any, (Width - 150)/2, y, 150, 32, "Вычислить отступ")    
    BindGadgetEvent(\CreateToolpathGadget, @PcbOffsetEvent())
    y = _MoveToNextGadgetY(\CreateToolpathGadget)
    ResizeGadget(Gadget , #PB_Ignore , #PB_Ignore , #PB_Ignore, y )
    
    WinBackColor = GetWindowBackgroundColor(WindowID(#win))
    
    StartDrawing(CanvasOutput(Gadget))
    OHeight = OutputHeight()
    OWidth = OutputWidth()
    Box(0, 0, OWidth, OHeight, WinBackColor)
    StopDrawing()
    
    StartVectorDrawing(CanvasVectorOutput(Gadget))
    AddPathBox(0 , 2 , OWidth , OHeight-3) 
    VectorSourceColor(RGBA(169, 169, 169, 255) )
    StrokePath(2)
    StopVectorDrawing() 
      
    _Refresh(\PcbTopNameGadget)
    _Refresh(\PcbBotNameGadget) 
  EndWith
  CloseGadgetList()
  SetGadgetData(Gadget, *data)
EndProcedure

Procedure DestroyPcbSettingsGadget(Gadget)
  Protected *data.PcbSettingsGadgetData, *data1
  If IsGadget(Gadget)
    If GadgetType(Gadget) = #PB_GadgetType_Canvas
      *data = GetGadgetData(Gadget)
      If *data
        With *data
          *data1 = GetGadgetData(\FeedUnitGadget)
          If *data1 : FreeStructure(*data1) : EndIf
          *data1 = GetGadgetData(\CuttingFeedGadget)
          If *data1 : FreeStructure(*data1) : EndIf
          *data1 = GetGadgetData(\PlungeFeedGadget)
          If *data1 : FreeStructure(*data1) : EndIf
          UnbindGadgetEvent(\OffsetGadget, @ValFloatPositiveChangeEvent())
          UnbindGadgetEvent(\CutDepthGadget, @ValFloatPositiveChangeEvent())
          UnbindGadgetEvent(\PassDepthGadget, @ValFloatPositiveChangeEvent())
          UnbindGadgetEvent(\SpindleSpeedGadget, @ValIntegerPositiveChangeEvent()) 
          UnbindGadgetEvent(\CuttingFeedGadget, @ValFloatPositiveChangeEvent()) 
          UnbindGadgetEvent(\PlungeFeedGadget, @ValFloatPositiveChangeEvent())
          UnbindGadgetEvent(\FeedUnitGadget, @FeedUnitChangeEvent()) 
        EndWith
        FreeStructure(*data)
      EndIf
    EndIf
    FreeGadget(Gadget)
  EndIf 
EndProcedure

Procedure DrillCutChangeEvent()
  Protected CurGadget = EventGadget()
  Protected *Data.DrillItemGadgetData
  Protected i, *ScrlData.ParentGadgetData  = GetGadgetData(GetGadgetData(CurGadget))
  For i = 1 To ArraySize(*ScrlData\Parent() )
    *Data =  GetGadgetData(*ScrlData\Parent(i))
    If CurGadget <> *Data\DrillCutGadget
      SetGadgetState(*Data\DrillCutGadget,0)
    EndIf
  Next i
EndProcedure

Procedure CutAllHoleChangeEvent()
  Protected CurGadget = EventGadget()
  Protected State = GetGadgetState(CurGadget)
  Protected *Data.DrillItemGadgetData
  Protected i, *ScrlData.ParentGadgetData  = GetGadgetData(CurGadget)
  For i = 1 To ArraySize(*ScrlData\Parent() )
    *Data =  GetGadgetData(*ScrlData\Parent(i))
    DisableGadget(*Data\DrillCutGadget,State)
    If Not(State = 0 And i = 1)
      SetGadgetState(*Data\DrillCutGadget,State)
    EndIf
  Next i
EndProcedure

Procedure.i DrillItemGadget(Gadget, *Owner, x, y, Width, Height, Name.s, D.d)
  Protected result, id, *Data.DrillItemGadgetData, WinBackColor, *LnData.LayerNameGadgetData, Header1, Header1a
  *data = AllocateStructure(DrillItemGadgetData)
  *LnData = AllocateStructure(LayerNameGadgetData)
  *LnData\LayerName = Name
  result = CanvasGadget(Gadget, x, y, Width, Height, #PB_Canvas_Container)
  If Gadget = #PB_Any
    id = result
  Else
    id = Gadget
  EndIf
  With *data 
    y = 2
    x = 2
    \DrillDrawGadget = CheckBoxGadget(#PB_Any, x, y, 16, 16, "")
    _FitGadgetWH(\DrillDrawGadget)
    SetGadgetState(\DrillDrawGadget, 1)
    SetGadgetData(\DrillDrawGadget, *LnData)
    BindGadgetEvent(\DrillDrawGadget, @DrawCutLayerChangeEvent())
    x = _MoveToNextGadgetX(\DrillDrawGadget)
    \DrillCutGadget = OptionGadget(#PB_Any, x, y, 16, 16, "")
    SetGadgetData(\DrillCutGadget, *Owner)
    BindGadgetEvent(\DrillCutGadget, @DrillCutChangeEvent()) 
    _FitGadgetWH(\DrillCutGadget)
    x = _MoveToNextGadgetX(\DrillCutGadget)
    \DrillNameGadget = TextGadget(#PB_Any, x, y, 40, 16, Name, #PB_Text_Center)
    _FitGadgetH(\DrillNameGadget)
    x = _MoveToNextGadgetX(\DrillNameGadget)
    Header1 = TextGadget(#PB_Any, x, y, 16, 16, Chr(0216));0248
    _FitGadgetWH(Header1)
    x = _MoveToNextGadgetX(Header1)
    \DrillDiaGadget = StringGadget(#PB_Any, x, y, 50, 16, StrD(D, 2))
    _FitGadgetH(\DrillDiaGadget) 
    SetGadgetData(\DrillDiaGadget, *LnData)
    BindGadgetEvent(\DrillDiaGadget, @DrillDvalChangeEvent())
    x = _MoveToNextGadgetX(\DrillDiaGadget)
    Header1a = TextGadget(#PB_Any, x, y, 16, 16, "мм")
    _FitGadgetWH(Header1a)
    
    y = 2 + (GadgetHeight(\DrillDiaGadget)- GadgetHeight(\DrillNameGadget))/2
    ResizeGadget(\DrillNameGadget , #PB_Ignore , y , #PB_Ignore , #PB_Ignore)
    ResizeGadget(Header1 , #PB_Ignore , y , #PB_Ignore , #PB_Ignore)
    ResizeGadget(Header1a , #PB_Ignore , y , #PB_Ignore , #PB_Ignore)
    y = 2 + (GadgetHeight(\DrillDiaGadget)- GadgetHeight(\DrillDrawGadget))/2
    ResizeGadget(\DrillDrawGadget , #PB_Ignore , y , #PB_Ignore , #PB_Ignore)
    y = _MoveToNextGadgetY(\DrillDiaGadget)
    ResizeGadget(id , #PB_Ignore , #PB_Ignore , #PB_Ignore, y )
    WinBackColor = GetWindowBackgroundColor(WindowID(#win)) 
    StartDrawing(CanvasOutput(id))
    Box(0, 0, OutputWidth(), OutputHeight(), WinBackColor)
    StopDrawing()
  EndWith  
  CloseGadgetList()
  SetGadgetData(id, *data)
  ProcedureReturn id
EndProcedure

Procedure DestroyDrillItemGadget(Gadget)
  Protected *data.DrillItemGadgetData
  If IsGadget(Gadget)
    If GadgetType(Gadget) = #PB_GadgetType_Canvas
      *data = GetGadgetData(Gadget)
      If *data
        With *data
          UnbindGadgetEvent(\DrillDrawGadget, @DrawCutLayerChangeEvent())
          UnbindGadgetEvent(\DrillCutGadget, @DrillCutChangeEvent()) 
          UnbindGadgetEvent(\DrillDiaGadget, @DrillDvalChangeEvent())
        EndWith
        FreeStructure(*data)
      EndIf
    EndIf
    FreeGadget(Gadget)
  EndIf 
EndProcedure

Procedure ReboundDrillChangeEvent() 
  Protected State = GetGadgetState(EventGadget())
  Protected *data.DrillSettingsGadgetData = GetGadgetData(#DrillSettingsGadget)
  If State = 1 : State = 0 : Else : State = 1 : EndIf
  With *data
    DisableGadget(\AboveStartGadget, State)
    DisableGadget(\AbovePassGadget, State) 
    DisableGadget(\ReboundHeader1Gadget, State)
    DisableGadget(\ReboundDistanceGadget, State)
    DisableGadget(\ReboundHeader1aGadget, State)
  EndWith
EndProcedure

Procedure DrillSettingsGadget(Gadget, x, y, Width, Height)
  Protected result, i, Name.s, ret, ScrlA, dY, tG, *ScrlData.ParentGadgetData, *data1.UnitGadgetData, *data2.UnitValueGadgetData 
  Protected *data.DrillSettingsGadgetData, Header2, Header2a, Header3, x2, Header3a, Header4, Header4a
  Protected OHeight, OWidth, WinBackColor, Header5, Header5a, Header6, Header6a
  *ScrlData = AllocateStructure(ParentGadgetData)
  
  *data = AllocateStructure(DrillSettingsGadgetData)
  *data1 = AllocateStructure(UnitGadgetData)
  *data2 = AllocateStructure(UnitValueGadgetData)
  result = CanvasGadget(Gadget, x, y, Width, Height, #PB_Canvas_Container)
  y=2
  tG = StringGadget(#PB_Any, 0, 0, 16, 16, "0")
  _FitGadgetH(tG)
  dY = (GadgetHeight(tG) + 5)
  FreeGadget(tG)
  
  With *data
    \ScrlGadget = ScrollAreaGadget(#PB_Any, 2, y, Width - 3, dY * 3,  Width -3 - #Scroll_Width, dY * 3 , dY + #Scroll_Width / 3, #PB_ScrollArea_BorderLess)
    SetGadgetAttribute(\ScrlGadget, #PB_ScrollArea_InnerHeight, y)
    SetGadgetData(\ScrlGadget, *ScrlData)
    CloseGadgetList()
    y = _MoveToNextGadgetY(\ScrlGadget)
    x2 = 125
    x=2
    \CutAllHoleGadget = CheckBoxGadget(#PB_Any, x + 3, y, 16, 16, "Все отверстия одним сверлом")
    SetGadgetData(\CutAllHoleGadget, *ScrlData)
    _FitGadgetWH(\CutAllHoleGadget)
    BindGadgetEvent(\CutAllHoleGadget, @CutAllHoleChangeEvent())
    y = _MoveToNextGadgetY(\CutAllHoleGadget)
    Header2 = TextGadget(#PB_Any, x, y, 16, 16, "Глубина сверления")
    _FitGadgetWH(Header2)
    \CutDepthGadget= StringGadget(#PB_Any, x2, y, 45, 16, StrD(0.10, 2))
    BindGadgetEvent(\CutDepthGadget, @ValFloatPositiveChangeEvent())
    _FitGadgetH(\CutDepthGadget) 
    Header2a = TextGadget(#PB_Any, _MoveToNextGadgetX(\CutDepthGadget), y, 16, 16, "мм")
    _FitGadgetWH(Header2a) 
    y = _MoveToNextGadgetY(\CutDepthGadget)

    Header3 = TextGadget(#PB_Any, x, y, 16, 16, "Глубина прохода")  
    _FitGadgetWH(Header3) 
    \PassDepthGadget= StringGadget(#PB_Any, x2, y, 45, 16, StrD(0.05, 2))
    BindGadgetEvent(\PassDepthGadget, @ValFloatPositiveChangeEvent())
    _FitGadgetH(\PassDepthGadget) 
    Header3a = TextGadget(#PB_Any, _MoveToNextGadgetX(\PassDepthGadget), y, 16, 16, "мм")
    _FitGadgetWH(Header3a)   
    
    y = _MoveToNextGadgetY(\PassDepthGadget)
    \ReboundDrillGadget = CheckBoxGadget(#PB_Any, x + 3, y, 16, 16, "Сверлить с отскоком")
    BindGadgetEvent(\ReboundDrillGadget, @ReboundDrillChangeEvent())
    _FitGadgetWH(\ReboundDrillGadget)
    y = _MoveToNextGadgetY(\ReboundDrillGadget)
    \AboveStartGadget = OptionGadget(#PB_Any, x + 3, y, 16, 16, "Выше начала сверления")
    _FitGadgetWH(\AboveStartGadget)
    y = _MoveToNextGadgetY(\AboveStartGadget)
    \AbovePassGadget= OptionGadget(#PB_Any, x + 3, y, 16, 16, "Выше предыдущего прохода")   
    _FitGadgetWH(\AbovePassGadget)
    SetGadgetState(\AboveStartGadget, 1)
    y = _MoveToNextGadgetY(\AbovePassGadget)
    \ReboundHeader1Gadget = TextGadget(#PB_Any, x, y, 16, 16, "Дистанция отскока")  
    _FitGadgetWH(\ReboundHeader1Gadget)
    \ReboundDistanceGadget = StringGadget(#PB_Any, x2, y, 45, 16, StrD(0.2, 2))
    _FitGadgetH(\ReboundDistanceGadget) 
    BindGadgetEvent(\ReboundDistanceGadget, @ValFloatPositiveChangeEvent())
    \ReboundHeader1aGadget = TextGadget(#PB_Any, _MoveToNextGadgetX(\ReboundDistanceGadget), y, 16, 16, "мм")
    _FitGadgetWH(\ReboundHeader1aGadget) 
    DisableGadget(\AboveStartGadget, 1)
    DisableGadget(\AbovePassGadget, 1)
    DisableGadget(\ReboundHeader1Gadget, 1)
    DisableGadget(\ReboundDistanceGadget, 1)
    DisableGadget(\ReboundHeader1aGadget, 1)
    y = _MoveToNextGadgetY(\ReboundDistanceGadget)
    
    Header4 = TextGadget(#PB_Any, x, y, 16, 16, "Скорость шпинделя") 
    _FitGadgetWH(Header4) 
    \SpindleSpeedGadget = StringGadget(#PB_Any, x2, y, 45, 16, StrD(12000, 0))
    BindGadgetEvent(\SpindleSpeedGadget, @ValIntegerPositiveChangeEvent()) 
    _FitGadgetH(\SpindleSpeedGadget) 
    Header4a = TextGadget(#PB_Any, _MoveToNextGadgetX(\PassDepthGadget), y, 16, 16, "об/мин")
    _FitGadgetWH(Header4a)  
    
    y = _MoveToNextGadgetY(\SpindleSpeedGadget)
    x = 2
    Header5 = TextGadget(#PB_Any, x, y, 16, 16, "Подача") 
    _FitGadgetWH(Header5) 
    y = _MoveToNextGadgetY(Header5,0)
    Header5a = TextGadget(#PB_Any, x, y, 16, 16, "врезания") 
    _FitGadgetWH(Header5a)
    y = _MoveToNextGadgetY(\SpindleSpeedGadget)
    \CuttingFeedGadget = StringGadget(#PB_Any, x2 -52, y, 60, 16, StrD(800, 0))
    *data1\CuttingFeedGadget = \CuttingFeedGadget
    *data2\Unit = 1
    *data2\Val = 800
    SetGadgetData(\CuttingFeedGadget , *data2)
    BindGadgetEvent(\CuttingFeedGadget, @ValFloatPositiveChangeEvent()) 
    _FitGadgetH(\CuttingFeedGadget) 
    \FeedUnitGadget = ComboBoxGadget(#PB_Any, _MoveToNextGadgetX(\CuttingFeedGadget, 2), y, 70, 16)
    BindGadgetEvent(\FeedUnitGadget, @FeedUnitChangeEvent()) 
    AddGadgetItem(\FeedUnitGadget, -1, "мм/сек")
    AddGadgetItem(\FeedUnitGadget, -1, "мм/мин")
    AddGadgetItem(\FeedUnitGadget, -1, "м/мин")
    SetGadgetState(\FeedUnitGadget, 1)
    SetGadgetData(\FeedUnitGadget , *data1)
    _FitGadgetH(\FeedUnitGadget)
    y = _MoveToNextGadgetY(\SpindleSpeedGadget) + (GadgetHeight(Header5) + GadgetHeight(Header5a) - GadgetHeight(\FeedUnitGadget))/2
    ResizeGadget(\FeedUnitGadget , #PB_Ignore , y , #PB_Ignore, #PB_Ignore )
    y = _MoveToNextGadgetY(\SpindleSpeedGadget) + (GadgetHeight(Header5) + GadgetHeight(Header5a) - GadgetHeight(\CuttingFeedGadget))/2
    ResizeGadget(\CuttingFeedGadget , #PB_Ignore , y , #PB_Ignore, #PB_Ignore )    
    y = _MoveToNextGadgetY(Header5a)
    
    ResizeGadget(Gadget , #PB_Ignore , #PB_Ignore , #PB_Ignore, y )
    WinBackColor = GetWindowBackgroundColor(WindowID(#win)) 
    StartDrawing(CanvasOutput(Gadget))
    OHeight = OutputHeight()
    OWidth = OutputWidth()
    Box(0, 0, OWidth, OHeight, WinBackColor)
    StopDrawing()
    
    StartVectorDrawing(CanvasVectorOutput(Gadget))
    AddPathBox(0 , 2 , OWidth , OHeight-3) 
    VectorSourceColor(RGBA(169, 169, 169, 255) )
    StrokePath(2)
    StopVectorDrawing()  
  EndWith 
  
  SetGadgetData(Gadget, *data)
  CloseGadgetList()
EndProcedure

Procedure DestroyDrillSettingsGadget(Gadget)
  Protected *data.DrillSettingsGadgetData, *ScrlData.ParentGadgetData, *data1, i
  If IsGadget(Gadget)
    If GadgetType(Gadget) = #PB_GadgetType_Canvas
      *data = GetGadgetData(Gadget)
      If *data
        With *data
          *data1 = GetGadgetData(\FeedUnitGadget)
          If *data1 : FreeStructure(*data1) : EndIf
          *data1 = GetGadgetData(\CuttingFeedGadget)
          If *data1 : FreeStructure(*data1) : EndIf
          *ScrlData = GetGadgetData(\ScrlGadget)
          If *ScrlData
            For i = 1 To ArraySize(*ScrlData\Parent() )
              DestroyDrillItemGadget(*ScrlData\Parent(i))
            Next i 
            FreeStructure(*ScrlData) 
          EndIf
          *ScrlData = GetGadgetData(\CutAllHoleGadget)
          If *ScrlData 
           ; FreeStructure(*ScrlData) ; уже освобождена 
          EndIf
          UnbindGadgetEvent(\CutAllHoleGadget, @CutAllHoleChangeEvent())
          UnbindGadgetEvent(\FeedUnitGadget, @FeedUnitChangeEvent())
          UnbindGadgetEvent(\CuttingFeedGadget, @ValFloatPositiveChangeEvent()) 
          UnbindGadgetEvent(\SpindleSpeedGadget, @ValIntegerPositiveChangeEvent()) 
          UnbindGadgetEvent(\ReboundDistanceGadget, @ValFloatPositiveChangeEvent())
          UnbindGadgetEvent(\ReboundDrillGadget, @ReboundDrillChangeEvent())
          UnbindGadgetEvent(\PassDepthGadget, @ValFloatPositiveChangeEvent())
          UnbindGadgetEvent(\CutDepthGadget, @ValFloatPositiveChangeEvent())	
        EndWith
        FreeStructure(*data)
      EndIf
    EndIf
    FreeGadget(Gadget)
  EndIf 
EndProcedure

Procedure PcbCutOffsetEvent()
  Protected *data.PcbCutSettingsGadgetData
  *data = GetGadgetData(#PcbCutSettingsGadget) 
  EquLayer("SP5", Abs(ValF(GetGadgetText(*data\OffsetGadget))))
  DisableGadget(*data\PcbCutDrawGadget, 0)
  SetGadgetState(*data\PcbCutDrawGadget, 1)
  DisableGadget(#SavePcbCutGCodeBtn, 0)
  SetLayersDataViewer2DGadget(#Viewer, Layers())
EndProcedure  

Procedure PcbCutSettingsGadget(Gadget, x, y, Width, Height)
  Protected result, WinBackColor,BorderColor, *data.PcbCutSettingsGadgetData, *data1.UnitGadgetData, *data2.UnitValueGadgetData, *data3.UnitValueGadgetData
  Protected OHeight, OWidth, x2
  Protected Block1Y, Block2Y, Block3Y, Block4Y, Block5Y
  Protected Header1, Header1a, Header2, Header2a, Header3, Header3a, Header4, Header4a
  Protected Header5, Header5a, Header6, Header6b, Header6a
  Protected *LnData.LayerNameGadgetData = AllocateStructure(LayerNameGadgetData)
  *LnData\LayerName = "SP5"
  *data = AllocateStructure(PcbCutSettingsGadgetData)
  *data1 = AllocateStructure(UnitGadgetData)
  *data2 = AllocateStructure(UnitValueGadgetData)
  *data3 = AllocateStructure(UnitValueGadgetData)
  *data2\Unit = 1
  *data3\Unit = 1
  result = CanvasGadget(Gadget, x, y, Width, Height, #PB_Canvas_Container)
  
  With *data 
    y = 2
    x = 2
    x = 2
    x2 = 125
    \PcbCutDrawGadget = CheckBoxGadget(#PB_Any, x, y, 16, 16, "")
    SetGadgetData(\PcbCutDrawGadget, *LnData)
    BindGadgetEvent(\PcbCutDrawGadget, @DrawCutLayerChangeEvent())
    _FitGadgetWH(\PcbCutDrawGadget)
    x = _MoveToNextGadgetX(\PcbCutDrawGadget) 
    \PcbCutNameGadget = TextGadget(#PB_Any, x, y, 16, 16, "Контур", #PB_Text_Center)
    _FitGadgetWH(\PcbCutNameGadget)  
    y = _MoveToNextGadgetY(\PcbCutNameGadget)
    Header1 = TextGadget(#PB_Any, x, y, 16, 16, "Отступ")
    _FitGadgetWH(Header1)
    \OffsetGadget = StringGadget(#PB_Any, x2, y, 45, 16, StrD(0.10, 2))
    BindGadgetEvent(\OffsetGadget, @ValFloatPositiveChangeEvent())
    _FitGadgetH(\OffsetGadget)
    Header1a = TextGadget(#PB_Any, _MoveToNextGadgetX(\OffsetGadget), y, 16, 16, "мм")
    _FitGadgetWH(Header1a)
    
    y = _MoveToNextGadgetY(\OffsetGadget)
    x = 2
    Header2 = TextGadget(#PB_Any, x, y, 16, 16, "Глубина фрезеровки")
    _FitGadgetWH(Header2)
    \CutDepthGadget= StringGadget(#PB_Any, x2, y, 45, 16, StrD(0.10, 2))
    BindGadgetEvent(\CutDepthGadget, @ValFloatPositiveChangeEvent())
    _FitGadgetH(\CutDepthGadget) 
    Header2a = TextGadget(#PB_Any, _MoveToNextGadgetX(\CutDepthGadget), y, 16, 16, "мм")
    _FitGadgetWH(Header2a) 
    y = _MoveToNextGadgetY(\CutDepthGadget)
    x = 2
    Header3 = TextGadget(#PB_Any, x, y, 16, 16, "Глубина прохода")  
    _FitGadgetWH(Header3) 
    \PassDepthGadget= StringGadget(#PB_Any, x2, y, 45, 16, StrD(0.05, 2))
    BindGadgetEvent(\PassDepthGadget, @ValFloatPositiveChangeEvent())
    _FitGadgetH(\PassDepthGadget) 
    Header3a = TextGadget(#PB_Any, _MoveToNextGadgetX(\PassDepthGadget), y, 16, 16, "мм")
    _FitGadgetWH(Header3a)   
    
    y = _MoveToNextGadgetY(\PassDepthGadget)
    x = 2
    Header4 = TextGadget(#PB_Any, x, y, 16, 16, "Скорость шпинделя") 
    _FitGadgetWH(Header4) 
    \SpindleSpeedGadget = StringGadget(#PB_Any, x2, y, 45, 16, StrD(12000, 0))
    BindGadgetEvent(\SpindleSpeedGadget, @ValIntegerPositiveChangeEvent()) 
    _FitGadgetH(\SpindleSpeedGadget) 
    Header4a = TextGadget(#PB_Any, _MoveToNextGadgetX(\PassDepthGadget), y, 16, 16, "об/мин")
    _FitGadgetWH(Header4a)  
    
    y = _MoveToNextGadgetY(\SpindleSpeedGadget)
    x = 2
    Header5 = TextGadget(#PB_Any, x, y, 16, 16, "Подача") 
    _FitGadgetWH(Header5) 
    y = _MoveToNextGadgetY(Header5,0)
    Header5a = TextGadget(#PB_Any, x, y, 16, 16, "резания") 
    _FitGadgetWH(Header5a)
    y = _MoveToNextGadgetY(\SpindleSpeedGadget)
    \CuttingFeedGadget = StringGadget(#PB_Any, x2 -52, y, 60, 16, StrD(800, 0))
    *data1\CuttingFeedGadget = \CuttingFeedGadget
    *data2\Val = 800
    SetGadgetData(\CuttingFeedGadget , *data2)
    BindGadgetEvent(\CuttingFeedGadget, @ValFloatPositiveChangeEvent()) 
    _FitGadgetH(\CuttingFeedGadget) 
    \FeedUnitGadget = ComboBoxGadget(#PB_Any, _MoveToNextGadgetX(\CuttingFeedGadget, 2), y, 70, 16)
    BindGadgetEvent(\FeedUnitGadget, @FeedUnitChangeEvent()) 
    AddGadgetItem(\FeedUnitGadget, -1, "мм/сек")
    AddGadgetItem(\FeedUnitGadget, -1, "мм/мин")
    AddGadgetItem(\FeedUnitGadget, -1, "м/мин")
    SetGadgetState(\FeedUnitGadget, 1)
    _FitGadgetH(\FeedUnitGadget)
    y = _MoveToNextGadgetY(\SpindleSpeedGadget) + (GadgetHeight(Header5) + GadgetHeight(Header5a) - GadgetHeight(\FeedUnitGadget))/2
    ResizeGadget(\FeedUnitGadget , #PB_Ignore , y , #PB_Ignore, #PB_Ignore )
    y = _MoveToNextGadgetY(\SpindleSpeedGadget) + (GadgetHeight(Header5) + GadgetHeight(Header5a) - GadgetHeight(\CuttingFeedGadget))/2
    ResizeGadget(\CuttingFeedGadget , #PB_Ignore , y , #PB_Ignore, #PB_Ignore ) 
    y = _MoveToNextGadgetY(Header5a)
    Header6 = TextGadget(#PB_Any, x, y, 16, 16, "Подача")
    _FitGadgetWH(Header6) 
    y = _MoveToNextGadgetY(Header6, 0)
    Header6b = TextGadget(#PB_Any, x, y, 16, 16, "врезания")
    _FitGadgetWH(Header6b) 
    y = _MoveToNextGadgetY(Header5a) + (GadgetHeight(Header6) + GadgetHeight(Header6b) - GadgetHeight(\CuttingFeedGadget))/2
    \PlungeFeedGadget = StringGadget(#PB_Any, x2 -52, y, 60, 16, StrD(400, 0))
    *data3\Val = 400
    SetGadgetData(\PlungeFeedGadget , *data3)
    *data1\PlungeFeedGadget = \PlungeFeedGadget
    BindGadgetEvent(\PlungeFeedGadget, @ValFloatPositiveChangeEvent())
    _FitGadgetH(\PlungeFeedGadget)
    Header6a = TextGadget(#PB_Any, _MoveToNextGadgetX(\PlungeFeedGadget), y, 70, 16, "мм/мин")
    *data1\UnitGadget = Header6a
    SetGadgetData(\FeedUnitGadget , *data1)
    _FitGadgetH(Header6a)
    y = _MoveToNextGadgetY(Header6b)
    \CreateToolpathGadget = ButtonGadget(#PB_Any, (Width - 150)/2, y, 150, 32, "Вычислить отступ") 
    BindGadgetEvent(\CreateToolpathGadget, @PcbCutOffsetEvent())
    y = _MoveToNextGadgetY(\CreateToolpathGadget)
    ResizeGadget(Gadget , #PB_Ignore , #PB_Ignore , #PB_Ignore, y )
    
    WinBackColor = GetWindowBackgroundColor(WindowID(#win))
    
    StartDrawing(CanvasOutput(Gadget))
    OHeight = OutputHeight()
    OWidth = OutputWidth()
    Box(0, 0, OWidth, OHeight, WinBackColor)
    StopDrawing()
    
    StartVectorDrawing(CanvasVectorOutput(Gadget))
    AddPathBox(0 , 2 , OWidth , OHeight-3) 
    VectorSourceColor(RGBA(169, 169, 169, 255) )
    StrokePath(2)
    StopVectorDrawing() 
    
  EndWith
  CloseGadgetList()
  SetGadgetData(Gadget, *data)
EndProcedure

Procedure DestroyPcbCutSettingsGadget(Gadget)
  Protected *data.PcbCutSettingsGadgetData, *data1
  If IsGadget(Gadget)
    If GadgetType(Gadget) = #PB_GadgetType_Canvas
      *data = GetGadgetData(Gadget)
      If *data
        With *data
          *data1 = GetGadgetData(\FeedUnitGadget)
          If *data1 : FreeStructure(*data1) : EndIf
          *data1 = GetGadgetData(\CuttingFeedGadget)
          If *data1 : FreeStructure(*data1) : EndIf
          *data1 = GetGadgetData(\PlungeFeedGadget)
          If *data1 : FreeStructure(*data1) : EndIf
          UnbindGadgetEvent(\OffsetGadget, @ValFloatPositiveChangeEvent())
          UnbindGadgetEvent(\CutDepthGadget, @ValFloatPositiveChangeEvent())
          UnbindGadgetEvent(\PassDepthGadget, @ValFloatPositiveChangeEvent())
          UnbindGadgetEvent(\SpindleSpeedGadget, @ValIntegerPositiveChangeEvent()) 
          UnbindGadgetEvent(\CuttingFeedGadget, @ValFloatPositiveChangeEvent()) 
          UnbindGadgetEvent(\PlungeFeedGadget, @ValFloatPositiveChangeEvent())
          UnbindGadgetEvent(\FeedUnitGadget, @FeedUnitChangeEvent()) 
        EndWith
        FreeStructure(*data)
      EndIf
    EndIf
    FreeGadget(Gadget)
  EndIf 
EndProcedure

Procedure WindowResize()
  Protected  dW, dH, vWidth
  dW = WindowWidth(#Win , #PB_Window_InnerCoordinate) 
  dH = WindowHeight(#Win , #PB_Window_InnerCoordinate)
  ResizeGadget(#Viewer, 0, 0, dW - 220, dH)
  vWidth = GadgetWidth(#Viewer) 
  ResizeGadget(#OpenPltFileBtn, vWidth, #PB_Ignore, #PB_Ignore, #PB_Ignore)
  ResizeGadget(#SavePcbGCodeBtn, vWidth, #PB_Ignore, #PB_Ignore, #PB_Ignore)
  ResizeGadget(#SavePcbCutGCodeBtn, vWidth, #PB_Ignore, #PB_Ignore, #PB_Ignore)
  ResizeGadget(#SaveDrillGCodeBtn, vWidth, #PB_Ignore, #PB_Ignore, #PB_Ignore)
  ResizeGadget(#ProjSettingsBtn, vWidth +5 , #PB_Ignore, #PB_Ignore, #PB_Ignore)
  ResizeGadget(#DrillSettingsBtn, vWidth +5, #PB_Ignore, #PB_Ignore, #PB_Ignore)
  ResizeGadget(#PcbSettingsBtn, vWidth +5, #PB_Ignore, #PB_Ignore, #PB_Ignore)
  ResizeGadget(#PcbCutSettingsBtn, vWidth +5, #PB_Ignore, #PB_Ignore, #PB_Ignore)
  ResizeGadget(#ProjSettingsGadget, vWidth, #PB_Ignore, #PB_Ignore, #PB_Ignore)   
  ResizeGadget(#PcbSettingsGadget, vWidth, #PB_Ignore, #PB_Ignore, #PB_Ignore)  
  ResizeGadget(#PcbCutSettingsGadget, vWidth, #PB_Ignore, #PB_Ignore, #PB_Ignore)  
  ResizeGadget(#DrillSettingsGadget, vWidth, #PB_Ignore, #PB_Ignore, #PB_Ignore)  
EndProcedure  

Procedure SettingsBtnEvent()
  If GetGadgetState(#ProjSettingsBtn)
    HideGadget(#PcbSettingsGadget , 1)
    HideGadget(#PcbCutSettingsGadget , 1)
    HideGadget(#DrillSettingsGadget , 1)
    HideGadget(#ProjSettingsGadget , 0)    
    HideGadget(#SavePcbGCodeBtn , 1)
    HideGadget(#SavePcbCutGCodeBtn , 1)
    HideGadget(#SaveDrillGCodeBtn , 1)
    HideGadget(#OpenPltFileBtn , 0)
  ElseIf  GetGadgetState(#DrillSettingsBtn)
    HideGadget(#ProjSettingsGadget , 1)
    HideGadget(#PcbSettingsGadget , 1)
    HideGadget(#PcbCutSettingsGadget , 1)
    HideGadget(#DrillSettingsGadget , 0)
    HideGadget(#OpenPltFileBtn , 1)
    HideGadget(#SavePcbGCodeBtn , 1)
    HideGadget(#SavePcbCutGCodeBtn , 1)
    HideGadget(#SaveDrillGCodeBtn , 0)
  ElseIf  GetGadgetState(#PcbSettingsBtn)
    HideGadget(#ProjSettingsGadget , 1)
    HideGadget(#PcbCutSettingsGadget , 1)
    HideGadget(#DrillSettingsGadget , 1)
    HideGadget(#PcbSettingsGadget , 0)
    HideGadget(#OpenPltFileBtn , 1) 
    HideGadget(#SavePcbCutGCodeBtn , 1)
    HideGadget(#SaveDrillGCodeBtn , 1)
    HideGadget(#SavePcbGCodeBtn , 0)
  ElseIf  GetGadgetState(#PcbCutSettingsBtn)
    HideGadget(#ProjSettingsGadget , 1)
    HideGadget(#PcbSettingsGadget , 1)
    HideGadget(#DrillSettingsGadget , 1)
    HideGadget(#PcbCutSettingsGadget , 0)
    HideGadget(#OpenPltFileBtn , 1)   
    HideGadget(#SaveDrillGCodeBtn , 1)
    HideGadget(#SavePcbGCodeBtn , 1)
    HideGadget(#SavePcbCutGCodeBtn , 0)
  EndIf
EndProcedure

Procedure OpenPltFileBtnEvent()
  Protected File.s, Ls, l, Drill, PcbTop, PcbBtm, PcbCut, i
  Protected *PcbData.PcbSettingsGadgetData, LayerN, DrillLayers, DrillLayer, *ScrlData.ParentGadgetData
  Protected *HolesLayer.DrillItemGadgetData, *Drill.DrillSettingsGadgetData, *PcbCutData.PcbCutSettingsGadgetData
  Protected y,ScrlW
  Drill = 1
  PcbTop = 1
  PcbBtm = 1
  PcbCut = 1
  DrillLayers = 0
  DrillLayer = 1
  File = OpenFileRequester("Укажите файл для загрузки", "", "HPGL (*.plt)|*.plt", 0)
  If File
    DisableGadget(#SavePcbGCodeBtn, 0)
    DisableGadget(#SavePcbCutGCodeBtn, 0)
    DisableGadget(#SaveDrillGCodeBtn, 0)
    ParsePlt(File)
    SetGadgetState(#ProjSettingsBtn, 1)
    
    Ls = ListSize(Layers())  - 1
    For l = 0 To Ls
      SelectElement(Layers(), l) 
      
      LayerN = Int(ValF(ReplaceString(Layers()\Name,"SP","")))
      If LayerN = 1 Or LayerN = 4 Or LayerN > 5
        DrillLayers = DrillLayers + 1
      EndIf
      If Layers()\Name ="SP1" Or Layers()\Name ="SP4" Or Layers()\Name ="SP6"
        Drill = 0
      ElseIf Layers()\Name = "SP2" 
        PcbTop = 0
      ElseIf Layers()\Name = "SP3"
        PcbBtm =0
      ElseIf Layers()\Name = "SP5"
        PcbCut = 0
      EndIf
    Next l
    
    If Drill = 0
      *Drill = GetGadgetData(#DrillSettingsGadget)
      *ScrlData = GetGadgetData(*Drill\ScrlGadget)
      ScrlW = GadgetWidth(*Drill\ScrlGadget)         
      For i = 1 To ArraySize(*ScrlData\Parent() )
        DestroyDrillItemGadget(*ScrlData\Parent(i))
      Next i    
      FreeArray(*ScrlData\Parent())
      Dim *ScrlData\Parent(DrillLayers)
      OpenGadgetList(*Drill\ScrlGadget)
      For l = 0 To Ls
        SelectElement(Layers(), l)     
        LayerN = Int(ValF(ReplaceString(Layers()\Name,"SP","")))
        If LayerN = 1 Or LayerN = 4 Or LayerN > 5
          *ScrlData\Parent(DrillLayer) = DrillItemGadget(#PB_Any, *Drill\ScrlGadget, 0, y, ScrlW - #Scroll_Width, 16, Layers()\Name, Layers()\CircleD)              
          y = _MoveToNextGadgetY(*ScrlData\Parent(DrillLayer),0)
          DrillLayer = DrillLayer + 1
        EndIf
      Next l
      CloseGadgetList()  
      SetGadgetAttribute(*Drill\ScrlGadget, #PB_ScrollArea_InnerHeight, y)
      *HolesLayer = GetGadgetData(*ScrlData\Parent(1))
      SetGadgetState(*HolesLayer\DrillCutGadget, 1)
      If DrillLayers < 2
        DisableGadget(*Drill\CutAllHoleGadget, 1)
      Else
        DisableGadget(*Drill\CutAllHoleGadget, 0)
      EndIf  
      SetGadgetState(*Drill\CutAllHoleGadget, 0)
      DisableGadget(#SaveDrillGCodeBtn , 0)
    Else
      DisableGadget(#SaveDrillGCodeBtn , 1)
    EndIf
    
    DisableGadget(#DrillSettingsBtn, Drill)
    If PcbTop = 0 Or PcbBtm = 0
      DisableGadget(#PcbSettingsBtn, 0)
      *PcbData = GetGadgetData(#PcbSettingsGadget)
      With *PcbData
        DisableGadget(\PcbTopNameGadget, PcbTop)
        DisableGadget(\PcbBotNameGadget, PcbBtm)
        
        DisableGadget(\PcbTopCutGadget, 1)
        DisableGadget(\PcbBotCutGadget, 1)
        DisableGadget(\PcbTopDrawGadget, 1)
        DisableGadget(\PcbBotDrawGadget, 1)
        
        If PcbTop = 0
          SetGadgetState(\PcbTopCutGadget, 1)
        Else
          If PcbBtm = 0
            SetGadgetState(\PcbBotCutGadget, 1) 
          EndIf
        EndIf
      EndWith
    Else
      DisableGadget(#PcbSettingsBtn, 1)
    EndIf
    If PcbCut = 0
      *PcbCutData = GetGadgetData(#PcbCutSettingsGadget)
      With *PcbCutData
        DisableGadget(\PcbCutNameGadget, 0)
        DisableGadget(\PcbCutDrawGadget, 1)
      EndWith
    EndIf
    
    DisableGadget(#PcbCutSettingsBtn, PcbCut)
    DisableGadget(#Viewer, 0)
    DisableProjSettingsGadget(#ProjSettingsGadget, 0)
    SettingsBtnEvent()
    
    PcbSize((MaxX - MinX) * Scale , (MaxY - MinY) * Scale)
    PcbNullPoint(MinX * Scale, MinY * Scale)
    
    DisableGadget(#SavePcbGCodeBtn , 1)
    DisableGadget(#SavePcbCutGCodeBtn , 1)
    
  EndIf
EndProcedure

Procedure SaveDrillGCodeEvent()
  Protected File.s, *data.DrillSettingsGadgetData, *ScrlData.ParentGadgetData, *HolesLayer.DrillItemGadgetData, *UnitValue.UnitValueGadgetData
  Protected Ls, Ps, l, p, i, Vs, v, n, LayerName.s, X.s, Y.s, Ret, Out.s, Zsafety.s, ParkingX.s, ParkingY.s, ParkingZ.s 
  Protected *ProjSettings.ProjSettingsGadgetData, StartParking, EndParking, SpindleSpeed.s, ReboundDrill
  Protected AboveStart, AbovePass, ReboundDistance.f, CuttingFeed.s, CutDepth.f, PassDepth.f
  Protected Passes, Ext.s
  Dim Pass.s(0)
  Dim Rebound.s(0)
  Ext = "txt"
  ReSave:
  File = SaveFileRequester("Укажите файл для сохранения операции", "Drill", "" + Ext + "(*." + Ext + ")|*." + Ext + "", 0)
  If File
    File = GetPathPart(File) + GetFilePart(File, #PB_FileSystem_NoExtension) + "." + Ext
    If CreateFile(0, File)
      *data = GetGadgetData(#DrillSettingsGadget)
      *ProjSettings = GetGadgetData(#ProjSettingsGadget)
      Zsafety = StrD(ValF(GetGadgetText(*ProjSettings\SafeZGadget)), XyRound)
      ParkingX = StrD(ValF(GetGadgetText(*ProjSettings\ParkingXGadget)), XyRound)
      ParkingY = StrD(ValF(GetGadgetText(*ProjSettings\ParkingYGadget)), XyRound)
      ParkingZ = StrD(ValF(GetGadgetText(*ProjSettings\ParkingZGadget)), XyRound)
      StartParking = GetGadgetState(*ProjSettings\ParkingStartGadget)
      EndParking = GetGadgetState(*ProjSettings\ParkingEndGadget)
      SpindleSpeed = GetGadgetText(*data\SpindleSpeedGadget) 
      ReboundDrill = GetGadgetState(*data\ReboundDrillGadget)
      AboveStart   = GetGadgetState(*data\AboveStartGadget)
      AbovePass    = GetGadgetState(*data\AbovePassGadget)
      ReboundDistance = ValF(GetGadgetText(*data\ReboundDistanceGadget))
      *UnitValue=GetGadgetData(*data\CuttingFeedGadget)
      CuttingFeed = StrD(*UnitValue\Val, 0)
      CutDepth = ValF(GetGadgetText(*data\CutDepthGadget))
      PassDepth = ValF(GetGadgetText(*data\PassDepthGadget))
         
      If ReboundDrill
        Passes = Round(CutDepth / PassDepth, #PB_Round_Up)
        PassDepth = CutDepth / Passes
        ReDim Pass(Passes - 1)
        ReDim Rebound(Passes - 1)
        For i = 1 To Passes
          Pass(i - 1) = "G01Z" + StrD(-i * PassDepth, XyRound)  + "F" + CuttingFeed
          If AboveStart
            Rebound(i - 1) = "G00Z" + StrD(ReboundDistance, XyRound)
          ElseIf AbovePass
            Rebound(i - 1) = "G00Z" + StrD(-i * PassDepth + ReboundDistance, XyRound)
          EndIf
        Next i
      EndIf
      
      Out = "%"
      WriteStringN(0, Out)
      Out = "G21G90G40G49"
      WriteStringN(0, Out)
      Out = "G00Z" + Zsafety
      WriteStringN(0, Out)
      Out = "M3 S" + SpindleSpeed
      WriteStringN(0, Out)
      If StartParking
        Out = "G00X" + ParkingX + "Y" + ParkingY + "Z" + ParkingZ
        WriteStringN(0, Out)
      EndIf
      
      Ls = ListSize(Layers())  - 1
      *data = GetGadgetData(#DrillSettingsGadget)
      *ScrlData = GetGadgetData(*data\ScrlGadget)
      For i = 1 To ArraySize(*ScrlData\Parent())
        *HolesLayer =  GetGadgetData(*ScrlData\Parent(i))
        If GetGadgetState(*HolesLayer\DrillCutGadget)
          LayerName = GetGadgetText(*HolesLayer\DrillNameGadget)      
          For l = 0 To Ls
            SelectElement(Layers(), l)
            If Layers()\Name = LayerName
              Ps = ListSize(Layers()\Plines())  - 1         
              For p = 0 To Ps
                SelectElement(Layers()\Plines(), p)
                Vs = ListSize(Layers()\Plines()\Vertex())  - 1
                For v = 0 To Vs   
                  SelectElement(Layers()\Plines()\Vertex(), v)
                  X = StrD(Layers()\Plines()\Vertex()\X - X0, XyRound)
                  Y = StrD(Layers()\Plines()\Vertex()\Y - Y0, XyRound)
                  Out = "G00X" + X + "Y" + Y 
                  WriteStringN(0, Out)
                  If ReboundDrill
                    For n = 0 To Passes - 1
                      WriteStringN(0, Pass(n))
                      If n< Passes - 1
                        WriteStringN(0, Rebound(n))
                      EndIf
                    Next n
                    Out = "G00Z" + Zsafety
                    WriteStringN(0, Out)
                  Else
                    Out = "G01Z" + StrD(- CutDepth, XyRound)  + "F" + CuttingFeed
                    WriteStringN(0, Out)
                    Out = "G00Z" + Zsafety
                    WriteStringN(0, Out)
                  EndIf
                Next v      
              Next p          
            EndIf
          Next l   
        EndIf
      Next i 
      If EndParking
        Out = "G00X" + ParkingX + "Y" + ParkingY + "Z" + ParkingZ
        WriteStringN(0, Out)
      EndIf
      Out = "%"
      WriteStringN(0, Out)
      CloseFile(0)
    Else
      Ret = MessageRequester("Сохранение операции", "Файл не доступен для записи!" + #CRLF$ + "Сохранить в другой файл?", #PB_MessageRequester_YesNo | #PB_MessageRequester_Error )
      If Ret = #PB_MessageRequester_Yes  
        Goto ReSave
      EndIf
    EndIf
  EndIf
EndProcedure

Procedure SavePcbGCodeEvent()
  Protected File.s, *data.PcbSettingsGadgetData,  *PcbLayer.LayerNameGadgetData, *UnitValue.UnitValueGadgetData
  Protected Ls, Ps, l, p, i, Vs, v, n, LayerName.s, X.s, Y.s, Ret, Out.s, Zsafety.s, ParkingX.s, ParkingY.s, ParkingZ.s 
  Protected *ProjSettings.ProjSettingsGadgetData, StartParking, EndParking, SpindleSpeed.s
  Protected CuttingFeed.s, PlungeFeed.s, CutDepth.f, PassDepth.f
  Protected Passes, Ext.s
  Dim Pass.s(0)
  
  Ext = "txt"
  ReSave:
  File = SaveFileRequester("Укажите файл для сохранения операции", "Engraving", "" + Ext + "(*." + Ext + ")|*." + Ext + "", 0)
  If File
    File = GetPathPart(File) + GetFilePart(File, #PB_FileSystem_NoExtension) + "." + Ext
    If CreateFile(0, File)
      *data = GetGadgetData(#PcbSettingsGadget)
      *ProjSettings = GetGadgetData(#ProjSettingsGadget)
      Zsafety = StrD(ValF(GetGadgetText(*ProjSettings\SafeZGadget)), XyRound)
      ParkingX = StrD(ValF(GetGadgetText(*ProjSettings\ParkingXGadget)), XyRound)
      ParkingY = StrD(ValF(GetGadgetText(*ProjSettings\ParkingYGadget)), XyRound)
      ParkingZ = StrD(ValF(GetGadgetText(*ProjSettings\ParkingZGadget)), XyRound)
      StartParking = GetGadgetState(*ProjSettings\ParkingStartGadget)
      EndParking = GetGadgetState(*ProjSettings\ParkingEndGadget)
      SpindleSpeed = GetGadgetText(*data\SpindleSpeedGadget) 
      *UnitValue=GetGadgetData(*data\CuttingFeedGadget)
      CuttingFeed = StrD(*UnitValue\Val, 0)
      *UnitValue=GetGadgetData(*data\PlungeFeedGadget)
      PlungeFeed = StrD(*UnitValue\Val, 0)
      CutDepth = ValF(GetGadgetText(*data\CutDepthGadget))
      PassDepth = ValF(GetGadgetText(*data\PassDepthGadget))
      
      Passes = Round(CutDepth / PassDepth, #PB_Round_Up)
      PassDepth = CutDepth / Passes
      ReDim Pass(Passes - 1)
      For i = 1 To Passes
        Pass(i - 1) = "G01Z" + StrD(-i * PassDepth, XyRound)  + "F" + PlungeFeed
      Next i
         
      Out = "%"
      WriteStringN(0, Out)
      Out = "G21G90G40G49"
      WriteStringN(0, Out)
      Out = "G00Z" + Zsafety
      WriteStringN(0, Out)
      Out = "M3 S" + SpindleSpeed
      WriteStringN(0, Out)
      If StartParking
        Out = "G00X" + ParkingX + "Y" + ParkingY + "Z" + ParkingZ
        WriteStringN(0, Out)
      EndIf
      
      If GetGadgetState(*data\PcbTopCutGadget)
        *PcbLayer = GetGadgetData(*data\PcbTopDrawGadget)
        LayerName = *PcbLayer\LayerName
      Else
        *PcbLayer = GetGadgetData(*data\PcbBotDrawGadget)
        LayerName = *PcbLayer\LayerName 
      EndIf        
      Ls = ListSize(Layers())  - 1
      For l = 0 To Ls
        SelectElement(Layers(), l)
        If Layers()\Name = LayerName
          Ps = ListSize(Layers()\Plines())  - 1         
          For p = 0 To Ps
            SelectElement(Layers()\Plines(), p)
            Vs = ListSize(Layers()\Plines()\OffsetVertex())  - 1
            For n = 0 To Passes - 1
              For v = 0 To Vs   
                SelectElement(Layers()\Plines()\OffsetVertex(), v)
                X = StrD(Layers()\Plines()\OffsetVertex()\X - X0, XyRound)
                Y = StrD(Layers()\Plines()\OffsetVertex()\Y - Y0, XyRound)
                If n = 0 And v = 0 
                  Out = "G00X" + X + "Y" + Y 
                  WriteStringN(0, Out)
                  WriteStringN(0, Pass(n))
                ElseIf n > 0 And v = 0 
                  WriteStringN(0, Pass(n))
                Else
                  Out = "G01X" + X + "Y" + Y + "F" + CuttingFeed
                  WriteStringN(0, Out)
                EndIf
              Next v 
            Next n
            Out = "G00Z" + Zsafety
            WriteStringN(0, Out)
          Next p          
        EndIf
      Next l 
      If EndParking
        Out = "G00X" + ParkingX + "Y" + ParkingY + "Z" + ParkingZ
        WriteStringN(0, Out)
      EndIf
      Out = "%"
      WriteStringN(0, Out)
      CloseFile(0)
    Else
      Ret = MessageRequester("Сохранение операции", "Файл не доступен для записи!" + #CRLF$ + "Сохранить в другой файл?", #PB_MessageRequester_YesNo | #PB_MessageRequester_Error )
      If Ret = #PB_MessageRequester_Yes  
        Goto ReSave
      EndIf
    EndIf
  EndIf
EndProcedure

Procedure SavePcbCutGCodeEvent()
  Protected File.s, *data.PcbCutSettingsGadgetData,  *PcbLayer.LayerNameGadgetData, *UnitValue.UnitValueGadgetData
  Protected Ls, Ps, l, p, i, Vs, v, n, LayerName.s, X.s, Y.s, Ret, Out.s, Zsafety.s, ParkingX.s, ParkingY.s, ParkingZ.s 
  Protected *ProjSettings.ProjSettingsGadgetData, StartParking, EndParking, SpindleSpeed.s
  Protected CuttingFeed.s, PlungeFeed.s, CutDepth.f, PassDepth.f
  Protected Passes, Ext.s
  Dim Pass.s(0)
  
  Ext = "txt"
  ReSave:
  File = SaveFileRequester("Укажите файл для сохранения операции", "Contour", "" + Ext + "(*." + Ext + ")|*." + Ext + "", 0)
  If File
    File = GetPathPart(File) + GetFilePart(File, #PB_FileSystem_NoExtension) + "." + Ext
    If CreateFile(0, File)
      *data = GetGadgetData(#PcbCutSettingsGadget)
      *ProjSettings = GetGadgetData(#ProjSettingsGadget)
      Zsafety = StrD(ValF(GetGadgetText(*ProjSettings\SafeZGadget)), XyRound)
      ParkingX = StrD(ValF(GetGadgetText(*ProjSettings\ParkingXGadget)), XyRound)
      ParkingY = StrD(ValF(GetGadgetText(*ProjSettings\ParkingYGadget)), XyRound)
      ParkingZ = StrD(ValF(GetGadgetText(*ProjSettings\ParkingZGadget)), XyRound)
      StartParking = GetGadgetState(*ProjSettings\ParkingStartGadget)
      EndParking = GetGadgetState(*ProjSettings\ParkingEndGadget)
      SpindleSpeed = GetGadgetText(*data\SpindleSpeedGadget) 
      *UnitValue=GetGadgetData(*data\CuttingFeedGadget)
      CuttingFeed = StrD(*UnitValue\Val, 0)
      *UnitValue=GetGadgetData(*data\PlungeFeedGadget)
      PlungeFeed = StrD(*UnitValue\Val, 0)
      CutDepth = ValF(GetGadgetText(*data\CutDepthGadget))
      PassDepth = ValF(GetGadgetText(*data\PassDepthGadget))
      
      Passes = Round(CutDepth / PassDepth, #PB_Round_Up)
      PassDepth = CutDepth / Passes
      ReDim Pass(Passes - 1)
      For i = 1 To Passes
        Pass(i - 1) = "G01Z" + StrD(-i * PassDepth, XyRound)  + "F" + PlungeFeed
      Next i
         
      Out = "%"
      WriteStringN(0, Out)
      Out = "G21G90G40G49"
      WriteStringN(0, Out)
      Out = "G00Z" + Zsafety
      WriteStringN(0, Out)
      Out = "M3 S" + SpindleSpeed
      WriteStringN(0, Out)
      If StartParking
        Out = "G00X" + ParkingX + "Y" + ParkingY + "Z" + ParkingZ
        WriteStringN(0, Out)
      EndIf
      

      LayerName = "SP5"
      
      Ls = ListSize(Layers())  - 1
      For l = 0 To Ls
        SelectElement(Layers(), l)
        If Layers()\Name = LayerName
          Ps = ListSize(Layers()\Plines())  - 1         
          For p = 0 To Ps
            SelectElement(Layers()\Plines(), p)
            Vs = ListSize(Layers()\Plines()\OffsetVertex())  - 1
            For n = 0 To Passes - 1
              For v = 0 To Vs   
                SelectElement(Layers()\Plines()\OffsetVertex(), v)
                X = StrD(Layers()\Plines()\OffsetVertex()\X - X0, XyRound)
                Y = StrD(Layers()\Plines()\OffsetVertex()\Y - Y0, XyRound)
                If n = 0 And v = 0 
                  Out = "G00X" + X + "Y" + Y 
                  WriteStringN(0, Out)
                  WriteStringN(0, Pass(n))
                ElseIf n > 0 And v = 0 
                  WriteStringN(0, Pass(n))
                Else
                  Out = "G01X" + X + "Y" + Y + "F" + CuttingFeed
                  WriteStringN(0, Out)
                EndIf
              Next v 
            Next n
            Out = "G00Z" + Zsafety
            WriteStringN(0, Out)
          Next p          
        EndIf
      Next l  
      
      If EndParking
        Out = "G00X" + ParkingX + "Y" + ParkingY + "Z" + ParkingZ
        WriteStringN(0, Out)
      EndIf
      Out = "%"
      WriteStringN(0, Out)
      CloseFile(0)
    Else
      Ret = MessageRequester("Сохранение операции", "Файл не доступен для записи!" + #CRLF$ + "Сохранить в другой файл?", #PB_MessageRequester_YesNo | #PB_MessageRequester_Error )
      If Ret = #PB_MessageRequester_Yes  
        Goto ReSave
      EndIf
    EndIf
  EndIf
EndProcedure

Procedure.s GetIniFilePath(AppName.s, FileName.s = "settings.ini")
  Protected Path.s, slash.s 
  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      slash = "\"
      Path = GetEnvironmentVariable("APPDATA") + "\"
    CompilerDefault
      slash = "/"
      Path = GetHomeDirectory() + "."    
  CompilerEndSelect
  Path + AppName + slash
  If Not FileSize(Path) = - 2
    CreateDirectory(Path)
  EndIf
  If FileSize(Path) = -2
    ProcedureReturn Path + FileName
  EndIf
EndProcedure

Procedure.s rTrimZero(String.s)
  If ValF(String) = 0
    String = "0"
  EndIf
  If CountString(String, ".") = 1
    String = RTrim(String, "0") 
    If Right(String , 1)= "."
      String=String + "0"
    EndIf
  EndIf
  ProcedureReturn String
EndProcedure

Procedure SetUnitValue(Gadget)
  Protected *UnitValue.UnitValueGadgetData = GetGadgetData(Gadget)
  Select *UnitValue\Unit
    Case 0
      SetGadgetText(Gadget, rTrimZero(StrD(*UnitValue\Val / 60, XyRound)))
    Case 1 
      SetGadgetText(Gadget, Str(*UnitValue\Val))
    Default
      SetGadgetText(Gadget, rTrimZero(StrD(*UnitValue\Val / 1000, XyRound)))
  EndSelect  
EndProcedure

Procedure LoadSettings()
  Protected IniFilePath.s = GetIniFilePath("PcbCnc")
  Protected *ProjSettings.ProjSettingsGadgetData = GetGadgetData(#ProjSettingsGadget)
  Protected *DrillSettings.DrillSettingsGadgetData = GetGadgetData(#DrillSettingsGadget)
  Protected *PcbSettings.PcbSettingsGadgetData = GetGadgetData(#PcbSettingsGadget)
  Protected *PcbCutSettings.PcbCutSettingsGadgetData = GetGadgetData(#PcbCutSettingsGadget)
  Protected *UnitValue.UnitValueGadgetData, t, *UnitGadget.UnitGadgetData
  
  If OpenPreferences(IniFilePath)
    PreferenceGroup("ProjSettings")    
    SetGadgetText(*ProjSettings\SafeZGadget, rTrimZero(ReadPreferenceString("Zsafety","5.0")))
    SetGadgetText(*ProjSettings\ParkingXGadget, rTrimZero(ReadPreferenceString("ParkingX","0.0")))
    SetGadgetText(*ProjSettings\ParkingYGadget, rTrimZero(ReadPreferenceString("ParkingY","0.0")))
    SetGadgetText(*ProjSettings\ParkingZGadget, rTrimZero(ReadPreferenceString("ParkingZ","5.0")))
    If ReadPreferenceInteger("StartParking",1) : SetGadgetState(*ProjSettings\ParkingStartGadget, 1) : EndIf
    If ReadPreferenceInteger("EndParking",1) : SetGadgetState(*ProjSettings\ParkingEndGadget, 1) : EndIf
    
    PreferenceGroup("DrillSettings")
    SetGadgetText(*DrillSettings\SpindleSpeedGadget, Str(ReadPreferenceInteger("SpindleSpeed", 12000)))
    If ReadPreferenceInteger("ReboundDrill",1)     
      With *DrillSettings
        SetGadgetState(\ReboundDrillGadget, 1)
        DisableGadget(\AboveStartGadget, 0)
        DisableGadget(\AbovePassGadget, 0) 
        DisableGadget(\ReboundHeader1Gadget, 0)
        DisableGadget(\ReboundDistanceGadget, 0)
        DisableGadget(\ReboundHeader1aGadget, 0)
      EndWith
    EndIf
    If ReadPreferenceInteger("AboveStart",1) : SetGadgetState(*DrillSettings\AboveStartGadget, 1) : EndIf
    If ReadPreferenceInteger("AbovePass",1) : SetGadgetState(*DrillSettings\AbovePassGadget, 1) : EndIf
    SetGadgetText(*DrillSettings\ReboundDistanceGadget, rTrimZero(ReadPreferenceString("ReboundDistance","0.2")))
    SetGadgetText(*DrillSettings\CutDepthGadget, rTrimZero(ReadPreferenceString("CutDepth","0.1")))
    SetGadgetText(*DrillSettings\PassDepthGadget, rTrimZero(ReadPreferenceString("PassDepth","0.05")))
    *UnitValue = GetGadgetData(*DrillSettings\CuttingFeedGadget)
    *UnitValue\Val = Val(rTrimZero(ReadPreferenceString("CuttingFeed","800"))) 
    t = ReadPreferenceInteger("FeedUnit", 1)
    If t < 0 Or t > 2 : t = 1 : EndIf
    SetGadgetState(*DrillSettings\FeedUnitGadget, t) 
    *UnitValue\Unit = t  
    SetUnitValue(*DrillSettings\CuttingFeedGadget)
    
    PreferenceGroup("EngravingSettings")
    SetGadgetText(*PcbSettings\OffsetGadget, rTrimZero(ReadPreferenceString("Offset","0.1")))
    SetGadgetText(*PcbSettings\SpindleSpeedGadget, Str(ReadPreferenceInteger("SpindleSpeed", 12000)))
    *UnitValue=GetGadgetData(*PcbSettings\CuttingFeedGadget)
    *UnitValue\Val = Val(rTrimZero(ReadPreferenceString("CuttingFeed","800"))) 
    t = ReadPreferenceInteger("FeedUnit", 1)
    If t < 0 Or t > 2 : t = 1 : EndIf
    SetGadgetState(*PcbSettings\FeedUnitGadget, t)
    *UnitGadget=GetGadgetData(*PcbSettings\FeedUnitGadget)
    SetGadgetText(*UnitGadget\UnitGadget, GetGadgetText(*PcbSettings\FeedUnitGadget))
    *UnitValue\Unit = t  
    SetUnitValue(*PcbSettings\CuttingFeedGadget)
    *UnitValue=GetGadgetData(*PcbSettings\PlungeFeedGadget)  
    *UnitValue\Val = Val(rTrimZero(ReadPreferenceString("PlungeFeed","400"))) 
    *UnitValue\Unit = t  
    SetUnitValue(*PcbSettings\PlungeFeedGadget)
    SetGadgetText(*PcbSettings\CutDepthGadget, rTrimZero(ReadPreferenceString("CutDepth","0.1")))
    SetGadgetText(*PcbSettings\PassDepthGadget, rTrimZero(ReadPreferenceString("PassDepth","0.05")))
    
    PreferenceGroup("ContourSettings")
    SetGadgetText(*PcbCutSettings\OffsetGadget, rTrimZero(ReadPreferenceString("Offset","0.1")))
    SetGadgetText(*PcbCutSettings\SpindleSpeedGadget, Str(ReadPreferenceInteger("SpindleSpeed", 12000)))
    *UnitValue=GetGadgetData(*PcbCutSettings\CuttingFeedGadget)
    *UnitValue\Val = Val(rTrimZero(ReadPreferenceString("CuttingFeed","800"))) 
    t = ReadPreferenceInteger("FeedUnit", 1)
    If t < 0 Or t > 2 : t = 1 : EndIf
    SetGadgetState(*PcbCutSettings\FeedUnitGadget, t)
    *UnitGadget=GetGadgetData(*PcbCutSettings\FeedUnitGadget)
    SetGadgetText(*UnitGadget\UnitGadget, GetGadgetText(*PcbCutSettings\FeedUnitGadget))
    *UnitValue\Unit = t  
    SetUnitValue(*PcbCutSettings\CuttingFeedGadget)
    *UnitValue=GetGadgetData(*PcbCutSettings\PlungeFeedGadget)  
    *UnitValue\Val = Val(rTrimZero(ReadPreferenceString("PlungeFeed","400"))) 
    *UnitValue\Unit = t  
    SetUnitValue(*PcbCutSettings\PlungeFeedGadget)
    SetGadgetText(*PcbCutSettings\CutDepthGadget, rTrimZero(ReadPreferenceString("CutDepth","0.1")))
    SetGadgetText(*PcbCutSettings\PassDepthGadget, rTrimZero(ReadPreferenceString("PassDepth","0.05")))
    ClosePreferences()
  EndIf  
EndProcedure

Procedure SaveSettings()
  Protected IniFilePath.s = GetIniFilePath("PcbCnc")
  Protected *ProjSettings.ProjSettingsGadgetData = GetGadgetData(#ProjSettingsGadget)
  Protected *DrillSettings.DrillSettingsGadgetData = GetGadgetData(#DrillSettingsGadget)
  Protected *PcbSettings.PcbSettingsGadgetData = GetGadgetData(#PcbSettingsGadget)
  Protected *PcbCutSettings.PcbCutSettingsGadgetData = GetGadgetData(#PcbCutSettingsGadget)
  Protected *UnitValue.UnitValueGadgetData
  If OpenPreferences(IniFilePath) Or CreatePreferences(IniFilePath)
    PreferenceGroup("ProjSettings")
    WritePreferenceString("Zsafety", StrD(ValF(GetGadgetText(*ProjSettings\SafeZGadget)), XyRound))
    WritePreferenceString("ParkingX", StrD(ValF(GetGadgetText(*ProjSettings\ParkingXGadget)), XyRound))
    WritePreferenceString("ParkingY", StrD(ValF(GetGadgetText(*ProjSettings\ParkingYGadget)), XyRound))
    WritePreferenceString("ParkingZ", StrD(ValF(GetGadgetText(*ProjSettings\ParkingZGadget)), XyRound))
    WritePreferenceInteger("StartParking", GetGadgetState(*ProjSettings\ParkingStartGadget))
    WritePreferenceInteger("EndParking", GetGadgetState(*ProjSettings\ParkingEndGadget))
    
    PreferenceGroup("DrillSettings")
    WritePreferenceString("SpindleSpeed", GetGadgetText(*DrillSettings\SpindleSpeedGadget))
    WritePreferenceInteger("ReboundDrill", GetGadgetState(*DrillSettings\ReboundDrillGadget))
    WritePreferenceInteger("AboveStart", GetGadgetState(*DrillSettings\AboveStartGadget))
    WritePreferenceInteger("AbovePass", GetGadgetState(*DrillSettings\AbovePassGadget))
    WritePreferenceString("ReboundDistance", StrD(ValF(GetGadgetText(*DrillSettings\ReboundDistanceGadget)), XyRound))
    *UnitValue = GetGadgetData(*DrillSettings\CuttingFeedGadget)
    WritePreferenceString("CuttingFeed", StrD(*UnitValue\Val, 0))
    WritePreferenceInteger("FeedUnit", *UnitValue\Unit)
    WritePreferenceString("CutDepth", StrD(ValF(GetGadgetText(*DrillSettings\CutDepthGadget)), XyRound))
    WritePreferenceString("PassDepth", StrD(ValF(GetGadgetText(*DrillSettings\PassDepthGadget)), XyRound))
    
    PreferenceGroup("EngravingSettings")    
    WritePreferenceString("Offset", StrD(Abs(ValF(GetGadgetText(*PcbSettings\OffsetGadget))), XyRound))  
    WritePreferenceString("SpindleSpeed", GetGadgetText(*PcbSettings\SpindleSpeedGadget))
    *UnitValue=GetGadgetData(*PcbSettings\CuttingFeedGadget)
    WritePreferenceString("CuttingFeed", StrD(*UnitValue\Val, 0))
    WritePreferenceInteger("FeedUnit", *UnitValue\Unit)  
    *UnitValue=GetGadgetData(*PcbSettings\PlungeFeedGadget)
    WritePreferenceString("PlungeFeed", StrD(*UnitValue\Val, 0))  
    WritePreferenceString("CutDepth", StrD(ValF(GetGadgetText(*PcbSettings\CutDepthGadget)), XyRound))
    WritePreferenceString("PassDepth", StrD(ValF(GetGadgetText(*PcbSettings\PassDepthGadget)), XyRound))
    
    PreferenceGroup("ContourSettings")
    WritePreferenceString("Offset", StrD(Abs(ValF(GetGadgetText(*PcbCutSettings\OffsetGadget))), XyRound)) 
    WritePreferenceString("SpindleSpeed", GetGadgetText(*PcbCutSettings\SpindleSpeedGadget))
    *UnitValue=GetGadgetData(*PcbCutSettings\CuttingFeedGadget)
    WritePreferenceString("CuttingFeed", StrD(*UnitValue\Val, 0))
    WritePreferenceInteger("FeedUnit", *UnitValue\Unit)
    *UnitValue=GetGadgetData(*PcbCutSettings\PlungeFeedGadget)
    WritePreferenceString("PlungeFeed", StrD(*UnitValue\Val, 0))
    WritePreferenceString("CutDepth", StrD(ValF(GetGadgetText(*PcbCutSettings\CutDepthGadget)), XyRound))
    WritePreferenceString("PassDepth", StrD(ValF(GetGadgetText(*PcbCutSettings\PassDepthGadget)), XyRound)) 
    ClosePreferences()
  EndIf
EndProcedure

Procedure DrawWindow()
  Protected Event, wWidth, mWidth, RulerSize, StatusBarSize, vWidth, y, x
  Scale = 0.025
  XyRound = 4
  ;If 
    OpenWindow(#Win, 100, 100, 800, 600, "Sprint-layout to G-Code", #PB_Window_SystemMenu | #PB_Window_MinimizeGadget | #PB_Window_MaximizeGadget | #PB_Window_SizeGadget | #PB_Window_WindowCentered | #PB_Window_Invisible)
    WindowBounds(#Win, 800, 600, #PB_Ignore, #PB_Ignore)
    
    CompilerSelect #PB_Compiler_OS 
      CompilerCase #PB_OS_Windows   
        LoadFont(#Font, "Arial", 10, #PB_Font_HighQuality)
      CompilerCase #PB_OS_Linux   
        LoadFont(#Font, "Sans", 8, #PB_Font_HighQuality) 
    CompilerEndSelect 
    RulerSize = 30
    StatusBarSize = 20
    Viewer2DGadget(#Viewer, 0, 0, 580, 600, RulerSize, StatusBarSize, #Font)
    
    wWidth = WindowWidth(#Win , #PB_Window_InnerCoordinate) 
    vWidth = GadgetWidth(#Viewer)
    mWidth = wWidth - vWidth
    x = vWidth + 5
    
    ButtonGadget(#OpenPltFileBtn, vWidth, 0, mWidth, 32, "Открыть файл")
    ButtonGadget(#SavePcbGCodeBtn, vWidth, 0, mWidth, 32, "Сохранить операцию")
    ButtonGadget(#SavePcbCutGCodeBtn, vWidth, 0, mWidth, 32, "Сохранить операцию")
    ButtonGadget(#SaveDrillGCodeBtn, vWidth, 0, mWidth, 32, "Сохранить операцию")
    
    y = _MoveToNextGadgetY(#OpenPltFileBtn, 0)
    BindGadgetEvent(#OpenPltFileBtn, @OpenPltFileBtnEvent()) 
    BindGadgetEvent(#SaveDrillGCodeBtn, @SaveDrillGCodeEvent()) 
    BindGadgetEvent(#SavePcbGCodeBtn, @SavePcbGCodeEvent()) 
    BindGadgetEvent(#SavePcbCutGCodeBtn, @SavePcbCutGCodeEvent()) 
    
    OptionGadget(#ProjSettingsBtn, x, y, mWidth, 20, "Настройка проекта")   
    _FitGadgetH(#ProjSettingsBtn)
    BindGadgetEvent(#ProjSettingsBtn, @SettingsBtnEvent()) 
    
    y = _MoveToNextGadgetY(#ProjSettingsBtn, 0)
    OptionGadget(#DrillSettingsBtn, x, y, mWidth, 20, "Сверловка")
    _FitGadgetH(#DrillSettingsBtn)
    BindGadgetEvent(#DrillSettingsBtn, @SettingsBtnEvent())
    
    y = _MoveToNextGadgetY(#DrillSettingsBtn, 0)
    OptionGadget(#PcbSettingsBtn, x, y, mWidth, 20, "Фрезеровка дорожек")
    _FitGadgetH(#PcbSettingsBtn)
    BindGadgetEvent(#PcbSettingsBtn, @SettingsBtnEvent())
    
    y = _MoveToNextGadgetY(#PcbSettingsBtn, 0)
    OptionGadget(#PcbCutSettingsBtn, x, y, mWidth, 20, "Фрезеровка контрура")
    _FitGadgetH(#PcbCutSettingsBtn)
    BindGadgetEvent(#PcbCutSettingsBtn, @SettingsBtnEvent())
    
    y = _MoveToNextGadgetY(#PcbCutSettingsBtn, 2)
    ProjSettingsGadget(#ProjSettingsGadget, vWidth, y, mWidth, 60)
    PcbSettingsGadget(#PcbSettingsGadget, vWidth, y, mWidth, 60)
    PcbCutSettingsGadget(#PcbCutSettingsGadget, vWidth, y, mWidth, 60)
    DrillSettingsGadget(#DrillSettingsGadget, vWidth, y, mWidth, 90)
    
    SetGadgetState(#ProjSettingsBtn, 1)
    
    DisableGadget(#DrillSettingsBtn , 1)
    DisableGadget(#PcbSettingsBtn , 1)
    DisableGadget(#PcbCutSettingsBtn , 1)
    DisableGadget(#Viewer, 1)
    DisableProjSettingsGadget(#ProjSettingsGadget,1)
    
    ;SetGadgetState(#DrillSettingsBtn,1)
    SettingsBtnEvent()
    LoadSettings()
    ;ParsePlt("C:\Dropbox\Actual\Hardware\Клавиатура Robotron k7673-03\Gerber\k7673-03.plt")
    ;ParsePlt("C:\Dropbox\Actual\Hardware\Клавиатура Robotron k7673-03\Gerber\123.plt")
    ;ParsePlt("C:\Dropbox\Actual\Hardware\Клавиатура Robotron k7673-03\Gerber\tt.plt")
    ;ParsePlt("C:\Dropbox\Actual\Hardware\Клавиатура Robotron k7673-03\Gerber\tt2.plt")
    ;ParsePlt("C:\Dropbox\Actual\Hardware\Клавиатура Robotron k7673-03\Gerber\tt3.plt")
    ;ParsePlt("C:\Dropbox\Actual\Hardware\Клавиатура Robotron k7673-03\Gerber\ttt.plt")
    ;ParsePlt("C:\Dropbox\Actual\Hardware\Клавиатура Robotron k7673-03\Gerber\ee.plt")
    ;ParsePlt("C:\Dropbox\Actual\Hardware\Клавиатура Robotron k7673-03\Gerber\qq.plt")
    ;ParsePlt("C:\Dropbox\Actual\Hardware\Клавиатура Robotron k7673-03\Gerber\full.plt")
    
    HideWindow(#Win, #False) 
    Repeat
      Event = WaitWindowEvent()
      If event = #PB_Event_SizeWindow
        WindowResize()
      EndIf
    Until Event = #PB_Event_CloseWindow
    SaveSettings()
    DestroyViewer2DGadget(#Viewer)
    DestroyProjSettingsGadget(#ProjSettingsGadget)
    DestroyDrillSettingsGadget(#DrillSettingsGadget)
    DestroyPcbSettingsGadget(#PcbSettingsGadget)
    DestroyPcbCutSettingsGadget(#PcbCutSettingsGadget)
  ;EndIf 
EndProcedure 

Procedure InitDll()
  Protected ClipperLib.s 
  CompilerSelect #PB_Compiler_OS 
    CompilerCase #PB_OS_Windows   
      CompilerSelect #PB_Compiler_Processor
        CompilerCase #PB_Processor_x86
          ClipperLib = "Clipper2_32.dll"
        CompilerCase #PB_Processor_x64
          ClipperLib = "Clipper2_64.dll"
      CompilerEndSelect
    CompilerCase #PB_OS_Linux   
      
  CompilerEndSelect 
  
  If Clipper_Load_Library(GetCurrentDirectory() + ClipperLib) = #False
    MessageRequester(#MeName, "Ошибка загрузки " + ClipperLib + #CRLF$ + "Выполнение программы прекращено" , #PB_MessageRequester_Ok | #PB_MessageRequester_Error )
    End
  EndIf
EndProcedure

InitDll()
DrawWindow()
; IDE Options = PureBasic 6.00 LTS (Windows - x86)
; CursorPosition = 1209
; FirstLine = 1147
; Folding = -------------
; Optimizer
; EnableThread
; EnableXP
; DPIAware
; UseIcon = Icon.ico
; Executable = PcbCnc.exe
; IncludeVersionInfo
; VersionField0 = 1.0.0.0
; VersionField1 = 1.0.0.0
; VersionField2 = Kolychev D.V.
; VersionField3 = PcbCnc
; VersionField4 = 1.0.0.0
; VersionField5 = 1.0.0.0
; VersionField6 = Convert Plt file Sprint-Layout to G-Code
; VersionField7 = PcbCnc.exe
; VersionField8 = PcbCnc.exe
; VersionField9 = Kolychev D.V.