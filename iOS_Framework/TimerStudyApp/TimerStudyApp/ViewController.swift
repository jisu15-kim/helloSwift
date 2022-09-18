//
//  ViewController.swift
//  TimerStudyApp
//
//  Created by 김지수 on 2022/09/18.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var mainLabel: UILabel!
    weak var timer: Timer?
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        mainLabel.text = "초를 선택하세요 !"
        slider.setValue(0.5, animated: true)
        timer?.invalidate()
        number = 0
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        number = Int(sender.value * 60)
        mainLabel.text = "\(number)초"
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(doSomeThingAfter1Second), userInfo: nil, repeats: true)
    }
    
    @objc func doSomeThingAfter1Second() {
        if number > 0 {
            number -= 1
            slider.value = Float(number) / Float(60)
            mainLabel.text = "\(number)초"
        } else {
            number = 0
            mainLabel.text = "초를 선택하세요 !"
            timer?.invalidate()
            AudioServicesPlaySystemSound(SystemSoundID(1322))
            return
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        configureUI()
        
    }
}
