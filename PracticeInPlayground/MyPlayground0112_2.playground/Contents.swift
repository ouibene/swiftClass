import UIKit

/* code block
 * Named closure
 *  function, method
 * Closure
 *  closure
 */

/* function
 * 글로벌 스코프
 * 반복되는 기능을 한 번만 구현해놓고 계속해서 쓰기 위하여 사용한다.
 */
func doSomething() {
    print("hello")
}

doSomething()

//Parmeter
func printSomething(str: String) {
    print(str)
}

printSomething(str: "Hi")
printSomething(str: "Ola")

//Return add
func add(a: Int, b: Int) -> Int {
    return a + b
}

add(a: 1, b: 2)
add(a: 3, b: 4)

func multiply(c: Int, d: Int) -> Int {
    return c * d
}

multiply(c: 5, d: 6)

//Argument label
//under score == wildcard pattern
func argLabel(num1 c: Int, _ d: Int) -> Int {
    return c * d
}

argLabel(num1: 5, 6)

func sum(startNum: Int, endNum: Int) -> Int {
    var x = 0
    for y in startNum...endNum {
        x += y
    }

    return x
}

sum(startNum: 1, endNum: 5)

//Variadic parameter
func sum2(nums: Int...) -> Int {
    var sum = 0
    for num in nums {
        sum += num
    }
    
    return sum
}

sum2(nums: 1, 2, 3, 4, 5)

func evenSum(nums: Int...) -> Int {
    var sum = 0
    for num in nums {
        if num.isMultiple(of: 2) {
            sum += num
        }
    }
    
    return sum
}

evenSum(nums: 1, 2, 3, 4, 5)

/* method
 * 형식 내부
 */


/* closure
 * 이름이 없는 코드블록
 * {}
 */
//parameter 가 없고 return type 이 void 인 function type
let c = { print("hello") }
c()

//closure cannot use wildcard pattern
//use 'in' keyword to seperate parameters and code
let c1 = {(str: String) in
    print(str)
}
//closure cannot use Argument label
c1("iOS!")

let c2 = {(str:String) -> Int in
    return str.count
}
c2("Input String")

let list = [1,2,3,4,5,6,7,8,9,10]
list.filter {$0.isMultiple(of: 2)}
list.sorted(by: >)
list.sorted{ $0 > $1 }
