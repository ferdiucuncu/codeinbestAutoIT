#include <GuiConstantsEx.au3>
#include <WindowsConstants.au3>
; windows 'tan veri alabileceğim fonksiyonları deneme amaçlı,
; Kullanılan bilgisayarın tüm bilgilerini okuyabileceğim bir uygulama
_Main()

Func _Main()
	Local $VOL, $SERIAL, $TOTAL, $FREE
	Local $Input_ComputerName, $Input_CurrentUserName, $Input_OperatingSystem
	Local $Input_ServicePack, $Input_VolumeLabel, $Input_SerialNumber
	Local $Input_TotalSpace, $Input_FreeSpace, $Input_IpAddress, $Input_StartupDirectory
	Local $Input_WindowsDirectory, $Input_SystemFolderDirectory, $Input_DesktopDirectory
	Local $Input_MyDocumentsDirectory, $Input_ProgramFilesDirectory, $Input_StartMenuDirectory
	Local $Input_TemporaryFileDirectory, $Input_DesktopWidth, $Input_DesktopHeight
	Local $Input_Date, $Input_Time, $msg

	#forceref $Input_ComputerName, $Input_CurrentUserName, $Input_OperatingSystem
	#forceref $Input_ServicePack, $Input_VolumeLabel, $Input_SerialNumber
	#forceref $Input_TotalSpace, $Input_FreeSpace, $Input_IpAddress, $Input_StartupDirectory
	#forceref $Input_WindowsDirectory, $Input_SystemFolderDirectory, $Input_DesktopDirectory
	#forceref $Input_MyDocumentsDirectory, $Input_ProgramFilesDirectory, $Input_StartMenuDirectory
	#forceref $Input_TemporaryFileDirectory, $Input_DesktopWidth, $Input_DesktopHeight
	#forceref $Input_Date, $Input_Time

	GUICreate("Microsoft Windows İşletim Sistemi Bilgileri", 600, 800, (@DesktopWidth - 469) / 2, (@DesktopHeight - 639) / 2, $WS_OVERLAPPEDWINDOW + $WS_VISIBLE + $WS_CLIPSIBLINGS)

	$VOL = DriveGetLabel("C:\")
	$SERIAL = DriveGetSerial("C:\")
	$TOTAL = DriveSpaceTotal("C:\")
	$FREE = DriveSpaceFree("C:\")

	GUICtrlCreateLabel("Bilgisayar Adı", 10, 10, 150, 20)
	GUICtrlCreateLabel("Aktif Kullanıcı Adı", 10, 40, 150, 20)
	GUICtrlCreateLabel("İşletim Sistemi", 10, 70, 150, 20)
	GUICtrlCreateLabel("C: Seri No", 10, 160, 150, 20)
	GUICtrlCreateLabel("C: Disk Boyutu", 10, 190, 150, 20)
	GUICtrlCreateLabel("C: Boş Alan", 10, 220, 150, 20)
	GUICtrlCreateLabel("Ip Adres", 10, 250, 150, 20)
	GUICtrlCreateLabel("Başlangıç Dizini", 10, 280, 150, 20)
	GUICtrlCreateLabel("Windows Dizini", 10, 310, 150, 20)
	GUICtrlCreateLabel("System Klasör Yolu", 10, 340, 150, 20)
	GUICtrlCreateLabel("Masaüstü Yolu", 10, 370, 150, 20)
	GUICtrlCreateLabel("Belgelerim Dizini", 10, 400, 150, 20)
	GUICtrlCreateLabel("Program File Dizi", 10, 430, 150, 20)
	GUICtrlCreateLabel("Başlangıç Menüsü Yolu", 10, 460, 150, 20)
	GUICtrlCreateLabel("Ekran Genişliği (Piksel)", 10, 520, 150, 20)
	GUICtrlCreateLabel("Geçici Dosya Dizini", 10, 490, 150, 20)
	GUICtrlCreateLabel("Ekran yüksekliği (Piksel)", 10, 550, 150, 20)
	GUICtrlCreateLabel("Tarih", 10, 580, 150, 20)
	GUICtrlCreateLabel("Saat", 10, 610, 150, 20)
	$Input_ComputerName = GUICtrlCreateInput("" & @ComputerName, 180, 10, 280, 20)
	$Input_CurrentUserName = GUICtrlCreateInput("" & @UserName, 180, 40, 280, 20)
	$Input_OperatingSystem = GUICtrlCreateInput("" & @OSType, 180, 70, 280, 20)
	$Input_SerialNumber = GUICtrlCreateInput("" & $SERIAL, 180, 160, 280, 20)
	$Input_TotalSpace = GUICtrlCreateInput("" & $TOTAL, 180, 190, 280, 20)
	$Input_FreeSpace = GUICtrlCreateInput("" & $FREE, 180, 220, 280, 20)
	$Input_IpAddress = GUICtrlCreateInput("" & @IPAddress1, 180, 250, 280, 20)
	$Input_StartupDirectory = GUICtrlCreateInput("" & @StartupDir, 180, 280, 280, 20)
	$Input_WindowsDirectory = GUICtrlCreateInput("" & @WindowsDir, 180, 310, 280, 20)
	$Input_SystemFolderDirectory = GUICtrlCreateInput("" & @SystemDir, 180, 340, 280, 20)
	$Input_DesktopDirectory = GUICtrlCreateInput("" & @DesktopDir, 180, 370, 280, 20)
	$Input_MyDocumentsDirectory = GUICtrlCreateInput("" & @MyDocumentsDir, 180, 400, 280, 20)
	$Input_ProgramFilesDirectory = GUICtrlCreateInput("" & @ProgramFilesDir, 180, 430, 280, 20)
	$Input_StartMenuDirectory = GUICtrlCreateInput("" & @StartMenuDir, 180, 460, 280, 20)
	$Input_TemporaryFileDirectory = GUICtrlCreateInput("" & @TempDir, 180, 490, 280, 20)
	$Input_DesktopWidth = GUICtrlCreateInput("" & @DesktopWidth, 180, 520, 280, 20)
	$Input_DesktopHeight = GUICtrlCreateInput("" & @DesktopHeight, 180, 550, 280, 20)
	$Input_Date = GUICtrlCreateInput("(MONTH)(DAY)(YEAR) " & @MON & "-" & @MDAY & "-" & @YEAR, 180, 580, 280, 20)
	$Input_Time = GUICtrlCreateInput("(HOUR)(MIN)(SEC) " & @HOUR & ":" & @MIN & ":" & @SEC, 180, 610, 280, 20)

	GUISetState()
	While 1
		$msg = GUIGetMsg()
		Select
			Case $msg = $GUI_EVENT_CLOSE
				ExitLoop
			Case Else
				;;;
		EndSelect
	WEnd
	Exit
EndFunc   ;==>_Main
