/// **Part 1: Object-Oriented Swift**

/*
 1. Declare a class Animal with a property gender and a method eat() . The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”
 */

enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat() {
        print("I eat everything!")
    }
}

/*
 2. Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.
 */

class Elephant: Animal {
    override func eat() {
        print("I eat banana! ")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat meat! ")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat grass! ")
    }
}

/*
 3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger , elephant , and horse are instances of class Tiger, Elephant, and Horse respectively.
 */

class Zoo {

    var weeklyHot: Animal
    
    init(weeklyHot: Animal) { 
        self.weeklyHot = weeklyHot
    }
}

let tiger = Tiger(gender: .male)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .undefined)

let zoo = Zoo(weeklyHot: tiger)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

/*
 4. What is an instance? What does Initilizer do in Class and Struct?
 - instance是指具體的例子，當創建一個class之後需要用instance的方法將class所定義的屬性賦予給一個真正的物件．
 - Initilizer(init)用於設置初始狀態，在創建一個新instance的時候會被調用來當作物件最初的屬性狀態．
 */

/*
 5. What’s the difference between Struct and Class ?
 - struct: value type，被引用的時候會複製一個副本，後面的子instance更改都是在副本改，不會影響母instance原來的樣子．
 - class: reference type，被引用的時候用來共享和繼承屬性，如果子instance更改屬性母instance也會一起被更改．
 */

/*
 6. What’s the difference between reference type and value type ?
 - reference type 參考（引用）類型對於兩個變數來說都是指同一個物件，記憶體儲存位址為同一個，所以當修改其中一個變數時也會影響到另一個變數．
 - value type 實質類型對於每個變數來說都是獨立的，記憶體儲存位址不同，所以相互不影響，如果要對其中一個變數進行更改的話是更改副本的資料，並不會影響到另一個變數．
 */

/*
 7. What’s the difference between instance method and type method ?
 - instance method: 一種實現class中被定義的物件的方法，通常會用function實現．
 - type method：屬於class本身型態的方法，前面通常會有static或class的關鍵字，像是static func ..., class func ...
 */

/*
 8. What does self mean in an instance method and a type method respectively?
 - in an instance method: self用來幫助調用屬性，並將屬性修改成當前實例的屬性．
 - in a type method: self指的就是class本身的物件或方法．
 */
