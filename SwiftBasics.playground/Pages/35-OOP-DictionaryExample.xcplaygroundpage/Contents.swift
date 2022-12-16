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

var o1 = Ogrenci(no: 100, ad: "Serhat", sinif: "11F")
var o2 = Ogrenci(no: 110, ad: "Mehmet", sinif: "10A")
var o3 = Ogrenci(no: 90, ad: "Zeynep", sinif: "9C")
var o4 = Ogrenci(no: 200, ad: "Ceyda", sinif: "11F")
var o5 = Ogrenci(no: 250, ad: "Yasin", sinif: "12B")

var ogrenciListesi = [Int:Ogrenci]()

ogrenciListesi[o1.no!] = o1
ogrenciListesi[o2.no!] = o2
ogrenciListesi[o3.no!] = o3
ogrenciListesi[o4.no!] = o4
ogrenciListesi[o5.no!] = o5

for (ogrenciNo, nesne) in ogrenciListesi{
    print("-------------")
    print("Öğrenci No: \(ogrenciNo)")
    print("Öğrenci Ad: \(nesne.ad!)")
    print("Öğrenci Sınıf: \(nesne.sinif!)")
}

/*
 -------------
 Öğrenci No: 250
 Öğrenci Ad: Yasin
 Öğrenci Sınıf: 12B
 -------------
 Öğrenci No: 100
 Öğrenci Ad: Serhat
 Öğrenci Sınıf: 11F
 -------------
 Öğrenci No: 110
 Öğrenci Ad: Mehmet
 Öğrenci Sınıf: 10A
 -------------
 Öğrenci No: 200
 Öğrenci Ad: Ceyda
 Öğrenci Sınıf: 11F
 -------------
 Öğrenci No: 90
 Öğrenci Ad: Zeynep
 Öğrenci Sınıf: 9C

 */
