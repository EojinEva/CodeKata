func solution(_ s:String, _ n:Int) -> String {
    let lowerCase = Array("abcdefghijklmnopqrstuvwxyz")
    let upperCase = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    var arr = Array(s)

for i in 0..<arr.count {
    if lowerCase.contains(arr[i]) {
        let index = (lowerCase.firstIndex(of: arr[i])!+n)%26
        arr[i] = lowerCase[index]
    } else if upperCase.contains(arr[i]) {
        let index = (upperCase.firstIndex(of: arr[i])!+n)%26
        arr[i] = upperCase[index]
    }
}
    return String(arr)
}