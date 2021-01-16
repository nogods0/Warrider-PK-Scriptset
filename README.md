# Warrider (PK)
![Warrider](https://steamcdn-a.akamaihd.net/steam/apps/48700/header.jpg?t=1589227310 "Warrider")

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)  Discord: https://discord.gg/epcAFzaX3x

##### Mount & Blade: Warband, Persistent Kingdoms Modu için yapılmış bir Scriptset çalışmasıdır.

  - Bütün özellikleriyle beraber ücretsizdir.
  - Herhangi bir şekilde pazarlanması yasaktır.

# Özellikler!

  - Ekipman ve altın kayıt ve yükleme sistemi.
  - Banka sistemi, tamamen bugsuz.
  - Kullanılan isim alma engelleyici.
  - Gelişmiş log sistemi.
  - Admin yetkileri.
  - IG Komutlar.
  - Sunucunuz için hoşgeldin mesajı.
  - Anti-bug sistemi.
  - Anti-Spam (DDoS) sistemi.
  - Otomatik stok yenileme sistemi.
  - Oyuncudan admine gelen pm'lerde faction ismi.
  - Roleplay desteği.


Ve bunları da yapabilirsin:
  - Sunucu bilgi ve discordunuzu oyunculara iletebilirsiniz.
  - Whitelist
  - Açlık Sistemi
  - Ahır Sistemi  
  - Python destekli Anti-Cheat (Eklenecek)
  
Scriptimizi kullanan sunucuların discord ve bilgilerini, Discord sunucumuzda herkesin kolaylıkla ulaşması için paylaşacağız.

> Henüz eklenmeyen özellikler yakında eklenecektir.
> Scriptsetinizi güncel tutmaya özen gösterin.
> Sizlerin geri beslemesiyle daha fazla özellik ekleyeceğiz.
> Warrider, v1.0.1.0 - 2021

## Kurulum

- 1-) M&B: Warband Dedicated Sunucu dosyalarını indirin: http://download3.taleworlds.com/mb_warband_dedicated_1174.zip

- 2-) M&B: Warband Dedicated Sunucu dosyalarını bir dosyaya çıkarın.

- 3-) Scriptset klasöründeki WSE isimli dosyanın içindekilerini kendi dedicated dosyanızın içine sürükleyip onay verin.

- 4-) Scriptset klasöründeki "Persistent Kingdoms" klasörünün içindeki dosyaları kendi sunucu dosyalarınızdaki PK modülüne sürükleyip onay verin.

- 5-) Backend dosyasını kendi backend dizininize sürükleyin. 
Örnek: (C:/xampp/htdocs)
 
- 6-) Modülünüzdeki strings.txt dosyasını açın ve backend'in bulunduğu noktayı yazın. (Bilgilerinizi ekleme kısmında detaylı)

- 7-) Backend klasörünüzdeki config.php'yi açın ve kendi bilgilerinize göre düzenleyin.

- 8-) Phpmyadmininizde warrider_database adlı bir veritabanı oluşturun.

- 9-) Scriptset klasöründeki warrider_database.sql'i veritabanınıza ithal edin.


### Bilgilerinizi Ekleme

Scriptinizi kurduktan sonra sunucu bilgilerini güncellemek için.

Sunucunuzun discord ve backend adresini bu adımları takip ederek
değiştirebilirsiniz.

>Backend adresinizi kimsenin bilmeyeceği bir isim koyduğunuzdan emin olunuz!

İlk Adım:
Sunucunuzun dedicated filesları içinde kurulan Persistent Kingdoms modül dosyasını açınız, örnek:
```sh
C:\Users\User\Desktop\Dedicated Server\Modules\Persistent Kingdoms
```

İkinci Adım:
strings.txt isimli not defterini kendi kullandığınız text editor'unuz ile açınız.
```sh
strings.txt
```

Üçüncü Adım:
Açtığınız not defterinde CTRL+F tuşuna basarak "dc_adresi" adlı yazıyı aratınız
```sh
CTRL+F ve "dc_adresi"
```

Dördüncü Adım:
Bilgileri kendinize ait olacak şekilde düzenleyiniz!
```sh
str_dc_adresi discord.gg/adres # Adres kısmına kendi discord davetinizi
str_backend_link http://127.0.0.1/backend # Kendi belirlerdiğiniz backend dosya ismini
```

Ekstra:
Sunucuda olup veya olmamasını istediğiniz özelliklere karar vermeniz için.
```sh
C:\Users\...\Dedicated\Modules\Persistent Kingdoms\module.ini
```

Adlı dosyayı açıp oradan:
```sh
#Warrider Start (On=1/Off=0)
whitelist = 0
starving = 0
horsekomutu = 0
#Warrider End
```
şeklinde düzenleyebilirsiniz.

## Son!
