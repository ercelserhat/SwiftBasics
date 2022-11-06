import UIKey

//Tanımlama şekilleri
var dict1 = [Int:String]()
var dict2 = [3.14 : "Pi", 2.71 : "e"]
var dict3:[Int:String] = [1:"Bir", 2:"İki", 3:"Üç"]

var iller = [6:"Ankara", 34:"İstanbul", 16:"Bursa"]
iller[35] = "İzmir"
iller[23] = "Elazığ"
print(iller)

iller[16] = "Yeni Bursa"
print(iller)

iller.updateValue("Yeni İzmir", forKey: 35)
print(iller)

for (anahtar, il) in iller{
    print("Anahtar: \(anahtar), İl: \(il)")
}

iller.removeValue(forKey: 35)
print(iller)

print(iller.isEmpty, iller.count, iller.first!)

//Birleştirme
var dersler = ["Türkçe", "Matematik", "Fizik", "Kimya", "Biyoloji"]
var notlar = [50, 60, 70, 80, 90]

var dersNotlari = Dictionary(uniqueKeysWithValues: zip(notlar, dersler))
print(dersNotlari)

//Parçalama
var urunFiyatlari:[Double:String] = [15.00:"Kitap", 59.99:"Tshirt", 239.99:"Saat"]
var fiyatlar = [Double](urunFiyatlari.keys)
var urunler = [String](urunFiyatlari.values)
print(urunler)
print(fiyatlar)

//Filtreleme
var okul:[Int:String] = [154:"Ahmet", 67:"Mehmet", 871:"Zeynep", 45:"Ahmet"]

var sonuc1 = okul.filter({$0.key > 70})
print(sonuc1)

var sonuc2 = okul.filter({$0.value == "Ahmet"})
print(sonuc2)

var sonuc3 = okul.filter({$0.value == "Ahmet" && $0.key > 70})
print(sonuc3)

print("-------------------------")

//EXAMPLE - KARNE UYGULAMASI
var derslerNotlar = [String:Int]()
derslerNotlar["Türkçe"] = 50
derslerNotlar["Matematik"] = 60
derslerNotlar["Fizik"] = 70
derslerNotlar["Kimya"] = 80
derslerNotlar["Biyoloji"] = 90

var toplam = 0

for (ders, not) in derslerNotlar{
    print("\(ders) : \(not)")
    toplam += not
}

print("Ortalama: \(toplam / derslerNotlar.count)")
