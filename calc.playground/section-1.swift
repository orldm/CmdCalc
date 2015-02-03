// Playground - noun: a place where people can play

//import Cocoa

func evaluate(input: String) -> Int {
    var inString = input
    var number = ""
    while inString != "" {
        let i = inString.removeAtIndex(inString.startIndex)
        if i == " " {
            continue
        }
        
        if let digit = String(i).toInt() {
            number += String(i)
        }
        
        if i == "+" {
            return number.toInt()! + evaluate(inString)
        }
        
        if i == "-" {
            return number.toInt()! - evaluate(inString)
        }
        
    }
    if number != "" {
        return number.toInt()!
    } else {
        return 0
    }
}

println(evaluate("10 - 2 + 20"))

let a: Character = "2"

String(a).toInt()

var c = "abcd"
c.removeAtIndex(c.startIndex)
c






