#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>

Example()

;farklý durum deðerleri alan 3 adet radyo buton koyalým ve bir adet ekrana yazdýr butonu ekleyelim
;Butona týklandýðýnda seçilen radyo butona gelen karþýlýðý ekrana yazdýralým
;GUI üzerinde yapýlan simge durumuna küçültme ve kapatma gibi deðiþiklikleri de algýlayýp ekrana yazdýralým.
Func Example()
    Opt("GUICoordMode", 1)
   ;GUICreate() fonksiyonunu kullanarak yeni bir GUI oluþturalým
    GUICreate("GUIGetMsg Deðerleri Denemesi", 400, 280)

    ;ekrana yazdýracak butonu oluþturalým
    Local $idButton_1 = GUICtrlCreateButton("Deðeri Yazdýr", 30, 20, 120, 40)
	;butonlarý bir çerçeve içerisinde gösterecek grup oluþturalým
    GUICtrlCreateGroup("Buton Grubu", 30, 90, 165, 160)
    GUIStartGroup()
	;Radyo butonlarý oluþturalým
    Local $idRadio_1 = GUICtrlCreateRadio("Buton &0", 50, 120, 70, 20)
    GUICtrlCreateRadio("Buton &1", 50, 150, 60, 20)
    Local $idRadio_3 = GUICtrlCreateRadio("Buton &2", 50, 180, 60, 20)

   ; GUI olaylarýný takip etmek için kullanacaðýmýz deðiþkenleri baþlatalým
    Local $iRadioVal1 = 0 ; seçilen ilk radyo butonun deðerini 0 son butonun deðerini 2 alacaðýz

   ;GUI nin görünümünü açýyoruz.
    GUISetState(@SW_SHOW)

    Local $idMsg = 0



    ; Radyo butonlarda yapýlan deðiþiklikleri deðiþkenlere atýyoruz
    ;deðiþkenlere gelen deðeri okumak için GUICtrlRead() fonksiyonunu kullanýyoruz
    While 1
        $idMsg = GUIGetMsg()
        Select
            Case $idMsg = $GUI_EVENT_CLOSE
                MsgBox($MB_SYSTEMMODAL, "", "GUI kapatýldý")
                ExitLoop
            Case $idMsg = $GUI_EVENT_MINIMIZE
                MsgBox($MB_SYSTEMMODAL, "", "GUI simge durumuna küçültüldü", 2)
            Case $idMsg = $GUI_EVENT_MAXIMIZE
                MsgBox($MB_SYSTEMMODAL, "", "Ýletiþim kutusu geri yüklendi", 2)

            Case $idMsg = $idButton_1
                MsgBox($MB_SYSTEMMODAL, "", "Týklanan Buton:" & @CRLF & " Buton " & $iRadioVal1)

            Case $idMsg >= $idRadio_1 And $idMsg <= $idRadio_3
                $iRadioVal1 = $idMsg - $idRadio_1

        EndSelect
    WEnd

    GUIDelete()
EndFunc