/*
 1. What is a closure ? How to execute a closure?
 closure可以看成是一種簡易版的function，在不需要重複調用函數、只是想簡單傳遞參數的情況下很適合．可以沒有或丟入多個參數，也可以不設定返回型態 -> Void．
 先定義一個變數，傳遞參數進去，寫要執行的內容．
 */
 
 /*
 2. Please declare a closure whose input type is Int, output type is Bool. The functionality of this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.
 */

let isOdd = { (number: Int) -> Bool in
    return number % 2 != 0
}

//let num1 = isOdd(4)
//let num2 = isOdd(5)

 
 /*
 3. Please complete the following function that prints a triangle made of asterisks.
 */

func printTriangle(layers: Int) {
    for i in 1 ... layers {
        // String() 創建空字串
        let star = String(repeating: "*", count: i)
        print(star)
    }
}

printTriangle(layers: 5)
