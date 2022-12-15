import UIKit

class Personel{
    func iseAlindi(){
        print("Personel mutlu!")
    }
}

class Mudur:Personel{
    func iseAl(p:Personel){
        p.iseAlindi()
    }
    func terfiEttir(p:Personel){
        if p is Ogretmen{
            (p as! Ogretmen).maasArtir()
        }
        if p is Isci{
            print("İşçiler terfi alamaz!")
        }
    }
}

class Isci:Personel{
    
}

class Ogretmen:Personel{
    func maasArtir(){
        print("Maaş arttı, öğretmen mutlu!")
    }
}

var isci:Personel = Isci()
var ogretmen:Ogretmen = Ogretmen()

var mudur = Mudur()
mudur.iseAl(p: isci) //Personel mutlu!
mudur.iseAl(p: ogretmen) //Personel mutlu!

mudur.terfiEttir(p: ogretmen) //Maaş arttı, öğretmen mutlu!
mudur.terfiEttir(p: isci) //İşçiler terfi alamaz!
