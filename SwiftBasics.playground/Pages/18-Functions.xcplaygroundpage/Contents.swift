import UIKit

func selamla(){
    let sonuc = "Merhaba Serhat"
    print(sonuc)
}
selamla()


func selamla1() -> String{
    let sonuc = "Merhaba Mehmet"
    return sonuc
}
var gelenVeri = selamla1()
print(gelenVeri)


func selamla2(isim:String){
    let sonuc = "Merhaba \(isim)"
    print(sonuc)
}
selamla2(isim: "Ahmet")


func toplama(){
    let toplam = 30 + 40
    print("Toplam: \(toplam)")
}
toplama()


func toplama1() -> Int{
    let toplam = 30 + 40
    return toplam
}
var t1 = toplama1()
print("Toplama1: \(t1)")


func toplama2(sayi1:Int, sayi2:Int) -> Int{
    let toplam = sayi1 + sayi2
    return toplam
}

var t2 = toplama2(sayi1: 15, sayi2: 20)
print("Toplama2: \(t2)")


class Matematik{
    func topla(sayi1:Int, sayi2:Int){
        let toplam = sayi1 + sayi2
        print("Toplam: \(toplam)")
    }
    
    func cikar(sayi1:Double, sayi2:Double) -> Double{
        return sayi1 - sayi2
    }
    
    func carp(sayi1:Int, sayi2:Int, isim:String){
        let sonuc = sayi1 * sayi2
        print("Çarpma yapan \(isim), Sonuç: \(sonuc)")
    }
    
    func bol(sayi1:Double, sayi2:Double) -> String{
        return "Bölme: \(sayi1 / sayi2)"
    }
}

var m = Matematik()
m.topla(sayi1: 2, sayi2: 3)
var c = m.cikar(sayi1: 100.0, sayi2: 40.0)
print(c)
m.carp(sayi1: 30, sayi2: 20, isim: "Serhat")
print(m.bol(sayi1: 100.0, sayi2: 50.0))

//Method Overloading
class Hesaplayici{
    func topla(sayi1:Int, sayi2:Int){
        print("Toplam: \(sayi1 + sayi2)")
    }
    func topla(sayi1:Double, sayi2:Int){
        print("Toplam: \(sayi1 + Double(sayi2))")
    }
    func topla(sayi1:Int, sayi2:Double){
        print("Toplam: \(Double(sayi1) + sayi2)")
    }
    func topla(sayi1:Int, sayi2:Int, ad:String){
        print("Toplam yapan: \(ad), Toplam: \(sayi1 + sayi2)")
    }
}
var h = Hesaplayici()
h.topla(sayi1: 2, sayi2: 3)
h.topla(sayi1: 3.0, sayi2: 4)
h.topla(sayi1: 5, sayi2: 6.0)
h.topla(sayi1: 7, sayi2: 8, ad: "Serhat")


//Variadic Parameters
func toplamVariadic(sayilar:Int...) -> Int{
    var toplam = 0
    for s in sayilar{
        toplam += s
    }
    return toplam
}

var v1 = toplamVariadic(sayilar: 1, 2, 3, 4, 5)
print(v1)

var v2 = toplamVariadic(sayilar: 1, 2, 3, 4, 5, 6, 7, 8, 9)
print(v2)

//Functions with Multiple Return Values
func islem(sayilar:[Int]) -> (toplam:Int, carpma:Int){
    var toplam = 0
    var carpim = 1
    for s in sayilar{
        toplam = toplam + s
        carpim = carpim * s
    }
    return (toplam, carpim)
}

var dizi = [1, 2, 3, 4, 5]

let b = islem(sayilar: dizi)
print(b.toplam)
print(b.carpma)

//Functions with otional return type
func hesapla(sayi1:Int, sayi2:Int) -> Int?{
    let sonuc = sayi1 * 2 + sayi2 * 4
    return sonuc
}

var a = hesapla(sayi1: 10, sayi2: 20)
//print("Sonuç: \(a!)")
if let t = a{
    print("Sonuç: \(t)")
}

//Global and local parameters
func myCalc(sayi1 s1:Int, sayi2 s2:Int) -> Int{
    let sonuc = s1 * 2 + s2 * 4
    return sonuc
}
var y = myCalc(sayi1: 10, sayi2: 20)
print(y)
