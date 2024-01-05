func solution(_ n:Int, _ m:Int) -> [Int] {
    let c: Int = gcd(n, m)
    let d: Int = lcm(n, m)
    return [c, d]    
}

func gcd(_ a: Int, _ b:Int) -> Int {
    let r = a % b   
    if r != 0 {
        return gcd(b, r)
    }else {
        return b
    }
    
}

func lcm(_ a: Int, _ b:Int) -> Int {
    var r = a * b / gcd(a, b)
    return r
}