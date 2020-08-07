#include <GDIPlus.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
; Seçtiğimiz resime flu efekt ekleyen basit bir uygulama
_Example()

Func _Example()
   ; _GDIPlus_Startup() fonksiyonu GDIPlus.dll dosyası ile çalışır eğer dosyayı bulamazsa hata döndürelim
	If Not _GDIPlus_Startup() Then
		MsgBox($MB_SYSTEMMODAL, "Hata Mesajı", "GDIPlus.dll dosyası kullanılamıyor")
		Return
	EndIf
   ; FileOpenDialog() : bilgisayardan resim seçmek için
	Local $sFile = FileOpenDialog("Lütfen Resim Seçin", "", "Images (*.bmp;*.png;*.jpg;*.gif;*.tif)")
	If @error Or Not FileExists($sFile) Then Return

	Local $hImage = _GDIPlus_ImageLoadFromFile($sFile)

	Local $hEffect = _GDIPlus_EffectCreateBlur()
   ;DllStructCreate() çağırılan dll dosyaları içerisinden gelen veriyi C++ tarzı bir yapıda kullanır
	Local $tRect = DllStructCreate($tagRECT)
	Local $hBitmap = _GDIPlus_BitmapCreateApplyEffect($hImage, $hEffect, Null, $tRect)

	Local $iBmpW = $tRect.Right - $tRect.Left
	Local $iBmpH = $tRect.Bottom - $tRect.Top

	Local $iWidth = 800
	Local $iHeight = $iBmpH * 800 / $iBmpW

	Local $hGui = GUICreate("Ferdi Üçüncü Deneme Efekt Uygulaması", $iWidth, $iHeight)
	Local $hGraphics = _GDIPlus_GraphicsCreateFromHWND($hGui)
	GUISetState(@SW_SHOW)

	_GDIPlus_GraphicsDrawImageRect($hGraphics, $hBitmap, 0, 0, $iWidth, $iHeight)

	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE

	_GDIPlus_EffectDispose($hEffect)
	_GDIPlus_BitmapDispose($hBitmap)
	_GDIPlus_ImageDispose($hImage)
	_GDIPlus_GraphicsDispose($hGraphics)
	_GDIPlus_Shutdown()
EndFunc
