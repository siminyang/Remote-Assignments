///
/// **Part 4: Control Flow**
///
/// 1. Please use For-In loop and Range to print the last three members in the lottoNumbers. array.
    let lottoNumbers = [10, 9, 8, 7, 6, 5]
    for num in lottoNumbers.count - 3 ..< lottoNumbers.count {
        print(lottoNumbers[num])
    }

/// 2. Please use a for-in loop to print the results as the images listed below respectively (through .lottoNumbers.):
    for num in 0 ..< lottoNumbers.count {
        let result = lottoNumbers.count - 1 - num
        print(lottoNumbers[result])
    }

    for num in lottoNumbers {
        if num % 2 == 0 {
            print(num)
        }
    }

/// 3. Please use a while loop to solve the Q2.
    var index = lottoNumbers.count - 1
    while index >= 0 {
        print(lottoNumbers[index])
        index -= 1
    }

    var index = 0
    while index < lottoNumbers.count {
        if index % 2 == 0 {
            print(lottoNumbers[index])
            }
            index += 1
        }

/// 4. Please use a repeat-while loop to solve Q2.
    var index = 0
    repeat {
        if index % 2 == 0{
            print(lottoNumbers[index])
        }
        index += 1
    } while index < lottoNumbers.count

/// 5. What are the differences between while and repeat-while?
/// - repeat-while 一定會有output, while loop不一定，因為while用法是先確定是否符合條件才進迴圈，repeat-while先執行一次後才會確認條件是否要繼續．

/// 6. Declare a variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”
    let rain = true
    var isRaining = rain ? "It’s raining, I don’t want to work today." : "Although it’s sunny, I still don’t want to work today."

/// 7. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director. Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.
    var jobLevel = 0
    var jobLevelList = [1: "Member", 2: "Team Leader,", 3: "Manager", 4: "Director"]

    // if-else statement
    if let jobTitle = jobLevelList[jobLevel] {
        print(jobTitle)
    } else {
        print("We don't have this job")
    }

    // switch statement
    switch jobLevel {
    case 1:
        print(jobLevelList[1])
    case 2:
        print(jobLevelList[2])
    case 3:
        print(jobLevelList[3])
    case 4:
        print(jobLevelList[4])
    default:
        print("We don't have this job")
    }



