import UIKit

let gun = 3

switch gun{
    case 1:
        print("Pazartesi")
    case 2:
        print("Salı")
    case 3:
        print("Çarşamba")
    case 4:
        print("Perşembe")
    case 5:
        print("Cuma")
    case 6:
        print("Cumartesi")
    case 7:
        print("Pazar")
    default:
        print("Böyle bir gün yok!")
}
print("\n\n-----------------------")

//EXAMPLE-1
print("Toplama (1)")
print("Çıkarma (2)")
print("Çarpma (3)")
print("Bölme (4)")

let tercih = 3
let sayi1 = 100
let sayi2 = 30

switch tercih{
case 1:
    print("Toplam: \(sayi1 + sayi2)")
case 2:
    print("Çıkan: \(sayi1 - sayi2)")
case 3:
    print("Çarpım: \(sayi1 * sayi2)")
case 4:
    print("Bölüm: \(sayi1 / sayi2)")
default:
    print("Böyle bir işlem yok!")
}

print("\n\n-----------------------")

//EXAMPLE-2
var sayi = 11

var sonuc = sayi % 2

switch sonuc{
case 0:
    print("Çift sayıdır.")
case 1:
    print("Tek sayıdır.")
default:
    print("Belirsiz.")
}
