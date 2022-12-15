import UIKit

let ifade = {
    print("Closure Kullanımı")
}

ifade() //Closure Kullanımı

let toplama = {
    (sayi1:Int, sayi2:Int)->Int in
    return sayi1 + sayi2
}

let sonuc = toplama(10, 20)
print(sonuc) //30

//Closure şart yazma
var sayilar:[Int] = [5, 10, -6, 75, 20]

let siralama1 = sayilar.sorted(by: {sayi1, sayi2 in sayi1 > sayi2})
let siralama2 = sayilar.sorted(by: {n1, n2 in n1 < n2})
let siralama3 = sayilar.sorted(by: {$0 > $1})
let siralama4 = sayilar.sorted(by: <)

print(siralama1) //[75, 20, 10, 5, -6]
print(siralama2) //[-6, 5, 10, 20, 75]
print(siralama3) //[75, 20, 10, 5, -6]
print(siralama4) //[-6, 5, 10, 20, 75]
