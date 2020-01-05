//: Playground - noun: a place where people can play
public func selectionSort<T: Comparable>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
    guard array.count > 1 else { return array }

    var a = array
    for x in 0 ..< a.count - 1 {

        // Find the lowest value in the rest of the array.
        var lowest = x
        for y in x + 1 ..< a.count {
            if isOrderedBefore(a[y], a[lowest]) {
                lowest = y
            }
        }

        // Swap the lowest value with the current array index.
        if x != lowest {
            a.swapAt(x, lowest)
        }
    }
    return a
}

let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
selectionSort(list)
selectionSort(list, <)
selectionSort(list, >)
