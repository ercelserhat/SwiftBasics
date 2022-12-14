import UIKit

class Kisiler{
    var ad:String?
    var yas:Int?
    
    init() {
        
    }
    
    init(ad:String, yas:Int){
        self.ad = ad
        self.yas = yas
    }
}

let kisi1 = Kisiler()
kisi1.ad = "Serhat"
kisi1.yas = 30
print(kisi1.ad!, kisi1.yas!) //Serhat 30

let kisi2 = Kisiler(ad:"Ahmet", yas:25)
print(kisi2.ad!, kisi2.yas!) //Ahmet 25
