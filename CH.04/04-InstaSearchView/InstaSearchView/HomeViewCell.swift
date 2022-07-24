//
//  HomeViewCell.swift
//  InstaSearchView
//
//  Created by 김지수 on 2022/07/24.
//

import UIKit

class HomeViewCell: UICollectionViewCell {
    
    @IBOutlet weak var homeImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        homeImageView.image = nil
    }

    func configure(_ imageName: String) {
        homeImageView.image = UIImage(named: imageName)
        
    }
}
