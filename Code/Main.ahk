
#Include, AutoXYWH2.ahk
#Include, Create__1_png.ahk
#Include, Create__2_png.ahk
#Include, Create__3_png.ahk
#Include, Create__4_png.ahk
#Include, Create__5_png.ahk
#Include, Create__6_png.ahk
#Include, Create__7_png.ahk
#Include, Create__8_png.ahk

FileInstall, EnRu.ini, %A_Temp%\EnRu.ini, 1

IniRead, LEx, %A_Temp%\EnRu.ini, RU, LEx
IniRead, LEnt, %A_Temp%\EnRu.ini, RU, LEnt
IniRead, LEntt, %A_Temp%\EnRu.ini, RU, LEntt
IniRead, LName, %A_Temp%\EnRu.ini, RU, LName
IniRead, LEdin, %A_Temp%\EnRu.ini, RU, LEdin
IniRead, LCoef, %A_Temp%\EnRu.ini, RU, LCoef
loop, 8
	IniRead, LTab%A_Index%, %A_Temp%\EnRu.ini, RU, LTab%A_Index%
Loop, 14
	IniRead, Par%A_Index%, %A_Temp%\EnRu.ini, RU, Par%A_Index%
Loop, 6
	IniRead, Grunt%A_Index%, %A_Temp%\EnRu.ini, RU, Grunt%A_Index%
IniRead, Msg1, %A_Temp%\EnRu.ini, RU, Msg1

Loop, 8
{
		HBITMAP%A_Index% := Create__%A_Index%_png()
}

RDRW:

Gui, +Resize
Gui, +Theme
Gui, Add, StatusBar,, 
SB_SetText(" © Крезуб П.Н., 2017 г. ")
Gui, add, button, xp+845 yp+435 w60 h20 vBtn gEx_App, %LEx%
GUI, Add, Radio, xp-55 yp+3 w45 vLang1 gLang Checked Group, RUS
GUI, Add, Radio, xp-55 yp w40 vLang2 gLang , EN
Gui, Add, Tab, x0 y0 w920 h430 vTabs +Buttons +Border, %LTab1%|%LTab2%|%LTab3%|%LTab4%|%LTab5%|%LTab6%|%LTab7%|%LTab8%
If Lang2 = 1
	GuiControl,, Lang2, 1
;1
Gui, Tab, %LTab1%
Gui, Add, Picture, x10 y80 w0 h0 hwndHPic1
Bitmap_SetImage(HPic1, HBITMAP1)
Gui, Add, Text, x550 y80 w150 h20 cBlue, %Par1% (а), %LEdin% :
Gui, Add, Text, xp yp+20 w150 h20 cBlue, %Par7% (H), %LEdin% :
Gui, Add, Text, xp yp+20 w150 h20 cBlue, %Par11% (L), %LEdin% :
Gui, Add, Edit, x710 y80 vVar1 w50 gInCheck, 1
Gui, Add, Edit, xp yp+20 vVar2 w50 gInCheck, 2
Gui, Add, Edit, xp yp+20 vVar3 w50 gInCheck, 3
Gui, add, button, xp-150 yp+30 cRed gBtn1, %LEnt%
Gui, Add, Text, xp-10 yp+30 cRed, %LEntt% :
Gui, Add, Edit, xp yp+30 w350 cRed vStr1, V=
Gui, Add, Edit, xp yp+30 w350 cRed vStr2, F=

; 2
Gui, Tab, %LTab2%
Gui, Add, Picture, x10 y80 w0 h0 hwndHPic2
Bitmap_SetImage(HPic2, HBITMAP2)
Gui, Add, Text, x550 y80 w230 h20 cBlue, %Par1% (а), %LEdin% :
Gui, Add, Text, xp yp+20 w240 h20 cBlue, %Par8% (H1), %LEdin% :
Gui, Add, Text, xp yp+20 w230 h20 cBlue, %Par9% (H2), %LEdin% :
Gui, Add, Text, xp yp+20 w230 h20 cBlue, %Par11% (L), %LEdin% :
Gui, Add, Edit, x800 y80 vVar4 w50 gInCheck, 1
Gui, Add, Edit, xp yp+20 vVar5 w50 gInCheck, 2
Gui, Add, Edit, xp yp+20 vVar6 w50 gInCheck, 3
Gui, Add, Edit, xp yp+20 vVar7 w50 gInCheck, 4
Gui, add, button, xp-150 yp+30 cRed gBtn2,%LEnt%
Gui, Add, Text, xp-100 yp+30 cRed, %LEntt% :
Gui, Add, Edit, xp yp+30 w310 cRed vStr3, V=
Gui, Add, Edit, xp yp+30 w310 cRed vStr4, F1=
Gui, Add, Edit, xp yp+30 w310 cRed vStr5, F2=

; 3
Gui, Tab, %LTab3%
Gui, Add, Picture, x10 y80 w0 h0 hwndHPic3
Bitmap_SetImage(HPic3, HBITMAP3)
Gui, Add, Text, x550 y80 w220 h20 cBlue, %Par2% (а1), %LEdin% :
Gui, Add, Text, xp yp+20 w220 h20  cBlue, %Par3% (a2), %LEdin% :
Gui, Add, Text, xp yp+20 w220 h20 cBlue, %Par9% (H), %LEdin% :
Gui, Add, Text, xp yp+20 w220 h20 cBlue, %Par11% (L), %LEdin% :
Gui, Add, DropDownList, AltSubmit R6 w150 vM1 gM1, %Grunt1% | %Grunt2% | %Grunt3% | %Grunt4% || %Grunt5% | %Grunt6% 
Gui, Add, Edit, x780 y80 vVar8 w50 gInCheck, 1
Gui, Add, Edit, xp yp+20 vVar9 w50 gInCheck, 
GuiControl, Disable, Var9
Gui, Add, Edit, xp yp+20 vVar10 w50 gHm1, 2
Gui, Add, Edit, xp yp+20 vVar11 w50 gInCheck, 6
Gui, Add, Text, xp yp+30 w80 , %LCoef% m = 
Gui, Add, Text, xp+50 vLm1 w80 , 0.5
Gui, add, button, xp-200 yp+30 cRed gBtn3, %LEnt%
Gui, Add, Text, xp-60 yp+30 cRed, %LEntt% :
Gui, Add, Edit, xp yp+30 w340 cRed vStr6, a2=
Gui, Add, Edit, xp yp+30 w340 cRed vStr7, V=
Gui, Add, Edit, xp yp+30 w340 cRed vStr8, F=

; 4
Gui, Tab, %LTab4%
Gui, Add, Picture, x10 y80 w0 h0 hwndHPic4
Bitmap_SetImage(HPic4, HBITMAP4)
Gui, Add, Text, x550 y80 w200 h20 cBlue, %Par2% (а1), %LEdin% :
Gui, Add, Text, xp yp+20 w200 h20  cBlue, %Par3% (a3), %LEdin% :
Gui, Add, Text, xp yp+20 w200 h20 cBlue, %Par7% (H1), %LEdin% :
Gui, Add, Text, xp yp+20 w200 h20 cBlue, %Par7% (H2), %LEdin% :
Gui, Add, Text, xp yp+20 w200 h20 cBlue, %Par11% (L), %LEdin% :
Gui, Add, DropDownList, AltSubmit R6 w150 vM2 gM2, %Grunt1% | %Grunt2% | %Grunt3% | %Grunt4% || %Grunt5% | %Grunt6% 
Gui, Add, Edit, x730 y80 vVar12 w50 gInCheck, 1
Gui, Add, Edit, xp yp+20 vVar13 w50 gInCheck, 
GuiControl, Disable, Var13
Gui, Add, Edit, xp yp+20 vVar14 w50 gHm2, 2
Gui, Add, Edit, xp yp+20 vVar15 w50 gHm3, 3
Gui, Add, Edit, xp yp+20 vVar16 w50 gInCheck, 6
Gui, Add, Text, xp yp+30 w80 , %LCoef% m = 
Gui, Add, Text, xp+50 vLm2 w80 , 0.5
Gui, add, button, xp-200 yp+30 cRed gBtn4, %LEnt%
Gui, Add, Text, xp-70 yp+30 cRed, %LEntt% :
Gui, Add, Edit, xp yp+30 w400 cRed vStr9, a2=
Gui, Add, Edit, xp yp+30 w400 cRed vStr10, a3=
Gui, Add, Edit, xp yp+30 w400 cRed vStr11, F1=
Gui, Add, Edit, xp yp+30 w400 cRed vStr12, F2=
Gui, Add, Edit, xp yp+30 w400 cRed vStr13, V=
; 5
Gui, Tab, %LTab5%
Gui, Add, Picture, x10 y80 w0 h0 hwndHPic5
Bitmap_SetImage(HPic5, HBITMAP5)
Gui, Add, Text, x500 y80 w150 h20 cBlue, %Par4% (L1), %LEdin% :
Gui, Add, Text, xp yp+20 w150 h20 cBlue, %Par12% (L2), %LEdin% :
Gui, Add, Text, xp yp+20 w150 h20 cBlue, %Par10% (H), %LEdin% :
Gui, Add, Edit, x660 y80 vVar17 w50 gInCheck, 1
Gui, Add, Edit, xp yp+20 vVar18 w50 gInCheck, 2
Gui, Add, Edit, xp yp+20 vVar19 w50 gInCheck, 3
Gui, add, button, xp-150 yp+30 cRed gBtn5, %LEnt%
Gui, Add, Text, xp-10 yp+30 cRed, %LEntt% :
Gui, Add, Edit, xp yp+30 w350 cRed vStr14, V=
Gui, Add, Edit, xp yp+30 w350 cRed vStr15, F=
; 6
Gui, Tab, %LTab6%
Gui, Add, Picture, x10 y80 w0 h0 hwndHPic6
Bitmap_SetImage(HPic6, HBITMAP6)
Gui, Add, Text, x500 y80 w150 h20 cBlue, %Par4% (L1), %LEdin% :
Gui, Add, Text, xp yp+20 w150 h20 cBlue, %Par12% (L2), %LEdin% :
Gui, Add, Text, xp yp+20 w150 h20 cBlue, %Par10% (H1), %LEdin% :
Gui, Add, Text, xp yp+20 w150 h20 cBlue, %Par10% (H2), %LEdin% :
Gui, Add, Text, xp yp+20 w150 h20 cBlue, %Par10% (H3), %LEdin% :
Gui, Add, Text, xp yp+20 w150 h20 cBlue, %Par10% (H4), %LEdin% :
Gui, Add, Edit, x660 y80 vVar20 w50 gInCheck, 1
Gui, Add, Edit, xp yp+20 vVar21 w50 gInCheck, 2
Gui, Add, Edit, xp yp+20 vVar22 w50 gInCheck, 3
Gui, Add, Edit, xp yp+20 vVar23 w50 gInCheck, 3
Gui, Add, Edit, xp yp+20 vVar24 w50 gInCheck, 3
Gui, Add, Edit, xp yp+20 vVar25 w50 gInCheck, 3
Gui, add, button, xp-150 yp+30 cRed gBtn6, %LEnt%
Gui, Add, Text, xp-10 yp+30 cRed, %LEntt% :
Gui, Add, Edit, xp yp+30 w350 cRed vStr16, V=
Gui, Add, Edit, xp yp+30 w350 cRed vStr17, F=
; 7
Gui, Tab, %LTab7%
Gui, Add, Picture, x10 y80 w0 h0 hwndHPic7
Bitmap_SetImage(HPic7, HBITMAP7)
Gui, Add, Text, x490 y80 w200 h20 cBlue, %Par5% (L1), %LEdin% :
Gui, Add, Text, xp yp+20 w200 h20  cBlue, %Par13% (L2), %LEdin% :
Gui, Add, Text, xp yp+20 w200 h20 cBlue, %Par10% (H), %LEdin% :
Gui, Add, DropDownList, AltSubmit R6 w150 vM7 gM7, %Grunt1% | %Grunt2% | %Grunt3% | %Grunt4% || %Grunt5% | %Grunt6% 
Gui, Add, Edit, x780 y80 vVar26 w50 gInCheck, 4
Gui, Add, Edit, xp yp+20 vVar27 w50 gInCheck, 6
Gui, Add, Edit, xp yp+20 vVar28 w50 gHm7, 2
Gui, Add, Text, xp yp+30 w80 , %LCoef% m = 
Gui, Add, Text, xp+50 vLm7 w80 , 0.5
Gui, add, button, xp-250 yp+30 cRed gBtn7, %LEnt%
Gui, Add, Text, xp-140 yp+30 cRed, %LEntt% :
Gui, Add, Edit, xp yp+30 w450 cRed vStr18, V=
Gui, Add, Edit, xp yp+30 w450 cRed vStr19, L3=
Gui, Add, Edit, xp yp+30 w450 cRed vStr20, L4=
; 8
Gui, Tab, %LTab8%
Gui, Add, Picture, x9 y80 w0 h0 hwndHPic8
Bitmap_SetImage(HPic8, HBITMAP8)
Gui, Add, Text, x300 y80 w150 h20 cBlue, %Par14% (d1), %LEdin% :
Gui, Add, Text, xp yp+20 w150 h20 cBlue, %Par6% (d2), %LEdin% :
Gui, Add, Text, xp yp+20 w150 h20 cBlue, %Par10% (H), %LEdin% :
Gui, Add, Edit, x460 y80 vVar29 w50 gInCheck, 2
Gui, Add, Edit, xp yp+20 vVar30 w50 gInCheck, 3
Gui, Add, Edit, xp yp+20 vVar31 w50 gInCheck, 2
Gui, add, button, xp-150 yp+30 cRed gBtn8, %LEnt%
Gui, Add, Text, xp-10 yp+30 cRed, %LEntt% :
Gui, Add, Edit, xp yp+30 w550 cRed vStr21, V=

Gui, Show, xCenter yCenter h480 w920, %LName%
Return

Bitmap_SetImage(hCtrl, hBitmap) ; STM_SETIMAGE = 0x172, IMAGE_BITMAP = 0x00, SS_BITMAP = 0x0E
{
   WinSet, Style, +0x0E, ahk_id %hCtrl%
   SendMessage, 0x172, 0x00, %hBitmap% , , ahk_id %hCtrl%
   Return ErrorLevel
}

GuiSize:
	If (A_EventInfo = 1) 
		return
	
	If (A_GuiHeight < 480) ||  (A_GuiWidth < 920)
	{
		Gui +LastFound
		WinMove,,,,,928,507
		Loop, 31
		{
			Vi := % "Var" . A_Index
			GuiControl, Move,  Vi, w50
		}
		Loop, 21
		{
			Si := % "Str" . A_Index
			GuiControl, Move, Si, 31, w350
		}
		GuiControl, Move, Tabs, h430 w920
		GuiControl, Move, Btn, x855 y435
		GuiControl, Move, Lang, x780 y430
	}
	else 
	{
		loop, 31
		{
			Vi := % "Var" . A_Index
			AutoXYWH2(Vi,  "w")
		}
		loop, 21
		{
			Si := % "Str" . A_Index
			AutoXYWH2(Si, "w")
		}
		AutoXYWH2("btn", "xy")
		AutoXYWH2("Lang", "xy")
		AutoXYWH2("Tabs")
	}
return

Hm1:
Gosub, InCheck
Gosub, M1
return
Hm2:
Gosub, InCheck
Gosub, M2
return
Hm3:
Gosub, InCheck
Gosub, M3
return
Hm7:
Gosub, InCheck
Gosub, M7
return

Btn1:
GuiControlGet, a,, Var1
GuiControlGet, H,, Var2
GuiControlGet, L,, Var3
SetFormat, float, 0.2
V := % "V = a * H * L = " a " * " H " * " L " = " a*H*L " " LEdin "3"
F := % "F = a * H = " a " * " H " = " a*H " " LEdin "2"
GuiControl,, Str1, %V%
GuiControl,, Str2, %F%
return
Btn2:
GuiControlGet, a,, Var4
GuiControlGet, H1,, Var5
GuiControlGet, H2,, Var6
GuiControlGet, L,, Var7
SetFormat, float, 0.2
V := % "V = a * ( H1 + H2) / 2 * L = " a " * ( " H1 " + " H2 " ) / 2 * " L " = " (a*(H1+H2)/2)*L " " LEdin "3"
F1 := % "F1 = a * H1 = " a " * " H1 " = " a*H1 " " LEdin "2"
F2 := % "F2 = a * H2 = " a " * " H2 " = " a*H2 " " LEdin "2"
GuiControl,, Str3, %V%
GuiControl,, Str4, %F1%
GuiControl,, Str5, %F2%
return
Btn3:
GuiControlGet, a1,, Var8
GuiControlGet, H,, Var10
GuiControlGet, L,, Var11
GuiControlGet, m,, Lm1
SetFormat, float, 0.2
a2 := % "a2 = H*m+a1+H*m = " H "*" m " + " a1 " + " H "*" m " = " H*m+a1+H*m " " LEdin
a := % H*m+a1+H*m
V := % "V = (a1+a2) / 2 * H * L = (" a1 "+" a ") / 2 * " H " * " L " = " ((a1+a)/2)*H*L " " LEdin "3"
F := % "F = (a1+a2) / 2 * H = (" a1 "+" a ") / 2 * " H " = " ((a1+a)/2)*H " " LEdin "2"
GuiControl,, Str6, %a2%
GuiControl,, Str7, %V%
GuiControl,, Str8, %F%
GuiControl,, Var9, %a%
return
Btn4:
GuiControlGet, a1,, Var12
GuiControlGet, Hn,, Var14
GuiControlGet, Hk,, Var15
GuiControlGet, L,, Var16
GuiControlGet, m,, Lm2
SetFormat, float, 0.2
a2 := % "a2 = H1*m+a1+H1*m = " Hn "*" m " + " a1 " + " Hn "*" m " = " Hn*m+a1+Hn*m " " LEdin
a3 := % "a3 = H2*m+a1+H2*m = " Hk "*" m " + " a1 " + " Hk "*" m " = " Hk*m+a1+Hk*m " " LEdin
GuiControl,, Str9, %a2%
GuiControl,, Str10, %a3%
a2 := % Hn*m+a1+Hn*m
a3 := % Hk*m+a1+Hk*m
GuiControl,, Var13, %a3%
F1 := % "F1 = (a1+a2) / 2 * H1 = (" a1 "+" a2 ") / 2 * " Hn " = " ((a1+a2)/2)*Hn " " LEdin "2"
F2 := % "F2 = (a1+a3) / 2 * H2 = (" a1 "+" a3 ") / 2 * " Hk " = " ((a1+a3)/2)*Hk " " LEdin "2"
GuiControl,, Str11, %F1%
GuiControl,, Str12, %F2%
Fn := % ((a1+a2)/2)*Hn
Fk := % ((a1+a3)/2)*Hk
V := % "V = (F1 /2+F2 /2-m*((H1-H2)^2)/6)*L = (" Fn "/2+" Fk "/2-(" m "*((" Hn "-" Hk ")^2))/6)*" L " = " (Fn /2 + Fk /2 - m * ((Hn - Hk)*(Hn - Hk)) /6) * L " " LEdin "3"
GuiControl,, Str13, %V%
return
Btn5:
GuiControlGet, L1,, Var17
GuiControlGet, L2,, Var18
GuiControlGet, H ,, Var19
SetFormat, float, 0.2
V := % "V = L1 * L2 * H = " L1 " * " L2 " * " H " = " L1*H*L2 " " LEdin "3"
F := % "F = L1 * L2 = " L1 " * " L2 " = " L1*L2 " " LEdin "2"
GuiControl,, Str14, %V%
GuiControl,, Str15, %F%
return
Btn6:
GuiControlGet, L1,, Var20
GuiControlGet, L2,, Var21
GuiControlGet, H1,, Var22
GuiControlGet, H2,, Var23
GuiControlGet, H3,, Var24
GuiControlGet, H4,, Var25
SetFormat, float, 0.2
V := % "V = L1 * L2 * (H1+H2+H3+H4)/4 = " L1 " * " L2 " * (" H1 "+" H2 "+" H3 "+" H4 ")/4"  " = " L1*L2*(H1+H2+H3+H4)/4 " " LEdin "3"
F := % "F = L1 * L2 = " L1 " * " L2 " = " L1*L2 " " LEdin "2"
GuiControl,, Str16, %V%
GuiControl,, Str17, %F%
return
Btn7:
GuiControlGet, L1,, Var26
GuiControlGet, L2,, Var27
GuiControlGet, H,, Var28
GuiControlGet, m,, Lm7
SetFormat, float, 0.2
L3 := % "L3 = H*m + L1 + H*m = " H " * " m " + " L1 " + "  H " * " m " = " H*m+L1+H*m " " LEdin
Lx := % H*m+L1+H*m
L4 := % "L4 = H*m + L2 + H*m = " H " * " m " + " L2 " + "  H " * " m " = " H*m+L2+H*m " " LEdin
Ly := % H*m+L2+H*m
V := "V = (H/6*((2*L1+L3)*L2+(2*L3+L1)*L4)= (" H "/6*((2 * " L1 " + " Lx ")*" L2 " + (2* " Lx " + " L1 ")*" Ly ") = " (H/6*((2*L1+Lx)*L2+(2* Lx+L1)*Ly)) " " LEdin "3"
GuiControl,, Str18, %V%
GuiControl,, Str19, %L3%
GuiControl,, Str20, %L4%
return
Btn8:
GuiControlGet, d1,, Var29
GuiControlGet, d2,, Var30
GuiControlGet, H,, Var31
SetFormat, float, 0.2
V := % "V = 3.14*((d1 + d2) / 2)^2 / 4 * H = 3.14 * ((" d1 "+" d2 ")/2)^2 / 4 * " H " = " 3.14159*(((d1+d2)*(d1+d2))/4)/4*H " " LEdin "3"
GuiControl,, Str21, %V%
return

M1:
GuiControlGet, M1,, M1
GuiControlGet, Lm1,, Lm1
GuiControlGet, H,, Var10
KoefM(Lm1, M1, H, 1, 10)
return
M2:
GuiControlGet, M2,, M2
GuiControlGet, Lm2,, Lm2
GuiControlGet, H,, Var14
KoefM(Lm2, M2, H, 2, 14)
return
M3:
GuiControlGet, M2,, M2
GuiControlGet, Lm2,, Lm2
GuiControlGet, H,, Var15
KoefM(Lm2, M2, H, 2, 15)
return
M7:
GuiControlGet, M7,, M7
GuiControlGet, Lm7,, Lm7
GuiControlGet, H,, Var28
KoefM(Lm7, M7, H, 7, 28)
return

KoefM(Lm1, M1, H, N, nn){

if (M1 = 1) & (H <= 1.5) 
	Lm1 := 0.67
else if (M1 = 2) & (H <= 1.5) 
	Lm1 := 0.5
else if (M1 = 3) & (H <= 1.5) 
	Lm1 := 0.25
else if (M1 = 4) & (H <= 1.5) 
	Lm1 := 0
else if (M1 = 5) & (H <= 1.5) 
	Lm1 := 0
else if (M1 = 6) & (H <= 1.5) 
	Lm1 := 0
else if (M1 = 1) & (H > 1.5) & (H <= 3) 
	Lm1 := 1
else if (M1 = 2) & (H > 1.5) & (H <= 3) 
	Lm1 := 1
else if (M1 = 3) & (H > 1.5) & (H <= 3) 
	Lm1 := 0.67
else if (M1 = 4) & (H > 1.5) & (H <= 3) 
	Lm1 := 0.5
else if (M1 = 5) & (H > 1.5) & (H <= 3) 
	Lm1 := 0.25
else if (M1 = 6) & (H > 1.5) & (H <= 3) 
	Lm1 := 0.5
else if (M1 = 1) & (H > 3) & (H <= 5) 
	Lm1 := 1.25
else if (M1 = 2) & (H > 3) & (H <= 5) 
	Lm1 := 1
else if (M1 = 3) & (H > 3) & (H <= 5) 
	Lm1 := 0.85
else if (M1 = 4) & (H > 3) & (H <= 5) 
	Lm1 := 0.75
else if (M1 = 5) & (H > 3) & (H <= 5) 
	Lm1 := 0.5
else if (M1 = 6) & (H > 3) & (H <= 5) ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	Lm1 := 0.5
else if (H > 5)
{
	MsgBox % Msg1
	GuiControl,, Var%nn%, 5
}
GuiControl,, Lm%N%, %Lm1%
}


; ==============================================================================
; ========================Проверка, является ли введенные символи Числом
InCheck:
    GuiControlGet, CurrValue,, %A_GuiControl%
    If CurrValue Is Number
    {
        Gui, Font, cBlue
        GuiControl, Font, %A_GuiControl% ; ===Если введенный символ - Число - Задать синий цвет Шрита
    } Else {
        Gui, Font, cRed
        GuiControl, Font, %A_GuiControl% ; ===Если введенный символ - Не Число -  Задать красный цвет, и переменные игнорируют ввод
        Exit
    }
Return
; ==============================================================================
; ==============================================================================

Lang:
GuiControlGet, Lang1,, Lang1
GuiControlGet, Lang2,, Lang2

If Lang1=1
{
	IniRead, LEx,   %A_Temp%\EnRu.ini, RU, LEx
	IniRead, LEnt,  %A_Temp%\EnRu.ini, RU, LEnt
	IniRead, LEntt, %A_Temp%\EnRu.ini, RU, LEntt
	IniRead, LName, %A_Temp%\EnRu.ini, RU, LName
	IniRead, LEdin, %A_Temp%\EnRu.ini, RU, LEdin
	IniRead, LCoef, %A_Temp%\EnRu.ini, RU, LCoef
	
	loop, 8
		IniRead, LTab%A_Index%, %A_Temp%\EnRu.ini, RU, LTab%A_Index%
	Loop, 14
		IniRead, Par%A_Index%, %A_Temp%\EnRu.ini, RU, Par%A_Index%
	Loop, 6
		IniRead, Grunt%A_Index%, %A_Temp%\EnRu.ini, RU, Grunt%A_Index%
	
	IniRead, Msg1, %A_Temp%\EnRu.ini, RU, Msg1
	Gui, Destroy
	gosub, RDRW
}
else
{
	IniRead, LEx,   %A_Temp%\EnRu.ini, EN, LEx
	IniRead, LEnt,  %A_Temp%\EnRu.ini, EN, LEnt
	IniRead, LEntt, %A_Temp%\EnRu.ini, EN, LEntt
	IniRead, LName, %A_Temp%\EnRu.ini, EN, LName
	IniRead, LEdin, %A_Temp%\EnRu.ini, EN, LEdin
	IniRead, LCoef, %A_Temp%\EnRu.ini, EN, LCoef
	
	loop, 8
		IniRead, LTab%A_Index%, %A_Temp%\EnRu.ini, EN, LTab%A_Index%
	Loop, 14
		IniRead, Par%A_Index%, %A_Temp%\EnRu.ini, EN, Par%A_Index%
	Loop, 6
		IniRead, Grunt%A_Index%, %A_Temp%\EnRu.ini, EN, Grunt%A_Index%
	
	IniRead, Msg1, %A_Temp%\EnRu.ini, EN, Msg1
	Gui, Destroy
	gosub, RDRW
}
return

Ex_App:
GuiClose:
Gui, Destroy
FileDelete, %A_Temp%\EnRu.ini
ExitApp