import UIKit

class Adres{
    var il:String?
    var ilce:String?
    
    init(il:String, ilce:String) {
        self.il = il
        self.ilce = ilce
    }
}

class Personel{
    var personelNo:Int?
    var personelAd:String?
    var personelAdres:Adres?
    
    init(personelNo:Int, personelAd:String, personelAdres:Adres) {
        self.personelNo = personelNo
        self.personelAd = personelAd
        self.personelAdres = personelAdres
    }
}

var adres1 = Adres(il: "Ankara", ilce: "Çankaya")
var adres2 = Adres(il: "Bursa", ilce: "Osmangazi")
var adres3 = Adres(il: "İstanbul", ilce: "Kadıköy")

var personel1 = Personel(personelNo: 100, personelAd: "Serhat", personelAdres: adres1)
var personel2 = Personel(personelNo: 200, personelAd: "Ahmet", personelAdres: adres2)
var personel3 = Personel(personelNo: 50, personelAd: "Berna", personelAdres: adres3)

var personelListesi = [Personel]()
personelListesi.append(personel1)
personelListesi.append(personel2)
personelListesi.append(personel3)

for personel in personelListesi{
    print("---------------------")
    print("Personel No  : \(personel.personelNo!)")
    print("Personel Ad  : \(personel.personelAd!)")
    print("Personel İl  : \(personel.personelAdres!.il!)")
    print("Personel İlçe: \(personel.personelAdres!.ilce!)")
}

/*
 ---------------------
 Personel No  : 100
 Personel Ad  : Serhat
 Personel İl  : Ankara
 Personel İlçe: Çankaya
 ---------------------
 Personel No  : 200
 Personel Ad  : Ahmet
 Personel İl  : Bursa
 Personel İlçe: Osmangazi
 ---------------------
 Personel No  : 50
 Personel Ad  : Berna
 Personel İl  : İstanbul
 Personel İlçe: Kadıköy
 */
