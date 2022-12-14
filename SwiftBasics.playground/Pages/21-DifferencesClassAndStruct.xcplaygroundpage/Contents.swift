import UIKit

class Ogrenci{
    var ad:String?
}

var ogrenci1 = Ogrenci()
ogrenci1.ad = "Ahmet"

var ogrenci2 = ogrenci1
ogrenci2.ad = "Mehmet"

print(ogrenci1.ad!) //Mehmet
print(ogrenci2.ad!) //Mehmet

struct Kopek{
    var renk:String?
}

var kopek1 = Kopek()
kopek1.renk = "Siyah"

var kopek2 = kopek1
kopek2.renk = "Beyaz"

print(kopek1.renk!) //Siyah
print(kopek2.renk!) //Beyaz
