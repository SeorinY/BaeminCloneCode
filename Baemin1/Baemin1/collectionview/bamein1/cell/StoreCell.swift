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
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    let rateB: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font =  UIFont.systemFont(ofSize: 12)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.setImage(UIImage(systemName: "star.fill" ), for: .normal)
        button.tintColor = .systemYellow
        return button
    }()
    
    let orderFeeL: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        label.layer.cornerRadius = 20
        return label
    }()
    
    let distanceL: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let feeT: UITextView = {
        let textV = UITextView()
        textV.text = "TEST"
        textV.translatesAutoresizingMaskIntoConstraints = false
        textV.font = UIFont.systemFont(ofSize: 12)
        
        textV.layer.cornerRadius = 20
        textV.layer.maskedCorners = CACornerMask.layerMaxXMaxYCorner
        return textV
    }()
    
    let feeL: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        label.layer.cornerRadius = 20
        label.layer.maskedCorners = CACornerMask.layerMinXMaxYCorner
        return label
    }()
    
    let timeB: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font =  UIFont.systemFont(ofSize: 12)
        let color2 = UIColor(hexString: "#88dbe3")
        button.layer.borderWidth = 1
        button.layer.borderColor = color2.cgColor
        let color = UIColor(hexString: "#ccecf0")
        button.backgroundColor = color
        button.setTitleColor(.black, for: .normal)
        button.setImage(UIImage(named: "baemin1Logo.png"), for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    func setData(with data: StoreInfo) {
        storeImg1.image = data.image1
        storeImg2.image = data.image2
        storeImg3.image = data.image3
        storeNameL.text = data.storeName
        rateB.setTitle(data.rate, for: .normal)
        timeB.setTitle(data.time, for: .normal)
        orderFeeL.text = data.orderFee
        distanceL.text = data.distance
        feeL.text = data.fee
    }
        
    override init(frame:CGRect){
        super.init(frame:frame)
        contentView.addSubview(storeImg1)
        contentView.addSubview(storeImg2)
        contentView.addSubview(storeImg3)
        contentView.addSubview(storeNameL)
        contentView.addSubview(rateB)
        contentView.addSubview(timeB)
        contentView.addSubview(orderFeeL)
        contentView.addSubview(distanceL)
        contentView.addSubview(feeL)
        
        storeImg1.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        storeImg1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        storeImg1.heightAnchor.constraint(equalToConstant: 163).isActive = true
        
        storeImg2.widthAnchor.constraint(equalToConstant: 80).isActive = true
        storeImg2.heightAnchor.constraint(equalToConstant: 80).isActive = true
        storeImg2.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        storeImg2.leadingAnchor.constraint(equalTo: storeImg1.trailingAnchor,constant: 3).isActive = true
        storeImg2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        
        storeImg3.widthAnchor.constraint(equalToConstant: 80).isActive = true
        storeImg3.heightAnchor.constraint(equalToConstant: 80).isActive = true
        storeImg3.topAnchor.constraint(equalTo: storeImg2.bottomAnchor,constant: 3).isActive = true
        storeImg3.leadingAnchor.constraint(equalTo: storeImg1.trailingAnchor,constant: 3).isActive = true
        storeImg3.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        
        storeNameL.topAnchor.constraint(equalTo: storeImg1.bottomAnchor,constant: 10).isActive = true
        storeNameL.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10).isActive = true
        storeNameL.heightAnchor.constraint(equalToConstant: 15).isActive = true

        
        rateB.topAnchor.constraint(equalTo: storeImg1.bottomAnchor,constant: 10).isActive = true
        rateB.leadingAnchor.constraint(equalTo: storeNameL.trailingAnchor,constant: 3).isActive = true
        rateB.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        timeB.topAnchor.constraint(equalTo: storeImg1.bottomAnchor,constant: 10).isActive = true
        timeB.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -10).isActive = true
        timeB.heightAnchor.constraint(equalToConstant: 20).isActive = true
        timeB.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        orderFeeL.topAnchor.constraint(equalTo: storeNameL.bottomAnchor,constant: 5).isActive = true
        orderFeeL.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10).isActive = true

        orderFeeL.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        feeL.topAnchor.constraint(equalTo: storeNameL.bottomAnchor,constant: 5).isActive = true
        feeL.leadingAnchor.constraint(equalTo: orderFeeL.trailingAnchor,constant: 3).isActive = true
        feeL.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        distanceL.topAnchor.constraint(equalTo: storeNameL.bottomAnchor,constant: 5).isActive = true
        distanceL.leadingAnchor.constraint(equalTo: feeL.trailingAnchor,constant: 3).isActive = true

        distanceL.heightAnchor.constraint(equalToConstant: 15).isActive = true
    }
        
    required init?(coder aDecoder : NSCoder) {
        super.init(coder : aDecoder)
    }
}
