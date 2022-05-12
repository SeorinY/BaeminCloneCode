//
//  MenuCell.swift
//  Baemin1
//
//  Created by 마경미 on 2022/04/21.
//

import UIKit

struct MenuInfo{
    var name:String
    var image:UIImage
}

class MenuCell: UICollectionViewCell {
    static let menuCellId = "menuCell"
    
        let imgV:UIImageView = {
        let imageView=UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let nameL: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    func setData(with data:MenuInfo) {
        nameL.text = data.name
        imgV.image = data.image
    }
    
    override init(frame:CGRect){
        super.init(frame:frame)
        contentView.addSubview(imgV)
        contentView.addSubview(nameL)

        imgV.topAnchor.constraint(equalTo: contentView.topAnchor).isActive=true
        imgV.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
        imgV.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
        imgV.heightAnchor.constraint(equalToConstant: 35).isActive = true
        imgV.bottomAnchor.constraint(equalTo: nameL.topAnchor).isActive=true

        nameL.leadingAnchor.constraint(equalTo: imgV.leadingAnchor).isActive=true
        nameL.trailingAnchor.constraint(equalTo: imgV.trailingAnchor).isActive=true
        nameL.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive=true
    }
    
    required init?(coder aDecoder : NSCoder) {
        super.init(coder : aDecoder)
    }
}
