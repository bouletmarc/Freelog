'FreeLog 1.0
'VBScript Engine
'Note: Below are important functions of datalogger that you can customize.
'      DO NOT CHANGE THE NAME OF FUNCTIONS OR THE NUMBER OF ARGUMENT
'      DO NOT CHANGE THE NAME OF FUNCTIONS OR THE NUMBER OF ARGUMENT
'
'      Start at the bottom of the page for custom functions

Sub CalcFuelTbl(rxlcr, rxhcr, rxcol)
  Call setFT(rxlcr, rxhcr, rxcol)
End Sub

Function CalcBaro(rxbaro)
   CalcBaro=round( ( (rxbaro/51) * -11.49) - 33.6 ,1)
End Function

Function CalcEct(rxect)
   CalcEct = MakeTemp(rxect)
End Function

Function Calciat(rxiat)
   CalcIat = MakeTemp(rxiat)
End Function

Function MakeTemp(Index)
   V = index / 51
   R6 = 0.1423 * V ^ 6
   R5 = 2.4938 * V ^ 5
   R4 = 17.837 * V ^ 4
   R3 = 68.698 * V ^ 3
   R2 = 154.69 * V ^ 2
   R1 = 232.75 * V
   MakeTemp = Round( (R6 - R5  + R4 - R3 + R2 - R1 + 284.24) , 0)
End Function

Function CalcMap(rxmap)
   CalcMap=round( ( (rxmap/51) * -11.49) - 33.6 ,1)
End Function

Function CalcExtra1(rxextra1)
   CalcExtra1=rxextra1+5
End Function

Function CalcExtra2(rxextra2)
   CalcExtra2=rxextra * 2
End Function

Function CalcExtra3(rxextra3)
   CalcExtra3=rxextra *3
End Function

Function CalcExtra4(rxextra4)
   CalcExtra4=4
End Function

Function CalcExtra5(rxextra5)
   CalcExtra5=round(rxextra5/5,1)
End Function

Function CalcExtra6(rxextra6)
   CalcExtra6=0
End Function

Function CalcExtra7(rxextra7)
   CalcExtra7=0
End Function

Function CalcExtra8(rxextra8)
   CalcExtra8=0
End Function

Function CalcExtra9(rxextra9)
   CalcExtra9=0
End Function

Function CalcExtra10(rxextra10)
   CalcExtra10=0
End Function

Function CalcExtra11(rxextra11)
   CalcExtra11=0
End Function

Function CalcExtra12(rxextra12)
   CalcExtra12=0
End Function

Function CalcExtra13(rxextra13)
   CalcExtra13=0
End Function

Function CalcExtra14(rxextra14)
   CalcExtra14 = 0
End Function

Function CalcExtra15(rxextra15)
   CalcExtra15 = 0
End Function

Function CalcExtra16(rxextra16)
   CalcExtra16 = 0
End Function

Function CalcExtra17(rxextra17)
   CalcExtra17 = 0
End Function

Function CalcExtra18(rxextra18)
   CalcExtra18 = 0
End Function
Function CalcExtra19(rxextra18)
   CalcExtra19 = 0
End Function

Function CalcExtra20(rxextra18)
   CalcExtra20 = 0
End Function

Function CalcExtra21(rxextra18)
   CalcExtra21 = 0
End Function

Function CalcExtra22(rxextra18)
   CalcExtra22 = 0
End Function

Function CalcExtra23(rxextra18)
   CalcExtra23 = 0
End Function

Function CalcExtra24(rxextra18)
   CalcExtra24 = 0
End Function

Function CalcExtra25(rxextra18)
   CalcExtra25 = 0
End Function


Function CalcO2( rxo2 )
   CalcO2=round( ( 2 * rxo2 ) + 10 , 1 )
End Function

Function CalcTps( rxtps )
   CalcTps=( 0.4716 * rxtps ) - 11.3184
End Function

Function CalcSpd(rxspd)
   CalcSpeed=round(rxspd*.6213,0)
End Function

Function CalcRpm(rpmhi, rpmlo)
      temp=(rpmhi*256)+rpmlo
      if temp=0 then
         calcrpm=0
      else
         CalcRpm=round(1875000/temp,0)
      end if
End Function

Function CalcVtec(rxvtec)
   if rxvtec=2 or rxvtec=6 then 
         CalcVtec=1
   else
         CalcVtec=0
   End If
End Function

'****************************************************************************
'CUSTOM FUNCTIONS AND VARIABLES START HERE
'****************************************************************************