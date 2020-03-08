import UIKit

/* 상속(클래스 전용) */
class Figure {
    var name: String = ""
    func draw() {
        print("draw \(name)")
    }
}

class Rectangle: Figure {
    //overriding
    let cornerRadius = 30
    override func draw() {
        name = "rectangle"
        super.draw()
        print("⬛️")
    }
}

class Circle: Figure {
    override func draw() {
        print("⚫️")
    }
}

let f = Figure()
f.name
f.draw()

let r = Rectangle()
r.name
r.draw()

let c = Circle()
c.draw()


/* Upcasting, Downcasting */
let ur: Figure = Rectangle() //upcasting. superclass 에 자동으로 저장됨. 안전하다.

let or = ur as? Rectangle //downcasting. 안전하지 않다. 실제 Rectangle 형식으로 저장되었으나, ur의 형식을 보면 Figure 임. cornerRadius 가 없다. 하지만 이 값을 사용하고싶다?
or?.cornerRadius

/* Upcasting 사용 예시 */
let list = [Figure(), Rectangle(), Circle()]

/* NOTE:
   type conversion 새로운 메모리 x
   type casting
 */

//type casting
//instance as? type : Runtime cast
//instance 를 타입으로 바꿀 수 없을 때 nil 을 리턴한다. 바꿀 수 있으면 포인터를 리턴한다.
// as : Compile time cast

//스위프트에서 문자열은 기본적으로 구조체인데, 클래스로 처리하고 싶다면
"aaa" as NSString

// instance is type
or is Rectangle
or is Figure
or is Circle
