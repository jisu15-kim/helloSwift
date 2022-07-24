//
//  ResultCell.swift
//  InstaSearchView
//
//  Created by 김지수 on 2022/07/23.
//

import UIKit

class ResultCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        thumbnailImageView.image = nil
    }

    func configure(_ imageName: String) {
        thumbnailImageView.image = UIImage(named: imageName)
    }
}
