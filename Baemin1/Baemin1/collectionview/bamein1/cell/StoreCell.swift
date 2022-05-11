//
//  StoreCell.swift
//  Baemin1
//
//  Created by 마경미 on 2022/04/21.
//

import UIKit

struct StoreInfo {
    var image1:UIImage
    var image2:UIImage
    var image3:UIImage
    var storeName:String
    var rate:String
    var orderFee:String
    var time:String
    var distance:String
    var fee:String
}

class StoreCell: UICollectionViewCell {
    
    static let storeCellId = "storeCell"
    
    let storeImg1:UIImageView = {
        let imageView=UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.layer.maskedCorners = CACornerMask.layerMinXMinYCorner
        return imageView
    }()

    let storeImg2:UIImageView = {
        let imageView=UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.layer.maskedCorners = CACornerMask.layerMaxXMinYCorner
        return imageView
    }()
    
    let storeImg3:UIImageView = {
        let imageView=UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()


    let storeNameL: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let ratingL: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let orderFeeL: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        label.layer.cornerRadius = 20
        return label
    }()
    
    let distanceL: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let feeT: UITextView = {
        let textV = UITextView()
        textV.text = "TEST"
        textV.translatesAutoresizingMaskIntoConstraints = false
        textV.font = UIFont.systemFont(ofSize: 14)
        
        textV.layer.cornerRadius = 20
        textV.layer.maskedCorners = CACornerMask.layerMaxXMaxYCorner
        return textV
    }()
    
    let feeL: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.cornerRadius = 20
        label.layer.maskedCorners = CACornerMask.layerMinXMaxYCorner
        return label
    }()
    
    let timeB: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font =  UIFont.systemFont(ofSize: 14)
        button.layer.cornerRadius = 20
        let color2 = UIColor(hexString: "#88dbe3")
        button.layer.borderWidth = 3
        button.layer.borderColor = color2.cgColor
        let color = UIColor(hexString: "#ccecf0")
        button.backgroundColor = color
        return button
    }()
    
    func setData(with data: StoreInfo) {
        storeImg1.image = data.image1
        storeImg2.image = data.image2
        storeImg3.image = data.image3
        storeNameL.text = data.storeName
        ratingL.text = data.rate
        timeB.setTitle(data.time, for: .normal)
        orderFeeL.text = data.orderFee
        distanceL.text = data.distance
        feeL.text = data.fee
    }
        
    override init(frame:CGRect){
        super.init(frame:frame)
        
        contentView.layer.cornerRadius = 20
    }
        
    required init?(coder aDecoder : NSCoder) {
        super.init(coder : aDecoder)
    }
}
