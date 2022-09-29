//
//  Member.swift
//  MemberList
//
//  Created by 김지수 on 2022/09/29.
//

import UIKit

struct Member {
    lazy var memberImage: UIImage? = {
        guard let name = name else {
            return UIImage(systemName: "person")   // 이름이 없다면, 시스템 이미지를 세팅하세요
        }
        // 해당 이름의 이미지가 없다면, 시스템 사람 이미지 설정
        return UIImage(named: "\(name).png") ?? UIImage(systemName: "person")
    }()
    
    // 멤버의 절대적인 순서를 위한 타입 저장 속성 - 모든 인스턴스들이 공유할 수 있는 저장속성
    static var memberNumbers: Int = 0
    
    let memberId: Int
    var name: String?
    var age: Int?
    var phone: String?
    var address: String?
    
    init(name: String?, age: Int?, phone: String?, address: String?)
    {
        // 0 일때는 0을 저장, 0이 아닌때는 타입 저장 속성의 절대적 값으로 세팅 (자동 순번이 되도록)
        self.memberId = Member.memberNumbers
        
        // 나머지 저장속성은 외부에서 세팅
        self.name = name
        self.age = age
        self.phone = phone
        self.address = address
        
        // 멤버를 생성할 경우, 항상 타입 저장속성의 정수값 + 1
        Member.memberNumbers += 1
    }
    
}
