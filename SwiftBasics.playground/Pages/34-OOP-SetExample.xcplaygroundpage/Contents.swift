import UIKit

class Ogrenci:Equatable, Hashable{
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int, ad:String, sinif:String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
    var hashValue: Int{
        get{
            return no.hashValue
        }
    }
    
    static func == (lhs:Ogrenci, rhs:Ogrenci) -> Bool{
        return lhs.no == rhs.no
    }
}

var o1 = Ogrenci(no: 100, ad: "Serhat", sinif: "11F")
var o2 = Ogrenci(no: 100, ad: "Mehmet", sinif: "10A")
var o3 = Ogrenci(no: 90, ad: "Zeynep", sinif: "9C")
var o4 = Ogrenci(no: 200, ad: "Ceyda", sinif: "11F")
var o5 = Ogrenci(no: 250, ad: "Yasin", sinif: "12B")

var ogrenciListesi = Set <Ogrenci>()
ogrenciListesi.insert(o1)
ogrenciListesi.insert(o2)
ogrenciListesi.insert(o3)
ogrenciListesi.insert(o4)
ogrenciListesi.insert(o5)

for ogr in ogrenciListesi{
    print("--------------------")
    print("Öğrenci No: \(ogr.no!)")
    print("Öğrenci Ad: \(ogr.ad!)")
    print("Öğrenci Sınıf: \(ogr.sinif!)")
}

/*
 --------------------
 Öğrenci No: 200
 Öğrenci Ad: Ceyda
 Öğrenci Sınıf: 11F
 --------------------
 Öğrenci No: 100
 Öğrenci Ad: Serhat
 Öğrenci Sınıf: 11F
 --------------------
 Öğrenci No: 250
 Öğrenci Ad: Yasin
 Öğrenci Sınıf: 12B
 --------------------
 Öğrenci No: 90
 Öğrenci Ad: Zeynep
 Öğrenci Sınıf: 9C
 */
