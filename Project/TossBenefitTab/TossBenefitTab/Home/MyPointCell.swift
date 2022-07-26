//
//  MyPointCell.swift
//  TossBenefitTab
//
//  Created by 김지수 on 2022/08/28.
//

import UIKit

class MyPointCell: UICollectionViewCell {
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var iconView: UIImageView!

    func configure(item: MyPoint) {
        iconView.image = UIImage(named: "ic_point")
        descriptionLabel.text = "내 포인트"
        pointLabel.text = "\(item.point) 원"
    }
}
