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
    var distance:String
    var fee:String
}

class StoreCell: UICollectionViewCell {
    var data: StoreInfo? {
        didSet{
            guard let data = data else { return }
            storeImg1.image = data.image1
            storeImg2.image = data.image2
            storeImg3.image = data.image3
            
            storeNameT.text = data.storeName
            ratingT.text = data.rate
            orderFeeT.text = data.orderFee
            distanceT.text = data.distance
            feeT.text = data.fee
        }
    }
        
    let storeImg1:UIImageView = {
        let imageView=UIImageView()
        imageView.image = #imageLiteral(resourceName: "japanese")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        
        imageView.layer.cornerRadius = 20
        imageView.layer.maskedCorners = CACornerMask.layerMinXMinYCorner
        return imageView
    }()

    let storeImg2:UIImageView = {
        let imageView=UIImageView()
        imageView.image = #imageLiteral(resourceName: "japanese")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.layer.maskedCorners = CACornerMask.layerMaxXMinYCorner
        
        return imageView
    }()
    
    let storeImg3:UIImageView = {
        let imageView=UIImageView()
        imageView.image = #imageLiteral(resourceName: "japanese")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        
        return imageView
    }()


    let storeNameT: UITextView = {
        let label = UITextView()
        label.text = "TEST"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let ratingT: UITextView = {
        let textV = UITextView()
        textV.text = "TEST"
        textV.translatesAutoresizingMaskIntoConstraints = false
        textV.font = UIFont.systemFont(ofSize: 14)
        return textV
    }()
    
    let orderFeeT: UITextView = {
        let textV = UITextView()
        textV.text = "TEST"
        textV.translatesAutoresizingMaskIntoConstraints = false
        textV.font = UIFont.systemFont(ofSize: 14)
        
        textV.layer.cornerRadius = 20
        textV.layer.maskedCorners = CACornerMask.layerMinXMaxYCorner
        return textV
    }()
    
    let distanceT: UITextView = {
        let textV = UITextView()
        textV.text = "TEST"
        textV.translatesAutoresizingMaskIntoConstraints = false
        textV.font = UIFont.systemFont(ofSize: 14)
        return textV
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
        
        
    override init(frame:CGRect){
        super.init(frame:frame)
        
        contentView.layer.cornerRadius = 20
        
        contentView.addSubview(storeImg1)
        contentView.addSubview(storeImg2)
        contentView.addSubview(storeImg3)
        contentView.addSubview(storeNameT)
        contentView.addSubview(ratingT)
        contentView.addSubview(orderFeeT)
        contentView.addSubview(distanceT)
        contentView.addSubview(feeT)

        storeImg1.topAnchor.constraint(equalTo: contentView.topAnchor).isActive=true
        storeImg1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
        storeImg1.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
        storeImg1.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive=true
        storeImg1.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.7).isActive = true
        storeImg1.heightAnchor.constraint(equalTo:contentView.heightAnchor,multiplier: 0.7).isActive = true

        storeImg2.topAnchor.constraint(equalTo: contentView.topAnchor).isActive=true
        storeImg2.leadingAnchor.constraint(equalTo: storeImg1.trailingAnchor).isActive=true
        storeImg2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
        storeImg2.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.3).isActive = true
        storeImg2.heightAnchor.constraint(equalTo: storeImg1.heightAnchor, multiplier: 0.5).isActive = true
        
        storeImg3.topAnchor.constraint(equalTo: storeImg2.bottomAnchor).isActive=true
        storeImg3.leadingAnchor.constraint(equalTo: storeImg2.leadingAnchor).isActive=true
        storeImg3.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
        storeImg3.widthAnchor.constraint(equalTo: storeImg2.widthAnchor).isActive = true
        storeImg3.heightAnchor.constraint(equalTo: storeImg2.heightAnchor).isActive = true

        storeNameT.topAnchor.constraint(equalTo: storeImg1.bottomAnchor).isActive=true
        storeNameT.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
        storeNameT.widthAnchor.constraint(equalToConstant: 180).isActive = true
        storeNameT.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.15).isActive = true
      
        ratingT.topAnchor.constraint(equalTo: storeImg1.bottomAnchor).isActive=true
        ratingT.leadingAnchor.constraint(equalTo: storeNameT.trailingAnchor).isActive=true
        ratingT.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
        ratingT.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.15).isActive = true

        orderFeeT.topAnchor.constraint(equalTo: storeNameT.bottomAnchor).isActive=true
        orderFeeT.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
        orderFeeT.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive=true
        orderFeeT.widthAnchor.constraint(equalToConstant: 100).isActive = true

        distanceT.topAnchor.constraint(equalTo: storeNameT.bottomAnchor).isActive=true
        distanceT.leadingAnchor.constraint(equalTo: orderFeeT.trailingAnchor).isActive=true
        distanceT.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive=true
        distanceT.widthAnchor.constraint(equalToConstant: 100).isActive = true

        feeT.topAnchor.constraint(equalTo: storeNameT.bottomAnchor).isActive=true
        feeT.leadingAnchor.constraint(equalTo: distanceT.trailingAnchor).isActive=true
        feeT.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
        feeT.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive=true
            
    }
        
    required init?(coder aDecoder : NSCoder) {
        super.init(coder : aDecoder)
    }
}
