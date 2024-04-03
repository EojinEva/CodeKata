import Foundation

func solution(_ s:String) -> [Int] {
    var dictionary = [String:Int]()
    var answer = [Int]()
    for (a,i) in s.enumerated() {
        if dictionary[String(i)] != nil {
            answer.append(a - dictionary[String(i)]!)
            dictionary[String(i)] = a
        } else {
            answer.append(-1)
            dictionary[String(i)] = a
        }
    }
    return answer
}