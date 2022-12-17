import UIKit

enum Hatalar:Error{
    case sifiraBolunmeHatasi
}

func bolme(s1:Int, s2:Int) throws -> Int{
    if s2 == 0{
        throw Hatalar.sifiraBolunmeHatasi
    }
    return s1 / s2
}

do{
    let sonuc = try bolme(s1: 10, s2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi{
    print("Bir sayı 0'a bölünemez!")
}


let sonuc2 = try? bolme(s1: 10, s2: 0)
if sonuc2 == nil{
    print("Hata oluştuğu için sonuç nildir.")
}else{
    print("Hata yok: \(sonuc2!)")
}
