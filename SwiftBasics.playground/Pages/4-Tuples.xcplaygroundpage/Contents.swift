import UIKit

var kisi = ("Serhat", 30)
print(kisi.0)
print(kisi.1)

var koordinat = (x:10, y:20)
print(koordinat.x)
print(koordinat.y)

koordinat.x = 30
print(koordinat)

var hataMesaji = (404, "Not found")
var (kod, mesaj) = hataMesaji
print(kod)
print(mesaj)

var ogrenci:(Int, (Bool, String)) = (1234, (true, "Serhat"))
print(ogrenci.0)
print(ogrenci.1)
print(ogrenci.1.0)
print(ogrenci.1.1)
