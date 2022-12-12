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
