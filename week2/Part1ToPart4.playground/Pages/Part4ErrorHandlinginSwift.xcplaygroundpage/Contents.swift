/// ** Part 4: Error Handling in Swift **
///
enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumberGame {
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}

let play = GuessNumberGame()

do {
    try play.guess(number: 20)
} catch GuessNumberGameError.wrongNumber {
    print("Wrong Number!")
}


