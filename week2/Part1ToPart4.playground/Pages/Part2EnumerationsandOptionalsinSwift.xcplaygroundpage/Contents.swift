/// **Part 2: Enumerations and Optionals in Swift**
/// 
/*
 1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
 
 ● Please declare an enum named Gasoline to model gasoline.
 ● Every kind of gasoline has its price. Please declare a computed property named price and a method named getPrice separately in Gasoline enum that both will return different prices depending on different gasoline.
 ● Please establish raw values for . The data type of raw value should be String. For example, should be “92”.
 ● Please explain what enum associated value is and how it works.
 */

enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    var price: Double {
        switch self {
        case .oil92:
            return oil92_price
        case .oil95:
            return oil95_price
        case .oil98:
            return oil98_price
        case .diesel:
            return diesel_price
        }
    }
    
    func getPrice() -> Double {
        switch self {
        case .oil92:
            return oil92_price
        case .oil95:
            return oil95_price
        case .oil98:
            return oil98_price
        case .diesel:
            return diesel_price
        }
    }
}

// associated value: 在不同的enum case中，可能會出現需要儲存不同資料的情況，這時候就可以設定關聯值增加說明．例如 case oil92(price: Double)，可以設定某變數在oil92的條件下他的價錢是多少．

/*
 2. Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the
 value of a will be nil or Int . You should have learned how to deal with Optional.
 
 ● People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
 ● Please create a People instance. Use guard let to unwrap the pet property and print its name.
 ● Please create another People instance. Use if let to unwrap the pet property and print its name.
 */

class Pet {
    var name: String?
    
    init(name: String? = nil) {
        self.name = name
    }
}

class People {
    var name: String
    var pet: Pet?
    
    init(name: String, pet: Pet? = nil) {
        self.name = name
        self.pet = pet
    }
    
    guard let pet = pet else {return}
    print("\(name)'s pet name is \(pet.name)")
    
    if let pet = pet {
        print("\(name)'s pet name is \(pet.name)")
    } else {
        return
    }
}
