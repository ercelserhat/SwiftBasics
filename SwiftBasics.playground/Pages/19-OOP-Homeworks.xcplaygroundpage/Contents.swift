import UIKit

/*1-Parametre olarak girilen dereceyi fahrenheita dönüştürdükten sonra geri döndüren bir metod yazınız.
T(f) = T(c) x 1.8 + 32 */
class Odev1{
    func fahrenheitHesapla(derece:Double) -> Double{
        let sonuc = (derece * 1.8) + 32
        return sonuc
    }
}
let o1 = Odev1()
let x = o1.fahrenheitHesapla(derece: 10)
print("Fahrenheit: \(x)") //Fahrenheit: 50.0

//2-Kenarları parametre olarak girilen ve dikdörtgenin çevresini hesaplayan bir metod yazınız.
class Odev2{
    func dikdortgeninCevresi(kenar1:Int, kenar2:Int){
        let cevre = 2 * (kenar1 + kenar2)
        print("Kenarları \(kenar1) ve \(kenar2) olan dikdörtgenin çevresi: \(cevre)")
    }
}
let o2 = Odev2()
o2.dikdortgeninCevresi(kenar1: 2, kenar2: 4) //Kenarları 2 ve 4 olan dikdörtgenin çevresi: 12

//3-Parametre olarak girilen sayının faktöriyel değerini hesaplayıp geri döndüren bir metod yazınız.
class Odev3{
    func faktoriyelHesapla(sayi:Int) -> Int{
        var sonuc = 1
        for i in (1...sayi){
            sonuc *= i
        }
        return sonuc
    }
}
let o3 = Odev3()
let y = o3.faktoriyelHesapla(sayi: 6)
print(y) //720

/*4-Parametre olarak girilen kelime ve harf için harfin kelime içinde kaç adet olduğunu
 gösteren bir metod yazınız.*/
class Odev4{
    func harfKacKere(kelime:String, harf:Character){
        var sayac = 0
        for h in kelime{
            if h == harf{
                sayac+=1
            }
        }
        print("\(kelime) kelimesinde \(harf) harfi \(sayac) kere mevcut.")
    }
}
let o4 = Odev4()
o4.harfKacKere(kelime: "ankara", harf: "a") //ankara kelimesinde a harfi 3 kere mevcut.

/*5-Parametre olarak girilen kenar sayısına göre iç açılar toplamını hesaplayıp sonucu
 geri gönderen bir metod yazınız.
 (n-2) x 180  */
class Odev5{
    func icAcilarToplami(kenarSayisi:Int) -> Int{
        let acilarToplami = (kenarSayisi - 2) * 180
        return acilarToplami
    }
}
let o5 = Odev5()
let z = o5.icAcilarToplami(kenarSayisi: 3)
print(z) //180

/*6-Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri
 geri döndüren metodu yazınız.
 - 1 günde 8 saat çalışılabilir.
 - Çalışma saat ücreti: 10 TL
 - Mesai saat ücreti: 20 TL
 - 160 saat üzeri mesai sayılır */
class Odev6{
    func maasHesapla(gun:Int) -> Int{
        let calisilanSaat = gun * 8
        let hamMaas = calisilanSaat * 10
        if calisilanSaat > 160{
            let fazlaSaat = calisilanSaat - 160
            let mesailiMaas = hamMaas + (fazlaSaat * 20)
            return mesailiMaas
        }else{
            return hamMaas
        }
    }
}
let o6 = Odev6()
let maas = o6.maasHesapla(gun: 25)
print(maas) //2800

//7-Parametre olarak verilen kota miktarına göre ücreti hesaplayarak geri döndüren metodu yazınız.
class Odev7{
    func internetUcretiHesapla(kota:Int) -> Int{
        var ucret = 0
        if kota == 50{
            ucret = 100
        }else if kota > 50{
            let asimMiktari = kota - 50
            ucret = 100 + (asimMiktari * 4)
        }else{
            ucret = 0
        }
        return ucret
    }
}

let o7 = Odev7()
var internetUcreti = o7.internetUcretiHesapla(kota: 50)
print(internetUcreti) //100
internetUcreti = o7.internetUcretiHesapla(kota: 52)
print(internetUcreti) //108
