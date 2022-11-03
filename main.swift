import Foundation

var words = [String]()

while let line = readLine() {
    words.append(line)
}

@discardableResult func insertionSort(_ array: [String]) -> [String] {
    var a = array
    var pass = 0
    var totalswaps = 0
    for x in 1..<a.count {
        pass += 1
        var y = x
        let temp = a[y]
        var swaps = 0
        while y > 0 && temp < a[y - 1] {
            a[y] = a[y - 1]
            y -= 1
            totalswaps += 1
            swaps += 1
        }
        a[y] = temp
    }
    return a
}
print(insertionSort(words))
