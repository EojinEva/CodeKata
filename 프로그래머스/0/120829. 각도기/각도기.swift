import Foundation

func solution(_ angle:Int) -> Int {
    var result: Int
    
    switch angle {
        case 0..<90:
            result = 1
        case 90:
            result = 2
        case 90..<180:
            result = 3
        case 180:
            result = 4
        default: 
            result = 0
    }
    return result
}