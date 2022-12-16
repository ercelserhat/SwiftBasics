import UIKit

//String tanımlama
let string1 = "Serhat"
let string2 = String("Merhaba")
let string3 = """
Çoklu
satır
string tanımlama...
"""

print(string1)
print(string2)
print(string3)

//Boş olup olmadığını kontrol etmek
var string4 = ""
if string4.isEmpty{
    print("String4 boştur.") //String4 boştur.
}else{
    print("String4 boş değildir.")
}

//Veri eklemek \()
let sayi1 = 10
let sayi2 = 20

let string5 = "\(sayi1) x \(sayi2) = \(sayi1 * sayi2)"
print(string5) // 10 x 20 = 200

//String birleştirme
let string6 = "Merhaba"
let string7 = " Dünya"
let sonuc = string6 + string7
print(sonuc) //Merhaba Dünya

//String boyutunu bulmak
print("\(sonuc) boyutu: \(sonuc.count)") //Merhaba Dünya boyutu: 13

//Karşılaştırma
let string8 = "Merhaba"
let string9 = "Merhaba Dünya"
if string8 == string9{
    print("\(string8) ve \(string9) birbirine eşittir.")
}else{
    print("\(string8) ve \(string9) birbirine eşit değildir.") //Merhaba ve Merhaba Dünya birbirine eşit değildir.
}

//Parçalama
let string10 = "Serhat"
for harf in string10{
    print(harf, terminator: "-") //S-e-r-h-a-t-
}

//String metodları
//contains()
var str1 = "Merhaba"
if str1.contains("er"){
    print("İçeriyor.")
}else{
    print("İçermiyor.")
}

//insert()
str1.insert("w", at: str1.index(str1.startIndex, offsetBy: 4))
print(str1) //Merhwaba

//remove()
str1.remove(at: str1.index(str1.startIndex, offsetBy: 4))
print(str1) //Merhaba
