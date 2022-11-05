import UIKit

var yas:Int = 30
var isim:String = "Ahmet"

if yas >= 18 {
    print("Reşitsiniz.")
}else{
    print("Reşit değilsiniz.")
}

if isim == "Serhat"{
    print("Merhaba Serhat")
}else if isim == "Ahmet"{
    print("Merhaba Ahmet")
}else{
    print("Tanınmayan kişi.")
}

var kullaniciAdi = "admin"
var sifre = 12345

if sifre == 1234 && kullaniciAdi == "admin"{
    print("Hoşgeldiniz!")
}else{
    print("Giriş başarısız!")
}

//Ternary Conditional
var a = 10, b = 20

a == b ? print("Eşit") : print("Eşit değil")

print("\n\n-----------------------")

//Example
print("Toplama (1)")
print("Çıkarma (2)")
print("Çarpma (3)")
print("Bölme (4)")

let tercih = 3
let sayi1 = 100
let sayi2 = 20

print("Tercihiniz: \(tercih)")
if tercih == 1{
    print("Toplam: \(sayi1 + sayi2)")
}else if tercih == 2{
    print("Çıkan: \(sayi1 - sayi2)")
}else if tercih == 3{
    print("Çarpım: \(sayi1 * sayi2)")
}else if tercih == 4{
    print("Bölüm: \(sayi1 / sayi2)")
}else{
    print("Hatalı seçim!")
}
