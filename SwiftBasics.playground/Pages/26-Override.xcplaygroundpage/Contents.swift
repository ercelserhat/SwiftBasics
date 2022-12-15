import UIKit

class Hayvan{
    func sesCikar(){
        print("Sesim yok.")
    }
}

class Memeli:Hayvan{
    
}

class Kedi:Memeli{
    override func sesCikar() {
        print("Miyav!")
    }
}

class Kopek:Memeli{
    override func sesCikar() {
        print("Hav hav!")
    }
}

var hayvan = Hayvan()
hayvan.sesCikar() //Sesim yok.

var memeli = Memeli()
memeli.sesCikar() //Sesim yok.

var kedi = Kedi()
kedi.sesCikar() //Miyav!

var kopek = Kopek()
kopek.sesCikar() //Hav hav!
