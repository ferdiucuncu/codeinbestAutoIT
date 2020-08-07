- [Çalışan Komut Dosyaları](#calisan-komut-dosyalari)
- [Komut satırı parametreleri](#komut-satırı-parametleri)


# Çalışan Komut Dosyaları

###(Running Scripts)

AutoIt'i başlattığınızda bir komut dosyası açmanız istenecektir . Komut dosyası, AutoIt anahtar sözcüklerini ve AutoIt'e ne yapmasını istediğinizi söyleyen işlevleri içeren basit bir metin dosyasıdır. Komut dosyaları, notepad.exe gibi basit bir metin düzenleyicide oluşturulur, ancak SciTE düzenleyicinin özel olarak değiştirilmiş bir sürümünde çok daha iyi bir alternatif vardır.

AutoIt v3 komut dosyaları yalnızca düz metin dosyaları olmalarına rağmen, genellikle bir komut dosyası ile düz metin dosyasını birbirinden ayırmak için .au3 dosya uzantısı verilir . AutoIt'i yüklemek için tam yükleyiciyi kullandıysanız, bir AutoIt komut dosyasını çift tıklatarak yürütebilirsiniz. .Au3 dosyasına sağ tıklarsanız, bir komut dosyasını açmak, düzenlemek veya derlemek için çeşitli seçenekler de vardır .

 
Ekrana "Merhaba Dünya" yazdırarark ilk kodumuzu yazalım.
Tabiki kodlarımıza açıklama satırı eklemeyi unutmayalım, açıklama satırları için ; kullanıyoruz.
```

#include <MsgBoxConstants.au3>
; Bu benim ilk AutoIt Kodum
MsgBox($MB_SYSTEMMODAL, "İlk Kod Uygulaması", "Merhaba Dünya")
```

# Komut satırı parametreleri

AutoIt'te komut satırı parametrelerini kendi yürütülebilir dosyanıza geçirmek mümkündür. İletilen komut satırı parametreleri $CmdLine ve $CmdLineRaw sabit değişkenleri kullanılarak görüntülenebilir. Bu değişkenleri yeni verilerle atamak, komut dosyasının yürütülmesi sırasında değiştirilemediğinden AutoIt'ın bir hata döndürmesine neden olur. Komut satırı parametreleri iletilsin veya geçmesin, her iki değişkenin de var olduğunu unutmayın.

$CmdLine özel dizisi, AutoIt betiğinize iletilen komut satırı parametreleriyle komut dosyasının başlangıcında başlatılır. Yürütülebilir dosya yerine betiğinizi çalıştırıyorsanız, ScriptName.au3 bir parametre olarak göz ardı edilecektir.

Dizeleri boşluklu geçiriyorsanız, komut satırı dizenizde "çift tırnak" kullanarak bunlardan kaçmanız gerekir.

```
$CmdLine[0] ; Dizi İçerisinde ki toplam öğe sayısı
$CmdLine[1] ; Birinci parametre
$CmdLine[2] ; İkinci parametre.
...
$CmdLine[nth] ; N'inci parametre, ör. Dizi 10 öğe içeriyorsa 10 değeri dönecektir
```

Dolayısıyla, komut dosyanızı doğrudan AutoIt3.exe kullanarak çalıştıracaksanız:
```
AutoIt3.exe myScript.au3 param1 "Bu bir dizi parametresidir" 99
```
```
$CmdLine[0] ; Bu dizi 3 Parametre içerir.
$CmdLine[1] ; Bu, çalıştırılırken göz ardı edildiği için myScript.au3'ü değil param1'i içerir.
$CmdLine[2] ; Bir dizi parametresidir.
$CmdLine[3] ; 99
$CmdLineRaw ; Bu, myScript.au3 param1 "Bu bir dize parametresidir" 99'u içerir.
```
