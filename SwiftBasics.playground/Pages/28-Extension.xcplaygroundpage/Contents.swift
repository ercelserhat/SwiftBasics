import UIKit

//Extension - Değişken örneği
extension Double{
    var km:Double {return self * 1000.0}
    var m:Double {return self}
    var cm:Double {return self / 100.0}
    var mm:Double {return self / 1000.0}
}

print("10 cm \(10.cm) metredir.") //10 cm 0.1 metredir.
print("20 km \(20.km) metredir.") //20 km 20000.0 metredir.

let sayi = 30.0
print("\(sayi) mm \(sayi.mm) metredir.") //30.0 mm 0.03 metredir.


//Extension - Metod örneği
extension String{
    func yerDegistir(yeniHarf:String, eskiHarf:String) -> String{
        return self.replacingOccurrences(of: yeniHarf, with: eskiHarf)
    }
}

let str = "ankara".yerDegistir(yeniHarf: "a", eskiHarf: "e")
print(str) //enkere

print("incir".yerDegistir(yeniHarf: "i", eskiHarf: "x")) //xncxr
