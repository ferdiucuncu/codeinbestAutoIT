#include <GUIConstantsEx.au3>
#include <Constants.au3>
; Buton ve menü öğeleri kullanımını basitçe ettiğim uygulama
_Main()

Func _Main()
	Local $filemenu, $fileitem, $recentfilesmenu, $separator1
	Local $exititem, $helpmenu, $aboutitem, $okbutton, $cancelbutton
	Local $msg, $file
	#forceref $separator1

	GUICreate("Buton ve Menü Deneme Uygulaması", 500, 250)

	$filemenu = GUICtrlCreateMenu("Dosya")
	$fileitem = GUICtrlCreateMenuItem("Aç...", $filemenu)
	$recentfilesmenu = GUICtrlCreateMenu("Son Kaydededilen", $filemenu)
	$separator1 = GUICtrlCreateMenuItem("", $filemenu)
	$exititem = GUICtrlCreateMenuItem("Çıkış", $filemenu)
	$helpmenu = GUICtrlCreateMenu("?")
	$aboutitem = GUICtrlCreateMenuItem("Program Hakkında", $helpmenu)

	$okbutton = GUICtrlCreateButton("Tamam", 50, 130, 70, 20)

	$cancelbutton = GUICtrlCreateButton("Programı Kapat", 180, 130, 100, 20)

	GUISetState()

	While 1
		$msg = GUIGetMsg()

		Select
			Case $msg = $GUI_EVENT_CLOSE Or $msg = $cancelbutton
				ExitLoop

			Case $msg = $fileitem
				$file = FileOpenDialog("Dosya Seçin...", @TempDir, "All (*.*)")
				If @error <> 1 Then GUICtrlCreateMenuItem($file, $recentfilesmenu)

			Case $msg = $exititem
				ExitLoop

			Case $msg = $okbutton
				MsgBox($MB_SYSTEMMODAL, "Tıklandı", "Tamam 'a Tıklandı")

			Case $msg = $aboutitem
				MsgBox($MB_SYSTEMMODAL, "Hakkında", "Ferdi Üçüncü Deneme Uygulaması")
		EndSelect
	WEnd

	GUIDelete()

	Exit
EndFunc
