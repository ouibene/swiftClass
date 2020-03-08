import UIKit

/* Property */
//global 에 있음. 변수, 상수라고 부른다.
//선언할 때가 아닌, 접근할 때 메모리가 만들어진다.
var num = 10
let con = 10

//struct, class 안에 있으면 property. (codable 알아보기)
struct Size {
    //상수 저장 속성. 각각 메모리 공간을 가지고있다.
    let width: Double //Constant Stored Instance Property. 상수 저장 속성
    var height: Double //Variable Stored Instance Property. 변수 저장 속성
    
    //계산 속성 == 계산 프로퍼티 == computed property
    //computed property. 저장 공간이 없다. 무조건 var이다.
    var area: Double {
        /*
        get {
            return width * height
        }
        */
        return width * height
        // 이렇게 사용하기도 하나 -> width * height 가독성 때문에 위처럼 한다.
        //set은 주로 사용하지 않고 이렇게 읽기전용으로 사용한다.
        //get 은 주로 생략함.
    }
    
    //Type property 는 static 또는 class 키워드가 붙는다.
    //Constant stored type property.
    //접근할 때 메모리가 만들어진다.
    static let width2: Double = 15.0
    
    /* Method
       function :전역에서 만들면 함수.
       type 안에 들어오면 method.
     */
    /* Instance method */
    func doSomething() {
        print(Size.width2)
        print(Self.width2) //유지보수에 더 나은 방법
        //소문자 self 는 instance
        //대문자 Self 는 현재 type 을 나타내는 특별한 키워드이다.
    }
    
    /* type method */
    static func doSomething2() {
        //instance와 type 은 공간이 다름.
        //같은 타입 멤버가 아니면 사용하지 못한다.
        //type 메서드에서 instance 메서드나 property 에 접근하는 경우는 거의 없다.
        //무조건 인스턴스를 생성해야한다. 하지만 의미가 없다.
    }

}

// Instance Property (인스턴스 이름으로 접근하는 속성)

let s = Size(width: 0.0, height: 0.0) //memberwise initializer(구조체 전용) 로 인하여 초기화 할 수 있게 된 코드. 생성자를 직접 구현하면 자동으로 제공되지 않는다. 아래 생성자 추가 설명 필독
s.height
s.width
s.area

// Type Property (타입 이름으로 접근하는 속성)
Size.width2

/* Method */
s.doSomething() //Instance method
Size.doSomething2() //Type method


/* Initializer
   객체를 초기화 시켜준다.
   실제 메모리 공간을 만들어 준다.
   이름이 없다.
   모든 stored instance property 를 초기화하도록 하는 역할.
 */
//Size() //모든 값이 기본 값을 가지고 있으면 에러가 발생하지 않는다.

// Memberwise Initializer : 구조체 전용 생성자.
//클래스에서는 만들지 않는다.

extension Size {
    init(value: Double) {
        //모든 stored instance property 를 초기화하도록 한다.
        width = value
        height = value
    }
}
//이런식으로 추가해주면 생성자를 두 개 사용할 수 있다. 꼭 기억할 것.
//내가 만든 것은 extension 으로 빼도록 한다. 만들지 않는 것도 좋지만, 만들어야 한다면...

/* Class Initializer
 *
 */
class Person {
    //option+command+click 해서 initializer 만들도록 한다.
    let name: String
    let age: Int
    
    /* Designated Initializer: 지정생성자
     init 앞에 아무것도 없다.
    
    init(name: String, age: Int = 0) { //파라미터 기본값을 준다.
        //property name = name
        self.name = name
        self.age = age
    }
     */
    
    /* failable initializer */
    init?(name: String, age: Int = 0) { //파라미터 기본값을 준다.
        self.name = name
        
        guard age >= 0 else {
            return nil
        }
        
        self.age = age
    }
    
    /* Convenience Initializer: 간편생성자
        convenience init() {
        }
     생성자를 많이 만들지 않도록 한다.
     웬만하면 사용하지 않도록 한다.
    */
    convenience init?(name: String) {
        self.init(name: name, age: 0)
    }
    
}

let p = Person(name: "asdfasdf", age: -30)
p?.age
p?.name

//괄호 앞에 type 이름. 생성자를 호출하는 것이다.
let str = "123"
let number = Int(str)
number //failable


let url = URL(string: "https://www.apple.com")!
if let html = try? String(contentsOf: url) {
    print(html)
}

//Failable Initializer
//Initializer + Optional.
//성공하면 인스턴스, 실패하면 nil을 return 한다.


