//
//  main.swift
//  abc083b
//

import Foundation

let input = readLine()!.split(separator: " ")
let intMax = Int(input[0])!
let rangeMin = Int(input[1])!
let rangeMax = Int(input[2])!

var answer = 0

for n in 0...intMax {
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
