//
//  main.swift
//  abc083b
//

import Foundation

let inputs = readLine()!.split(separator: " ")
let inputMax = Int(inputs[0])!
let rangeMin = Int(inputs[1])!
let rangeMax = Int(inputs[2])!

var answer = 0

for n in 0...inputMax {
    let nStr = String(n)
    let nArr = Array(nStr)
    var sum = 0
    for mStr in nArr {
        let mInt = Int(String(mStr))!
        sum = sum + mInt
    }
    if rangeMin <= sum && sum <= rangeMax {
        answer = answer + n
    }
}

print(answer)
