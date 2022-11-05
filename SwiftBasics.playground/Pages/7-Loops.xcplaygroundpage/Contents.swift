import UIKit
print("Example 1 \n---------------")
for i in 1...3{ //1, 2, 3
    print(i)
}

print("\n\nExample 2 \n---------------")

for _ in 1...3{
    print("Merhaba")
}

print("\n\nExample 3 \n---------------")

for i in stride(from: 0, through: 10, by: 2){
    print(i)
}

print("\n\nExample 4 \n---------------")

for i in stride(from: 10, through: 0, by: -2){
    print(i)
}

print("\n\nExample 5 \n---------------")

var sayac = 1

while sayac <= 3{
    print(sayac)
    sayac += 1
}

print("\n\nExample 6 \n---------------")

var isim = "Serhat"
var son = 5

//for i in 1...son{
//    print("\(i). \(isim)")
//}

//var harfSayisi = isim.count

for i in 1...isim.count{
    print("\(i). \(isim)")
}

print("\n\nExample 7 \n---------------")

var veri = 5
while veri > 0{
    print("\(veri). Veri")
    veri -= 1
}

print("\n\nExample 8 \n---------------") //BREAK
for i in 1...5{
    if i == 3{
        break
    }
    print("Döngü: \(i)")
}

print("\n\nExample 9 \n---------------") //CONTINUE
for i in 1...5{
    if i == 3{
        continue
    }
    print("Döngü: \(i)")
}
