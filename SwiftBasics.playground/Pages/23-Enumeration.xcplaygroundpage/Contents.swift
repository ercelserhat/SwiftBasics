import UIKit

enum Renkler{
    case Beyaz
    case Siyah
}

var renk = Renkler.Beyaz

switch renk{
case .Beyaz:
    print("#FFF")
case .Siyah:
    print("#000")
}

enum KonserveBoyut{
    case Kucuk
    case Orta
    case Buyuk
}

func ucretHesapla(boyut:KonserveBoyut){
    switch boyut{
    case .Kucuk:
        print(20*30)
    case .Orta:
        print(30*30)
    case .Buyuk:
        print(40*30)
    }
}

ucretHesapla(boyut: .Kucuk) //600
