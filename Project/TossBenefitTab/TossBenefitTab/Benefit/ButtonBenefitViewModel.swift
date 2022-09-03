//
//  ButtonBenefitViewModel.swift
//  TossBenefitTab
//
//  Created by 김지수 on 2022/09/04.
//

import Foundation
import Combine

final class ButtonBenefitViewModel {
    @Published var benefit: Benefit = .today
    @Published var benefitDetails: BenefitDetails = .default
    
    init(benefit: Benefit) {
        self.benefit = benefit
    }
    
    func fetchDetails() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.benefitDetails = .default
        }
    }
}
