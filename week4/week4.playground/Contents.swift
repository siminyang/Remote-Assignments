func printPyramid(layers: Int) {
    for i in 1...layers {
        let blank = String(repeating: " ", count: layers - i)
        let star = String(repeating: "*", count: 2 * i - 1)
        print(blank + star)
    }
}

printPyramid(layers: 5)
