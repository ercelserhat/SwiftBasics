import UIKit

struct Urun{
    var ad:String?
    var fiyat:Double?
}

class Araba{
    var renk:String?
    var kapasite:Int?
}

var laptop = Urun()

var bmw = Araba()

laptop.ad = "Macbook"
laptop.fiyat = 40000.00

print(laptop.ad!)
print(laptop.fiyat!)

bmw.renk = "Kırmızı"
bmw.kapasite = 4

print(bmw.renk!)
print(bmw.kapasite!)

if let renk = bmw.renk{
    print(renk)
}
if var kapasite = bmw.kapasite{
    print(kapasite)
}

var tv = Urun()
tv.ad = "Samsung"
tv.fiyat = 30000.00

var limuzin = Araba()
limuzin.renk = "Beyaz"
limuzin.kapasite = 12

print(tv.ad!)
print(tv.fiyat!)
print(limuzin.renk!)
print(limuzin.kapasite!)
