import UIKit

//Rastgele sayı üretmek
for _ in 1...10{
    let rastgeleSayi = Int(arc4random_uniform(10))
    print(rastgeleSayi)
}

print("\n---------------\n")

//Rastgele sayı üretmek - 2
for _ in 1...10{
    let rastgeleSayi = Int.random(in: 0...9)
    print(rastgeleSayi)
}

print("\n---------------\n")

//MATEMATİKSEL FONKSİYONLAR
let s1 = ceil(6.4) //Yukarıya yuvarlar
print(s1)

let s2 = floor(6.4) //Aşağıya yuvarlar
print(s2)

let s3 = sqrt(9.0) //Karekök
print(s3)

let s4 = pow(3, 2) //Üs alır
print(s4)

let s5 = abs(-5) //Mutlak değer
print(s5)

let s6 = max(100, 200) //Maximumu verir
print(s6)

let s7 = min(100, 200) //Minimumu verir
print(s7)

print("\n---------------\n")

//TARİHSEL İŞLEMLER
let tarih = Date()
let takvim = Calendar.current
let yil = takvim.component(.year, from: tarih)
let ay = takvim.component(.month, from: tarih)
let gun = takvim.component(.day, from: tarih)
let saat = takvim.component(.hour, from: tarih)
let dakika = takvim.component(.minute, from: tarih)
let saniye = takvim.component(.second, from: tarih)

print(tarih)
print(yil)
print(ay)
print(gun)
print(saat)
print(dakika)
print(saniye)

print("\n---------------\n")

//ÖLÇÜ BİRİMLERİ
let metre = Measurement.init(value: 50, unit: UnitLength.meters)
print(metre) //50.0 m

let kiloMetre = Measurement.init(value: 1, unit: UnitLength.kilometers)
print(kiloMetre) //1.0 km

let sonuc = metre + kiloMetre
print(sonuc) //1050.0 m

let a1 = sonuc.converted(to: .kilometers)
print(a1) //1.05 km

let a2 = sonuc.converted(to: .miles)
print(a2) //0.6524397518492007 mi

let frekans = Measurement.init(value: 1000, unit: UnitFrequency.kilohertz)
print(frekans) //1000.0 kHz

let a3 = frekans.converted(to: .gigahertz)
print(a3) //0.001 GHz

let sicaklik = Measurement.init(value: 30, unit: UnitTemperature.celsius)
print(sicaklik) //30.0 °C

let a4 = sicaklik.converted(to: .fahrenheit)
print(a4) //85.99999999999557 °F
