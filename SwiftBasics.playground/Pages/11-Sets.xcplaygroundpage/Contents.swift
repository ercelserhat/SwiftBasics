import UIKit

//Tanımlama şekilleri
var sayilar = Set <Int> ()
var meyveler:Set = ["Çilek", "Muz", "Elma", "Armut"]
var sehirler:Set<String> = ["Ankkara", "İstanbul", "İzmir"]

sayilar.insert(10)
sayilar.insert(20)
sayilar.insert(30)

for s in sayilar{
    print(s)
}

for (index, m) in meyveler.enumerated(){
    print("Index: \(index), Meyve: \(m)")
}

meyveler.insert("Karpuz")
meyveler.insert("Karpuz")
print(meyveler)

print(meyveler.isEmpty)
print(meyveler.count)
print(meyveler.first!)
print(meyveler.contains("Muz"))
print(meyveler.max())
print(meyveler.min())
meyveler.removeAll()


let tekler:Set = [1, 3, 5, 7, 9]
let ciftler:Set = [0, 2, 4, 6, 8]
let asal:Set = [2, 3, 5, 7]

let dizi = tekler.union(ciftler).sorted()
print(dizi) // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

let dizi1 = tekler.intersection(ciftler).sorted()
print(dizi1) // []

let dizi2 = tekler.subtracting(asal).sorted()
print(dizi2) // [1, 9]

let dizi3 = tekler.symmetricDifference(asal).sorted()
print(dizi3) // [1, 2, 9]
