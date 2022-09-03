//
//  MyPointViewModel.swift
//  TossBenefitTab
//
//  Created by 김지수 on 2022/09/04.
//

import Foundation

final class MyPointViewModel {
    @Published var point: MyPoint
    
    init(point: MyPoint) {
        self.point = point
    }

}
