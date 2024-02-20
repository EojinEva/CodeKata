import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result = [Int]()
    var number = 0
    
    func combination(_ startIndex: Int, _ target: Int, _ now: Int) {
        if target == now {
            if !result.contains(number){
            result.append(number) }
        } else {
            for i in startIndex + 1 ..< numbers.count {
                number += numbers[i]
                combination(i, 2, now + 1)
                number -= numbers[i]
            }
        }
    }
    combination(-1, 2, 0)
    return result.sorted(by: <)
}