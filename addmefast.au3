
#include <ImageSearch.au3>
#include <FileConstants.au3>
#include "_ProgressGUI.au3"
#include <File.au3>

AutoItSetOption("SendKeyDownDelay",50)
AutoItSetOption("MouseClickDownDelay",100)
AutoItSetOption("WinTitleMatchMode", 2)

Func pause($sure)
local $zaman1 = TimerInit()
while TimerDiff($zaman1) < $sure
 Sleep(10)
   WEnd
EndFunc
$Return = _ProgressGUI("addmefast puan kasiliyor", 1, 12, "", 300,100, 1)
$I = 1
	GUICtrlSetData($Return[1], $I)
sleep(299)
Func addmefast()


For $z=1 to 9999
WinWait("AddMeFast.com - Instagram Likes - Google Chrome")
WinActivate("AddMeFast.com - Instagram Likes - Google Chrome")
MouseMove(1,1,1)
$x1=0
$y1=0
$ara = _WaitForImageSearch(@ScriptDir & "\addmefast\like.bmp",7,1,$x1,$y1,10)
If $ara = 0 Then
MouseMove(1,1,1)
$result = _ImageSearch(@ScriptDir & "\addmefast\noitems.bmp",1,$x1,$y1,10)
if $result=1 Then
ConsoleWrite("noitems" & @CRLF )
Send("{F5}")
Call("addmefast")
EndIf
Send("{F5}")
Call("addmefast")
EndIf

$I = 30
	GUICtrlSetData($Return[1], $I)

ConsoleWrite("like bulundu" & @CRLF)
MouseMove($x1,$y1,3)

Call("pause","500")

MouseClick("left")

WinWait(": ", "", 10)

if WinExists("Instagram'da") = False Then
   If WinExists("fotoðrafý:") = False Then
	  WinWait("Instagram Likes", "", 5)
	  if WinActive("Instagram Likes") = False Then
Send("!{F4}")
EndIf
Call("addmefast")
Else
WinWait("fotoðrafý:", "", 10)
WinSetState("fotoðrafý:", "", @SW_MAXIMIZE)
EndIf
Else

WinSetState("Instagram'da", "", @SW_MAXIMIZE)
EndIf


$I = 60
	GUICtrlSetData($Return[1], $I)

MouseMove(1,1,1)

$x1=0
$y1=0
$ara = _WaitForImageSearch(@ScriptDir & "\addmefast\begen.bmp",10,1,$x1,$y1,10)
If $ara = 0 Then
Send("!{F4}")
Call("addmefast")
EndIf
ConsoleWrite("begen bulundu" & @CRLF)
MouseMove($x1,$y1,3)

Call("pause","500")

MouseClick("left")
Call("pause","2000")

Send("!{F4}")

Call("pause","5000")

$I = 100
	GUICtrlSetData($Return[1], $I)

Next
EndFunc
Call("addmefast")