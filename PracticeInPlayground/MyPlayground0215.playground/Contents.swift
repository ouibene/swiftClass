import UIKit

/* Collection
   데이터를 모아놓음
   Array, Dictionary, Set
   같은 형식의 값만 저장할 수 있다
   
   * NSArray, NSDictionary, NSSet
 */

/* Array
   항상 정렬되어 있다
   단일 타입
   맨 앞에 뭔가 추가를 하면, 모든 배열이 밀린다
 */
var nums = [1, 2, 3, 4, 5] //array literal
let nums1: [Int] = [1, 2, 3, 4, 5]
let nums2: Array<Int> = [1, 2, 3, 4, 5]
let nums3: Array = [1, 2, 3, 4, 5]

nums.count
nums.isEmpty
nums.contains(3)

let emptyArray1: Array<Int> = []
let emptyArray2: [String] = []
let emptyArray3 = [Int]()
let emptyArray4: [Int] = []

nums[0] //Subscript

let index = 123
if index >= 0 && index < nums.count {
    nums[index]
}

emptyArray2.first //Optional. if let / Guard let
emptyArray2.last

nums.append(6)
nums
nums.insert(0, at: 0)
nums.insert(22, at: 3)

nums.remove(at: 3)
nums.removeFirst()
nums.removeLast()
nums.removeAll()
//nums.removeAll(keepingCapacity: <#T##Bool#>) 메모리공간의 데이터는 남김
nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
nums.removeAll(where: {(num: Int) -> Bool in
    return num.isMultiple(of: 2)
})

nums.removeAll(where: {
    return $0.isMultiple(of: 2) //short hand argument name
})

nums.removeAll(where: {
    $0.isMultiple(of: 2) //implicit return
})

nums.removeAll { $0.isMultiple(of: 2) }

nums = []
nums = [Int]() //위의 코드와 똑같지만, 위 코드가 더 단순하므로 많이 사용함.

//Assignment
nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].shuffled()
nums.sort()
nums.shuffle()
nums.reverse()
nums.reversed()

nums.sort(by: >) //연산자 메서드를 전달함
nums.sort { $0 > $1 }

//Table View

/* Dictionary
   key-value 를 쌍으로 저장한다
   key 는 unique 하다
   정렬할 수 없다. 메서드는 있지만 잘 사용하지 않는다.
 */
var dict = ["a": "apple", "b": "banana"]
let dict2: [String: String] = ["a":"apple"]
let dict3: Dictionary<String, String>
dict.count
dict.isEmpty

dict["a"]
dict["z"] //return nil

dict["a"] = "avocado"
dict.count

dict["m"] = "melon"//upsert
dict //매번 순서가 바뀐다. 테이블뷰에 잘 사용되지 않는다.
dict.count

dict["m"] = nil //delete. key, value 를 모두 삭제함.
dict.count

dict.removeAll()
dict

dict = ["a": "apple", "b": "banana"]
dict = [:]
dict

dict = ["a": "apple", "b": "banana"]
dict.keys
Array(dict.keys).sorted()
dict.values
Array(dict.values).sorted()

/* Set
   집합.
   정렬이 되어있지 않다.
   중복된 값을 저장할 수 있지만 하나만 저장된다.
   이 외에는 배열과 같다.
 */


//String
let str = "Hello, iOS Programming"
str.count
str.isEmpty

"apple" == "Apple"
"apple".lowercased()
"apple".uppercased()

"apple".lowercased() == "Apple".lowercased()
"apple".caseInsensitiveCompare("Apple") == .orderedSame

str.contains("iOS")
str.contains("ios")
str.lowercased().contains("ios")

str.hasPrefix("Hello")
str.hasPrefix("H")
str.hasSuffix("Hello")

let name = "홍길동"
let age = 12

let str2 = "이름은 \(name), 나이는 \(age)세"

let now = Date()
print(now)

//오늘은 2월 15일 입니다.
let formatter = DateFormatter()
formatter.dateFormat = "M월 d일"
let str3 = "오늘은 \(formatter.string(from: now)) 입니다."
print(str3)

let formatter2 = DateFormatter()
formatter2.dateFormat = "오늘은 M월 d일 입니다."
print(formatter2.string(from:now))

//문자열 인덱스 : String.Index != Int
str3[str3.startIndex]
//str3[str3.endIndex] 아래와 같이 사용하도록 한다.
str3[str3.index(before: str3.endIndex)]
str3[str3.index(str3.startIndex, offsetBy: 2)]
str3[str3.index(str3.endIndex, offsetBy: -13)]
if let range = str3.range(of: "입니다") {
    // 찾으면 range 에 범위를 bind
    str3[range.lowerBound]
    str3[range.upperBound]
    str3[str3.index(before: range.upperBound)]
}

//Enum

//Date


