import UIKit

func kisiTanima(ad:String){
    if ad == "Ahmet"{
        print("Merhaba Ahmet")
    }else{
        print("Tanınmayan kişi!")
    }
}

kisiTanima(ad: "Ahmet") //Merhaba Ahmet
kisiTanima(ad: "Serhat") //Tanınmayan kişi!

func kisiTanimaWithGuard(ad:String){
    guard ad == "Ahmet" else{
        print("Tanınmayan kişi!")
        return
    }
    print("Merhaba Ahmet")
}

kisiTanimaWithGuard(ad: "Serhat") //Tanınmayan kişi!
kisiTanimaWithGuard(ad: "Ahmet") //Merhaba Ahmet

func buyukHarfYap(str:String?){
    if let temp = str{
        print(temp.uppercased())
    }else{
        print("Str nildir!")
        return
    }
}

buyukHarfYap(str: "Serhat") //SERHAT
buyukHarfYap(str: nil) //Str nildir!

func buyukHarfYapWithGuard(str:String?){
    guard let temp = str else{
        print("Str nildir!")
        return
    }
    print(temp.uppercased())
}

buyukHarfYapWithGuard(str: "Serhat") //SERHAT
buyukHarfYapWithGuard(str: nil) //Str nildir!
