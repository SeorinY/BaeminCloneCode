//
//  BannerCell.swift
//  Baemin1
//
//  Created by 마경미 on 2022/04/21.
//

import UIKit

class BannerCell: UICollectionViewCell {
    static let bannerCellId = "bannerCell"
    
    var bg: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints=false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    func setData(image:UIImage){
        bg.image = image
    }
    
    override init(frame:CGRect){
        super.init(frame:frame)
        
        contentView.addSubview(bg)
        bg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive=true
        bg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
        bg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
        bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive=true
    }
    
    required init?(coder aDecoder : NSCoder) {
        super.init(coder : aDecoder)
    }
}
