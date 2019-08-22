//  main.swift

//  Guess My Number

//  Created by Ann Greyson on 8/21/19.
//  Copyright © 2019 Greyson. All rights reserved.

//



import Foundation

print("Welcome to Guess My Number!")
var goAgain = "Y"
var mysteryNumber = Int.random(in: 1...100)
while goAgain == "Y" {
    print("I'm thinking of a number between 1 and 100. Guess it! [\(mysteryNumber)]")
    if let userInput = readLine(){
        if let guess = Int(userInput){
            if (guess != mysteryNumber){
                if (guess < mysteryNumber){
                    print("Too low. Try again.")
                } else {
                    print("Too high. Try again.")
                }
            } else {
                print("Correct!")
                mysteryNumber = Int.random(in: 1...100)
                print("Enter Y to play again.")
                goAgain = readLine()!
            }
        } else {
            print("Invalid entry. Guess again.")
        }
    }
}
print("Good-bye!")
