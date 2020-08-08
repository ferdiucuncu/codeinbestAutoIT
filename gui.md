# Gui 

Gui (Grafiksel kullanıcı arayüzü) Hakkında Bilgi Edinmek İçin Linke Göz Atabilirsiniz. 

https://tr.wikipedia.org/wiki/Grafiksel_kullan%C4%B1c%C4%B1_aray%C3%BCz%C3%BC 

 
# GUICreate() 


Yeni bir GUI oluşturmak için <code>GUICreate()</code> fonksiyonu kullanılır, <code>GUICreate()</code> fonksiyonu kullanılırken parantez içerisine özellikleri aşağıdaki şekilde belirtilebilir. 

```
GUICreate("Başlık", genisligi (isteğe Bağlı), eni(isteğe Bağlı), yatay uzakligi(isteğe Bağlı), dikey uzakligi(isteğe Bağlı)) 
```

Yukarıda verdiğim örnekte guinin başlığı ve boyutlarını belirtebiliyorsunuz, ilave olarak stiller ve genişletilmiş stil özellikleri mevcut bunları gui özellikleri başlığı altında detaylandıracağım. 

# GUISetState() 

GUI nin görünürlüğü ile ilgili ayarları bu fonksiyon ile yapıyoruz. 

```
GUISetState (makro, etkilenecek gui)
```

AutoIt de kullanılan tüm makroları mocros.md içerisinde bulabilirsin.

<code>GUISetState()</code> fonksiyonu iki parametre almaktadır, birinci parametre GUI üzerinde oluşacak etkiyi belirleyecek olan makrodur, belirtilmezse varsayılan <code>@SW_SHOW</code> (GUI görünür hale getirir) makrosu etkili olacaktır.

ikinci paratmetre etkilenecek GUI 'dir', ikinci parametre opsiyoneldir ve belirtilmezse varsayılan olarak son oluşuturulan GUI 'yi referans alır.


### GUISetState() içerisinde kullanabileceğin makrolar ve karşılıkları 


```
	@SW_SHOW = Pencere görünür hale getirir (varsayılan değerdir)
    @SW_HIDE = Pencereyi gizler
    @SW_MINIMIZE = Pencereyi küçültür
    @SW_MAXIMIZE = Pencereyi büyütür
    @SW_RESTORE = Pencereden yapılan boyutlandırma işlemini sıfırlayarak varsıyalana döndürür
    @SW_DISABLE = Pencereyi devre dışı bırakır
    @SW_ENABLE = Pencereyi aktif hale getirir
    @SW_LOCK = Pencereyi yeniden oluşturmaya karşı kilitler
    @SW_UNLOCK = Pencerenin yeniden oluşturulma kilidini kaldırır
    @SW_SHOWDEFAULT - Pencere görünürlüğünü ilk haline geri çevirir.
    @SW_SHOWMAXIMIZED - 	Pencereyi görünür hale getirir ve büyütür
    @SW_SHOWMINIMIZED - 	Pencereyi görünür hale getirir ve küçültür
    @SW_SHOWMINNOACTIVE - Pencereyi simge durumuna küçültülmüş pencere olarak görüntüler
    @SW_SHOWNA - Pencereyi mevcut durumunda görüntüler
    @SW_SHOWNOACTIVATE - Pencereyi görünür hale getirir, Varsayılan görünüm ayarlarına döndürür, pencere kilitliyse kilidini açmaz
    @SW_SHOWNORMAL - Pencereyi varsayılan ayarları ile görünür hale getirir.
 ```