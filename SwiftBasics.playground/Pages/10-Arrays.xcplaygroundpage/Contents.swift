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

//EXAMPLE - 1 / ORTALAMA HESAPLAMA
var data = [30, 40, 45, 56, 50, 10, 90, 75]
var toplam = 0

for s in data{
    toplam += s
}

print("Toplam: \(toplam), Ortalama: \(toplam / data.count)")

//EXAMPLE - 2 / İÇERİK DEĞİŞTİRME
var numbers = [1, 2, 3, 4, 5]

for (index, s) in numbers.enumerated(){
    let sonuc = s * 5
    numbers[index] = sonuc
}
print(numbers)

//EXAMPLE - 3 / TEK ÇİFT SAYILAR
var tekCiftArray = [1, 5, 8, 9, 12, 24, 37, 39, 40]
var tekler = [Int]()
var ciftler = [Int]()

for s in tekCiftArray {
    if s % 2 == 0 {
        ciftler.append(s)
    }else{
        tekler.append(s)
    }
}
print("Tek sayılar: \(tekler)")
print("Çift sayılar: \(ciftler)")

//EXAMPLE - 4 / RASTGELE SAYI ÜRETMEK
var sayilar2 = [Int]()

for _ in 1...10{
    let rastgeleSayi = Int.random(in: 1...10)
    sayilar2.append(rastgeleSayi)
}
sayilar2.sort()
print(sayilar2)

//EXAMPLE - 5 / KARNE UYGULAMASI
var notlar = [Int]()
var dersler = [String]()

dersler.append("Türkçe")
notlar.append(50)

dersler.append("Matematik")
notlar.append(60)

dersler.append("Fizik")
notlar.append(70)

dersler.append("Kimya")
notlar.append(80)

var notOrtalamasi = 0

for i in 0...(dersler.count - 1){
    print("\(dersler[i]) : \(notlar[i]) ")
    notOrtalamasi += notlar[i]
}
print("Ortalama: \(notOrtalamasi / dersler.count)")


//EXAMPLE - 6 / İSİM ARAMA
var isimler = ["Serhat", "Ahmet", "Mehmet", "Zeynep", "Serhat", "Kadir"]
var kontrolIsim = "Serhat"

for i in isimler{
    if i == kontrolIsim{
        print("İsim dizide mevcuttur.")
        break
    }else{
        print("İsim mevcut değildir.")
    }
}
