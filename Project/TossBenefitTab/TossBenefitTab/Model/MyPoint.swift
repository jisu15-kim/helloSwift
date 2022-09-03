//
//  MyPoint.swift
//  TossBenefitTab
//
//  Created by 김지수 on 2022/08/28.
//

import Foundation

struct MyPoint: Hashable {
    var point: Int
}

extension MyPoint {
    static let `default` = MyPoint(point: 0)
}

