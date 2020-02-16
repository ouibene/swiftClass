import UIKit

/* Enum
   고정된 수의 상수를 표현하는 형식
   뒤에 대부분 Style 이 붙어있다.
 */

enum Alignment {
    case left
    case center
    case right
}

var a = Alignment.left
Alignment.center
Alignment.right

a
print(a)
type(of: a) //type : Alignment

a = .right
a = Alignment.right



let formatter = DateFormatter()
formatter.dateStyle = .full
formatter.timeStyle = .none

