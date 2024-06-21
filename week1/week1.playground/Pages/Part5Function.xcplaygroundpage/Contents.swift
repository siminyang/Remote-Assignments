///
/// **Part 5: Function**
/// 
/// 1. What are the return types in the following statements?
/// - func birthday( ) -> String {}
///     return types: String
/// - func payment( ) -> Double { }
///     return types: Double
///
/// 2. Please declare a function named multiply with two arguments a and b . This function won’t return any value and will only print out the result of a * b . Be noticed that we want to give the argument b a default value of 10.
    func multiply(a: Int, b: Int = 10) {
        print(a * b)
    }

/// 3. What’s the difference between argument label and parameter name in a function?
///  - 每個指定參數都有一個屬於自己的參數標籤和參數名稱．參數標籤是在調用函數時，程式用來辨別函式的標籤，可以用來增加程式碼的可讀性，讓人更容易理解函數調用的內容，沒有指定的情況下會和參數名稱共用，也可以使用_忽略；參數名稱則是程式碼用來辨識函數內部參數的名字，沒有給程式會不知道要將值要指定給誰

/// 4. Please declare a function named greet with person as an argument label and .name. as a parameter name. This greet function will return a String. For example, if you call the function greet like this:  It will return the string: “Hello, Luke”.
    func greet(person name: String) -> String {
        return "Hello, \(name)"
    }

    greet(person: "Luke")

