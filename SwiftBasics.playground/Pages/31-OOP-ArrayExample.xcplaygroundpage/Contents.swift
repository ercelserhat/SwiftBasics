import UIKit

class Ogrenci{
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int, ad:String, sinif:String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var ogr1 = Ogrenci(no: 100, ad: "Serhat", sinif: "11F")
var ogr2 = Ogrenci(no: 90, ad: "Ahmet", sinif: "10A")
var ogr3 = Ogrenci(no: 130, ad: "Zeynep", sinif: "9C")
var ogr4 = Ogrenci(no: 150, ad: "Mehmet", sinif: "12B")
var ogr5 = Ogrenci(no: 110, ad: "Ceyda", sinif: "11F")

var ogrenciListesi = [Ogrenci]()

ogrenciListesi.append(ogr1)
ogrenciListesi.append(ogr2)
ogrenciListesi.append(ogr3)
ogrenciListesi.append(ogr4)
ogrenciListesi.append(ogr5)

for ogrenci in ogrenciListesi{
    print("--------------------")
    print("Öğrenci No    : \(ogrenci.no!)")
    print("Öğrenci Adı   : \(ogrenci.ad!)")
    print("Öğrenci Sınıfı: \(ogrenci.sinif!)")
}
/*
 --------------------
 Öğrenci No    : 100
 Öğrenci Adı   : Serhat
 Öğrenci Sınıfı: 11F
 --------------------
 Öğrenci No    : 90
 Öğrenci Adı   : Ahmet
 Öğrenci Sınıfı: 10A
 --------------------
 Öğrenci No    : 130
 Öğrenci Adı   : Zeynep
 Öğrenci Sınıfı: 9C
 --------------------
 Öğrenci No    : 150
 Öğrenci Adı   : Mehmet
 Öğrenci Sınıfı: 12B
 --------------------
 Öğrenci No    : 110
 Öğrenci Adı   : Ceyda
 Öğrenci Sınıfı: 11F
 */
