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

//Inheritance Example-2

class Ev{
    var pencereSayisi:Int?
    init(pencereSayisi:Int) {
        self.pencereSayisi = pencereSayisi
    }
}

class Saray:Ev{
    var kuleSayisi:Int?
    init(kuleSayisi:Int, pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa:Ev{
    var garajVarmi:Bool?
    init(garajVarmi:Bool, pencereSayisi:Int) {
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
}

var saray = Saray(kuleSayisi: 5, pencereSayisi: 30)
var villa = Villa(garajVarmi: true, pencereSayisi: 10)

print(saray.kuleSayisi!) //5
print(saray.pencereSayisi!) //30

print(villa.garajVarmi!) //true
print(villa.pencereSayisi!) //10

//Object type casting
if villa is Saray{
    print("Saraydır.")
}else{
    print("Saray değildir.")
}

//Upcasting
var ev1:Ev = Saray(kuleSayisi: 3, pencereSayisi: 20) as Ev

//Downcasting
var ev2 = Ev(pencereSayisi: 7)
var saray2:Saray = ev2 as! Saray

var ev3 = Ev(pencereSayisi: 8)
var saray3 = ev3 as? Saray



