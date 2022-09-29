//
//  MemberListManager.swift
//  MemberList
//
//  Created by 김지수 on 2022/09/30.
//

import UIKit

final class MemberListManager {
    private var membersList: [Member] = []
        
    func makeMembersListDatas() {
        membersList = [
            Member(name: "홍길동", age: 20, phone: "010-1111-2222", address: "서울"),
            Member(name: "임꺽정", age: 20, phone: "010-2222-3333", address: "가평"),
            Member(name: "스티브", age: 50, phone: "010-4602-2752", address: "춘천"),
            Member(name: "쿡", age: 30, phone: "010-2554-5324", address: "캘리포니아"),
            Member(name: "베조스", age: 50, phone: "010-9294-2592", address: "하와이"),
            Member(name: "배트맨", age: 40, phone: "010-9325-3253", address: "고담씨티"),
            Member(name: "조커", age: 40, phone: "010-5234-3244", address: "고담씨티")
        ]
    }
    
    // 전체 멤버 리스트 얻기
    func getMemberList() -> [Member] {
        return membersList
    }
    
    // 새로운 멤버 만들기
    func makeNewMember(_ member: Member) {
        membersList.append(member)
    }
    
    // 기존 멤버의 정보 업데이트
    func updateMemberInfo(index: Int, _ member: Member) {
        membersList[index] = member
    }
    
    // 특정 멤버 얻기 (굳이 필요없는데,, 서브스크립트 구현해보자)
    subscript(index: Int) -> Member {
        get {
            return membersList[index]
        }
        set {
            membersList[index] = newValue
        }
    }
}
