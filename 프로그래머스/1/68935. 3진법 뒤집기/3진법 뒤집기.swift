import Foundation

func solution(_ n:Int) -> Int {
    
    var number = String(n, radix: 3)
    return Int(String(number.reversed()), radix: 3)!
}