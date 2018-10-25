#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <SliderConstants.au3>
#include <WindowsConstants.au3>
$Texte = "Il est joli, quand il luit tout neuf au soleil. Elle leur ressemblait si peu maintenant, que, les jours où elle avait vingt sous, elle s'arrangeait de "& _
	"façon à laisser croire qu'elle en avait quarante. Maman Coupeau et Gervaise parlèrent des Lorilleux, en mettant la table, dès trois heures. Elles avaient "& _
	"accroché de grands rideaux dans la vitrine ; mais, comme il faisait chaud, la porte restait ouverte, la rue entière passait devant la table. Les deux femmes "& _
	"ne posaient pas une carafe, une bouteille, une salière, "
Opt("GUIOnEventMode", 1)  ; Change to OnEvent mode

#Region ### START Koda GUI section ### Form=
$Fenetre = GUICreate("Fenetre", 800, 600, -1, -1, BitOR($WS_SYSMENU,$WS_POPUP))
$Tx = GUICtrlCreateInput("Tx", 0, 100, 800, 35, BitOR($ES_NOHIDESEL,$ES_READONLY,$WS_BORDER));282
GUISetBkColor(0x000000)
GUICtrlSetFont(-1, 17, 400, 0, "MS Sans Serif")
$Speed = GUICtrlCreateSlider(700, 300, 28, 150, BitOR($GUI_SS_DEFAULT_SLIDER,$TBS_VERT,$TBS_TOP,$TBS_LEFT,$TBS_BOTH))
GUICtrlSetData(-1,100)
GUISetState(@SW_SHOW)
GUISetState(@SW_MAXIMIZE)
#EndRegion ### END Koda GUI section ###
GUISetOnEvent($GUI_EVENT_CLOSE, "_Exit")
;~ $a =
GUICtrlSetData($Tx, $Texte)

While 1
	ConsoleWrite(GUICtrlRead($Speed)&@CRLF)
	If GUICtrlRead($Speed)=100 Then ContinueLoop
	Sleep((1+GUICtrlRead($Speed))*10)
	GUICtrlSetData($Tx, StringTrimLeft(GUICtrlRead($Tx), 1) )
WEnd
;~ GUICtrlSetData($Tx,StringTrimLeft(GUICtrlRead($Tx),1)
Func _Exit()
	Exit
EndFunc
