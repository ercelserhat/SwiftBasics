import UIKit

class Arac{
    var renk:String?
    var vites:String?
    
    init(renk:String, vites:String) {
        self.renk = renk
        self.vites = vites
    }
}

class Araba:Arac{
    var kasaTipi:String?
    
    init(kasaTipi:String, renk:String, vites:String) {
        self.kasaTipi = kasaTipi
        super.init(renk:renk, vites:vites)
    }
}

class Nissan:Araba{
    var model:String?
    
    init(model:String, kasaTipi:String, renk:String, vites:String) {
        self.model = model
        super.init(kasaTipi:kasaTipi, renk:renk, vites:vites)
    }
}

var arac = Arac(renk: "Beyaz", vites: "Manuel")
var araba = Araba(kasaTipi: "Sedan", renk: "Kırmızı", vites: "Otomatik")
var nissan = Nissan(model: "2022", kasaTipi: "Sedan", renk: "Siyah", vites: "Otomatik")

print(nissan.model!)
print(nissan.kasaTipi!)
print(nissan.renk!)
print(nissan.vites!)
