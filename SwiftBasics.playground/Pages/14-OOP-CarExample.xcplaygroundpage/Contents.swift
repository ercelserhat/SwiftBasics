import UIKit

class Araba{
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    func calistir(){
        calisiyorMu = true
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz! += kacKm
    }
    
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    
    func bilgi(){
        print("Renk         : \(renk!)")
        print("Hız          : \(hiz!)")
        print("Çalışıyor mu?: \(calisiyorMu!)")
    }
}

var bmw = Araba()
bmw.hiz = 180
bmw.renk = "Kırmızı"
bmw.calistir()
bmw.bilgi()
bmw.durdur()
bmw.bilgi()
bmw.calistir()
bmw.hizlan(kacKm:50)
bmw.bilgi()
bmw.yavasla(kacKm:20)
bmw.bilgi()
