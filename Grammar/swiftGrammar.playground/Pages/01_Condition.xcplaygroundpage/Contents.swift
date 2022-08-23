import UIKit

// 다크모드 여부

var isDarkmode : Bool = false

isDarkmode == true
if isDarkmode {
    print("다크모드입니다.")
} else {
    print("다크모드가 아닙니다.")
}


var title : String = isDarkmode == true ? "다크모드입니다" : "다크모드가 아닙니다"
print("title = \(title)")
