import UIKit

class Kisiler{
    var kisiNo:Int?
    var kisiAd:String?
    
    init(kisiNo:Int, kisiAd:String) {
        self.kisiNo = kisiNo
        self.kisiAd = kisiAd
    }
}

let kisi1 = Kisiler(kisiNo: 1, kisiAd: "Serhat")
let kisi2 = Kisiler(kisiNo: 2, kisiAd: "Berna")
let kisi3 = Kisiler(kisiNo: 3, kisiAd: "Ahmet")

var kisilerArray = [Kisiler]()

kisilerArray.append(kisi1)
kisilerArray.append(kisi2)
kisilerArray.append(kisi3)

print("Önce")
for kisi in kisilerArray{
    print("\(kisi.kisiNo!) - \(kisi.kisiAd!)")
}

print("\nSayısal büyükten küçüğe")
let siralama1 = kisilerArray.sorted(by: {$0.kisiNo! > $1.kisiNo!})
for kisi in siralama1{
    print("\(kisi.kisiNo!) - \(kisi.kisiAd!)")
}

print("\nSayısal küçükten büyüğe")
let siralama2 = kisilerArray.sorted(by: {$0.kisiNo! < $1.kisiNo!})
for kisi in siralama2{
    print("\(kisi.kisiNo!) - \(kisi.kisiAd!)")
}

print("\nAlfabetik olarak küçükten büyüğe")
let siralama3 = kisilerArray.sorted(by: {$0.kisiAd! < $1.kisiAd!})
for kisi in siralama3{
    print("\(kisi.kisiNo!) - \(kisi.kisiAd!)")
}

/*Önce
1 - Serhat
2 - Berna
3 - Ahmet

Sayısal büyükten küçüğe
3 - Ahmet
2 - Berna
1 - Serhat

Sayısal küçükten büyüğe
1 - Serhat
2 - Berna
3 - Ahmet

Alfabetik olarak küçükten büyüğe
3 - Ahmet
2 - Berna
1 - Serhat
*/
