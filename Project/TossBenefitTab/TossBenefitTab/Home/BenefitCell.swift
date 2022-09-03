//
//  BenefitCell.swift
//  TossBenefitTab
//
//  Created by 김지수 on 2022/08/28.
//

import UIKit

class BenefitCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var benefitImage: UIImageView!
    
    func configure(item: Benefit) {
        benefitImage.image = UIImage(named: item.imageName)
        descriptionLabel.text = item.description
        titleLabel.text = item.title
    }
}
