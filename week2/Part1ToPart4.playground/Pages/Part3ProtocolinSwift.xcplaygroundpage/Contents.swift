/// ** Part 3: Protocol in Swift**
///
/*
 1. Declare a struct Person with a name property type String and a protocol name PoliceMan . There is only one method arrestCriminals with no argument in the protocol.
 2. Make struct Person conform to PoliceMan protocol.
 3. Declare a protocol ToolMan with a method fixComputer that has no argument.
 4. Add a property toolMan to the struct Person with data type ToolMan .
 5. Declare a struct named Engineer that conforms to the ToolMan protocol.
 6. Create a Person instance with the name “Steven” and also create the relative data you need to declare this instance.
 */

struct Person: PoliceMan {
    var name: String
    var toolMan: ToolMan
    
    func arrestCriminals () {
        // to do
    }
}

protocol PoliceMan {
    func arrestCriminals ()
}

protocol ToolMan {
    func fixComputer()
}

struct Engineer: ToolMan {
    func fixComputer() {
        // to do
    }
}

let Steven = Person(name: "Steven", toolMan: Engineer())

