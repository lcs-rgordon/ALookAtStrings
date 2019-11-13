/*:
 # A Look at Strings
 Here is the [official documentation from Apple](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html).
 
 There are many languages worldwide. Swift fully supports the [Unicode standard](https://www.unicode.org/standard/standard.html), meaning strings may contain Latin characters, like *A*, or symbols from Mandarin Chinese, like *你好*, or even Emoji, such as: 🤦🏻‍♂️. These *glyphs* are represented using different amounts of internal storage in a computer. As a result, handling strings in Swift requires a bit more knowledge than in other programming languages that do not fully support the Unicode standard.
 
Below are some short examples that build upon the [information presented in section 2.1 of App Development with Swift](ibooks://assetid/1465002990#page(114)) that may prove useful.
 */

import Foundation

//: ## Iterating over individual characters
let example = "The quick brown fox jumped over the lazy dog."

// Iterate over each character in the string
for singleCharacter in example {
    // The output will show below in the Debug area
    print(singleCharacter)
}
print("==========================")


/*:
 ## How are individual characters represented and stored?
 
 Short summary – each character can be represented by a *Unicode scalar*.
 
 Each scalar has a value, or *code unit*. Essentially, a number.
 
 This is a [good reference](https://unicodelookup.com/#latin/1).
 
 Look for the values in the *Dec* (decimal) column.
 
 For example, capital A is 65. Capital B is 66. Capital C is 67. And so on.
 
 */

// Print each letter's Unicode scalar value (a.k.a. "code unit")
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
for scalar in alphabet.unicodeScalars {
    print("The unicode scalar is: \(scalar)")
    print("The unicode scalar's value is: \(scalar.value)")
}
print("==========================")

// We can also use a loop to build a string from scalar values
var builtStringFromLoop = ""
for i in 97...122 {
    
    // What is the scalar value?
    print("Unicode scalar value is: \(i)")
    
    // Try to convert the provided scalar value to an actual instance of a Unicode scalar
    if let scalar = UnicodeScalar(i) {
        
        // If we got here, inside the "if let" statement, the Unicode scalar was successfully created
        let newLetter = String(scalar) // Convert the scalar into a single letter
        print("About to add this letter to the string: \(newLetter)")
        builtStringFromLoop += newLetter // Now add the letter to the built string
        
    }
    
}
print("The string built from the loop is: \(builtStringFromLoop)")
print("==========================")

/*:
## Accessing individual characters from a string

 There is a [set of nice examples in the Swift documentation](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html#ID494) that show how to access parts of a string.
 
 Let's consider the following string:
 
 `Lakefield College School`
 
 This is how the string would be represented internally, using indices:
 
 ![string-by-index](string-by-index.png)

*/
// Here's a string to work with
let school = "Lakefield College School"
print(school)

print("-------------")

// We can access individual characters of a string using an index
// NOTE: The first character in a string, it's starting index, is always at position 0
var index = school.index(school.startIndex, offsetBy: 0)
let firstCharacter = school[index]
print("The first character in the string is \(firstCharacter)")

// Print the second character in the string
index = school.index(school.startIndex, offsetBy: 1)
let secondCharacter = school[index]
print("The second character in the string is \(secondCharacter)")

print("-------------")

// We can also access characters relative to the end of the string
// NOTE: The last character in a string, it's ending index, is always equal to the count of characters in the string, minus 1
index = school.endIndex
//let lastCharacter = school[index]
//print("If you try to access the final character of a string using the end index, it won't work – you're going past the end of the string: \(school[index])")

// Here's how to access characters relative to the end of the string...
// Get the last character
index = school.index(school.endIndex, offsetBy: -1)
let lastCharacter = school[index]
print("Last character of the string is: \(lastCharacter)")

// Get the second last character
index = school.index(school.endIndex, offsetBy: -2)
let secondLastCharacter = school[index]
print("Second last character of the string is: \(secondLastCharacter)")

print("-------------")

// Finally, here is one other way to access the final two characters of the string
index = school.index(school.startIndex, offsetBy: 23)   // Last character
let last = school[index]
print("Last character is: \(last)")

index = school.index(school.startIndex, offsetBy: 22)   // Second last character
let secondLast = school[index]
print("Second last character is: \(secondLast)")


/*:
 ## Exercises
 
 ### Exercise 1
 
 Create a constant called `name` that contains your full name.
 
 Then, use a loop to iterate over each character of your name, and print each character, one by one, in the Debug area below.
 
 For example:
 
 ![name](name.png)
 */
// This will separate the output from the examples above from your work
print("===== Exercise 1 begins =====")



/*:
### Exercise 2

Consider the phrase stored in the constant `aQuestion` below.

Write code, in *two different ways*, that prints the single character 在 to the Debug area.

*/
// This will separate the output from the code above from your work for this question
print("===== Exercise 2 begins =====")

// Create a string
let aQuestion = "请问现在几点了?"

// Write code to complete the exercise below...

/*:
### Exercise 3

A challenge.

The [Caesar Cipher](https://en.wikipedia.org/wiki/Caesar_cipher#/media/File:Caesar_cipher_left_shift_of_3.svg) is a basic encryption technique that involves shifting letters left or right within the alphabet.
 
Say that you wish to encrypt the word `pen` using a *rightward shift of three characters*.
 
 Write code below that encrypts the word using a Caesar cipher.
 
 HINT: Think about using Unicode scalar values, performing arithmetic, and then creating new characters.

*/

// Create the starting phrase
let plainText = "pen"

// Encrypt the starting phrase
