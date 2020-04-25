import UIKit

/* extension
 * struct, enum, class 를 확장한다.
 * type 을 확장한다. (새로운 멤버(메서드, 속성)를 추가)
 */

extension Date {
    var year: Int {
        let calendar = Calendar.current
        return calendar.component(.year, from: self)
    }
    
    var month: Int {
        let calendar = Calendar.current
        return calendar.component(.month, from: self)
    }
    
    var day: Int {
        let calendar = Calendar.current
        return calendar.component(.day, from: self)
    }

    func toString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy년 M월 d일"
        return dateFormatter.string(from: self)
    }

    func toString(format: String = "yyyy년 M월 d일") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
    init? (_ year: Int, _ month: Int, _ day: Int) {
        let calendar = Calendar.current
        var components = DateComponents()
        components.year = year
        components.month = month
        components.day = day
        
        guard let dt = calendar.date(from: components) else {
            return nil
        }
        self = dt
    }
}

let now = Date()
let calendar = Calendar.current
let year = calendar.component(.year, from: now)

now.year
now.month
now.day

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy년 M월 d일"
dateFormatter.string(from: now)

now.toString() // 2020년 4월 25일
now.toString(format: "M월 d일") //4월 25일
now.toString()
now.toString(format: "")

let birthDay = Date(1991, 7, 4)
birthDay?.toString()


/* Protocol
 * UITableViewDelegate,... 등에서 쓰인다.
 */
