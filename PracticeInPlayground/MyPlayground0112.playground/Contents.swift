import UIKit

/* Optional */
let num: Int = 123 //Non-optional type
print(num)

let num2: Int? = nil // == NULL
print(num2)

let num3: Int? = 123
print(num3) //Wrapping. It is wrapped by enumeration type

/* Unwrapping
 * 1. Forced unwrapping
 *    optional_expr!
 *    ! : 강제 추출 연산자. Forced unwrapping operator
 * 2. Optional binding
 */
print(num3!)

if let x = num2 {
    print("if block \(x)")
} else {
    print("else block")
}

func callGuardLet() {
    guard let y = num2 else {
        return
    }
}

func guardStatement() {
    let z = true
    guard z else {
        print("guard")
    }
}

let str = "520d"
let modelNumber = Int(str)

/* IUO : Implicit Unwrapped Optional
 * IUO uses exclamation mark (!)
 * it may cause of crash
 */

let optionalNum: Int? = 123
let iuoNum: Int! = 123

print(optionalNum)
print(iuoNum)

let result1: Int = optionalNum!
let result2: Int = iuoNum

let nonOptionalStr: String = "ABC"
let optionalStr: String? = "DEF"
let iuoStr: String! = "GHI"

nonOptionalStr.count
optionalStr?.count //Optional chaining
iuoStr.count
iuoStr?.count

/* nil coaleascing operator : ??
 * optional_expr ?? non_optional_expr
 */

let nilStr: String? = nil
optionalStr ?? "John"
nilStr ?? "Amy"
