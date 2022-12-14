import UIKit

class Kisiler{
    var ad:String?
    var yas:Int?
    var adres:Adres?
    
    init(ad:String, yas:Int, adres:Adres) {
        self.ad = ad
        self.yas = yas
        self.adres = adres
    }
}

class Adres{
    var il:String?
    var ilce:String?
    
    init(il:String, ilce:String) {
        self.il = il
        self.ilce = ilce
    }
}

let adres = Adres(il:"Bursa", ilce:"Osmangazi")
let kisi = Kisiler(ad:"Ahmet", yas:20, adres: adres)

print("Kişi ad: \(kisi.ad!)") //Kişi ad: Ahmet
print("Kişi yaş: \(kisi.yas!)") //Kişi yaş: 20
print("Kişi il: \(kisi.adres!.il!)") //Kişi il: Bursa
print("Kişi ilce: \(kisi.adres!.ilce!)") //Kişi ilce: Osmangazi


class Kategoriler{
    var kategori_id:Int?
    var kategori_adi:String?
    
    init(kategori_id:Int, kategori_adi:String) {
        self.kategori_id = kategori_id
        self.kategori_adi = kategori_adi
    }
}

class Yonetmenler{
    var yonetmen_id:Int?
    var yonetmen_adi:String?
    
    init(yonetmen_id:Int, yonetmen_adi:String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_adi = yonetmen_adi
    }
}

class Filmler{
    var film_id:Int?
    var film_adi:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id:Int, film_adi:String, film_yil:Int, kategori:Kategoriler, yonetmen:Yonetmenler) {
        self.film_id = film_id
        self.film_adi = film_adi
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

var k1 = Kategoriler(kategori_id:1, kategori_adi:"Dram")
var k2 = Kategoriler(kategori_id:2, kategori_adi:"Komedi")
var k3 = Kategoriler(kategori_id:3, kategori_adi:"Bilim Kurgu")

var y1 = Yonetmenler(yonetmen_id:1, yonetmen_adi:"Nuri Bilge Ceylan")
var y2 = Yonetmenler(yonetmen_id:2, yonetmen_adi:"Christopher Nolan")
var y3 = Yonetmenler(yonetmen_id:3, yonetmen_adi:"Quetin Tarantino")

var f1 = Filmler(film_id:1, film_adi:"Django", film_yil:2013, kategori:k1, yonetmen:y3)
var f2 = Filmler(film_id:2, film_adi:"Inception", film_yil:2006, kategori:k3, yonetmen:y2)

print("Film id      : \(f1.film_id!)") //Film id: 1
print("Film adı     : \(f1.film_adi!)") //Film adı: Django
print("Film yılı    : \(f1.film_yil!)") //Film yılı: 2013
print("Film kategori: \(f1.kategori!.kategori_adi!)") //Film kategori: Dram
print("Film yönetmen: \(f1.yonetmen!.yonetmen_adi!)") //Film yönetmen: Quetin Tarantino
