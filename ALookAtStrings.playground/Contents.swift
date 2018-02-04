/*:
 # A Look at Strings
 Here is the [official documentation from Apple](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html).
 
 In truth, because there are many languages and glyphs used in each language around the world, dealing with strings in code can be a Big Thing.
 
 However, below are some short examples that may prove useful.
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
 
 As mentioned before, this can be a long topic.
 
 Short summary – each letter can be represented by a *Unicode scalar*.
 
 Each scalar has a value, or *code unit*.
 
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


