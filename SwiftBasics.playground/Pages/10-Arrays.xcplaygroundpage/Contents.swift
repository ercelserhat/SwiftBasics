import UIKit

//Array tanımlama yöntemleri
var dizi1 = [Int]()
var dizi2 = [1, 2, 3]
var dizi3:[Float] = [1.0, 2.0, 3.0]
var dizi4 = [Int](Array(repeating: 0, count: 3)) //[0, 0, 0]

//Veri ekleme
var meyveler:[String] = ["Çilek", "Muz", "Elma", "Kivi", "Kiraz"]

meyveler.append("Karpuz")
meyveler += ["Mandalina"]
meyveler[2] = "Ananas"

print(meyveler[3])

meyveler.insert("Portakal", at: 3)
print(meyveler)

for meyve in meyveler{
    print(meyve)
}

for (index, meyve) in meyveler.enumerated(){
    print("Meyve \(index + 1): \(meyve)")
}

print(meyveler.isEmpty)
print(meyveler.count)
print(meyveler.first!)
print(meyveler.last!)
print(meyveler.contains("Kiraz"))
print(meyveler.max()!)
print(meyveler.min()!)
meyveler.reverse()
meyveler.sort()
meyveler.remove(at: 1)
meyveler.removeAll()


//Array filtreleme
var sayilar = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var sonuc1 = sayilar.filter({$0 > 7})
print(sonuc1)

var sonuc2 = sayilar.filter({$0 < 7})
print(sonuc2)

var sonuc3 = sayilar.filter({$0 > 3 && $0 < 7})
print(sonuc3)
