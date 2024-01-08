import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result = 0
    var n = Int(p)!
    
    for i in 0...t.count - p.count{
        result += Int(t.map{String($0)}[i..<i+p.count].joined())! <= n ? 1 : 0
    }
    return result
    
}