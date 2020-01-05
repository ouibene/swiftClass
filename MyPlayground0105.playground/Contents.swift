import UIKit

/* Type Conversion
 * Change the value as a new type
 * new value will created in memory
 *
 * Type Casting
 */

/*Type Conversion
 * nil will be returned if type conversion fails
 */
Int("123")
Double("123")

Float(Int.max) //(O)
// Int(Float.greatestFiniteMagnitude) // (X) FATAL ERROR!

//Swift follows Left Associativity
3 - 2 - 1

//Int + Double = ? (X) error occurs
//type conversion : Integer -> Double
let a = 12
let b = 34.56

//the number of memory is 5
let c: Int = Int(Double(a) + b)

//handling overflow
let max01: Int = Int.max &+ 1
let max02: Double = Double(Int.max) + 1

//Comparison Operator
a == Int(b) //Equal to Operator (True or False)

let e = 12.34
let f = 56.78

e > f //the way of float comparision
//Use NSDecimalNumber

//Logical Operators
/* logical AND */
true && true
true && false
false && true
false && false

/* logical OR */
true || true
true || false
false || true
false || false

/* logical NOT */
!true
!false

//assignment Operators
let r = 123

//Compound Assignment Operator
var ca = 1
ca = ca + 1
ca += 1

//Ternary Conditional Operator
//condition -> true / false -> boolean expr
a > 10 ? "true" : "false"

//range Operator
//lowerBound...upperBound
1...10 //close range operator
1..<10 //half-open range operator
for i in 1...5 {
    print(i)
}
for i in 1..<5 {
    print(i)
}

// lowerBound <= upperBound
//print 1 to 10 in desc order
(1...10).reversed()

//bitwise operator
//(X)

