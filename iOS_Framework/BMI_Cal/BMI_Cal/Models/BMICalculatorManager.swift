//
//  BMICalculatorManager.swift
//  BMI_Cal
//
//  Created by 김지수 on 2022/09/25.
//

import UIKit

// 이 앱에서의 [비즈니스로직] - BMI
// BMI를 계산해내는 역할임

struct BMICalculatorManager {
    
    // BMI 계산 결과값 저장을 위한 변수 -> 반드시 private으로 설정
    private var bmi: BMI?
    
    
    mutating func getBMIResult(height: String, weight: String) -> BMI {
        calculateBMI(height: height, weight: weight)
        return bmi ?? BMI(value: 0.0, matchColor: UIColor.black, advice: "문제발생")
    }
    
    mutating private func calculateBMI(height: String, weight: String) {
        guard let h = Double(height), let w = Double(weight) else {
            bmi = BMI(value: 0.0, matchColor: UIColor.black, advice: "문제발생")
            return
        }
        
        var bmiNum = w / (h * h) * 10000
        bmiNum = round(bmiNum * 10) / 10
        
        if bmiNum < 18.5 {
            bmi = BMI(value: bmiNum, matchColor: .systemBlue, advice: "저체중입니다 ! 많이드세요")
            return
        }
        else if bmiNum < 22.9 {
            bmi = BMI(value: bmiNum, matchColor: .systemGreen, advice: "정상체중입니다 ! 유지하세요")
            return
        }
        else if bmiNum < 24.9 {
            bmi = BMI(value: bmiNum, matchColor: .systemYellow, advice: "과체중입니다 ! 운동하세요")
            return
        }
        else {
            bmi = BMI(value: bmiNum, matchColor: .systemRed, advice: "비만입니다 !! 삐용삐용🚨")
            return
        }
    }

}
