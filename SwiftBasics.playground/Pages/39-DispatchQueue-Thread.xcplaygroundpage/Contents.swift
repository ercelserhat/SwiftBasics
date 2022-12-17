import UIKit

/*
 Thread öncelik seviyeleri (Yüksekten düşüğe)
 userInteractive
 userInitiated
 default
 utility
 background
 unspecified
 */

let queue1 = DispatchQueue(label: "etiket1", qos: DispatchQoS.userInitiated)
let queue2 = DispatchQueue(label: "etiket2", qos: DispatchQoS.userInteractive)

queue1.async {
    for i in 1...10{
        print("A : \(i)")
    }
}

queue2.async {
    for i in 100...110{
        print("B : \(i)")
    }
}

for i in 1000...1010{
    print("Main : \(i)")
}

let queue3 = DispatchQueue(label: "etiket3", qos: DispatchQoS.userInitiated)
var gecikmeSaniye:DispatchTimeInterval = .seconds(2)
print(Date()) //2022-12-17 18:21:07 +0000
queue3.asyncAfter(deadline: .now()+gecikmeSaniye){
    print(Date()) //2022-12-17 18:21:09 +0000
}
