///
/// **Part 2: Basic**

/// # 1. Please explain the difference between let and var .
/// - let : constant 常數，一旦定義不可改變
/// - var : variable 變數，未來可再修改

/// # 2. In Swift, we usually define a variable through the syntax as below: var x: Int = 10
///    We use the formula: 2 * radius * pi to calculate the circumference. Now, please define a variable pi and assign value to it. You can refer to the syntax above while thinking about using var or let and which data type it should be.
    let pi: Double = 3.1415926

/// # 3. Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average .
    let x: Int = 10
    let y: Int = 5
    let average = (x + y) / 2

/// # 4. Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
///    ● Please solve this problem so that we can put the average in the record system.
///  ● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
    let averageDouble = Double(average)
/// - 兩個value型態不同：( 10 / 3 )是整數型態，( 10.0 / 3.0 )是浮點數型態

/// # 5. Declare two constants that values are 10 and 3 each, then please calculate the remainder and save the result in a constant named remainder .
    let a: Int = 10
    let b: Int = 3
    let remainder = a % b

/// # 6. Swift is a very powerful language that can infer the data type for you ( Type Inference ) while we still need to know the basics well. Please change the following codes into the ones with the type annotation. Ex:.var x = 10.=>.var x: Int = 10.
    var flag: Bool = true
    var inputString: String = "Hello world."
    let bitsInBite: Int = 8
    let averageScore: Double = 86.8

/// # 7. What is Type Inference in Swift?
/// - Type Inference是一種自動推斷變數或常數型態的能力，他可以自己從給定的value推測此變數或常數屬於什麼型態，不需要特別去定義他，這樣可以增加程式碼的易讀性．

/// # 8. What is the issue about this piece of code?
///        var phonenumber =  0987654321
///     phoneNumber = "Hello world."
/// - 會出現TypeError，phonenumber一開始是設成一個整數type的變數，但後來賦予一個字串型態的值，兩者型態不相容，所以無法再重新指定值給他

/// # 9. Compound assignment operators are very useful when programming. Please declare a variable   with initial value 22000, and use unary plus operator adding 28000 to salary, so it will be 50000 after this process.
    var salary = 22000
    salary += 28000

/// # 10. You should notice that ‘=’ has a different meaning in programming. In the real world, .‘=’ means equal while in programming, ‘=’ means assign . You simply put the right hand side data into the left hand side variable or constant. Now please write down the Equality operator in Swift.
/// - "=="


