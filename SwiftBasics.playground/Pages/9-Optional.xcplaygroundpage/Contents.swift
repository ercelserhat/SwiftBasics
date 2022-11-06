import UIKit

var str:String?
str = "Serhat"

if str != nil{
    print(str) //Output: Optional("Serhat")
    print(str!) //Optional unwrapping -> Output: Serhat
}else{
    print("str nil içeriyor.")
}

//OPTIONAL BINDING
var str2:String?
str2 = "Test"

if let temp = str2{
    print(temp)
}else{
    print("Str2 nil içeriyor")
}

var yazi = "23s"
if let sayi = Int(yazi){
    print(sayi)
}else{
    print("Rakamdan başka değer içeriyor!")
}
