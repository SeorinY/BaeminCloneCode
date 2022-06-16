//
//  BestCell.swift
//  Baemin1
//
//  Created by 마경미 on 2022/04/21.
//

import UIKit

struct BestInfo{
    var image:UIImage
    var storeName:String
    var fee:String
    var rate:String
    var time:String
}

class BestCell: UICollectionViewCell {
    
    static let bestCellId = "bestCell"
    
    let storeImg:UIImageView = {
          let imageView=UIImageView()
          imageView.translatesAutoresizingMaskIntoConstraints = false
          imageView.contentMode = .scaleAspectFit
          imageView.layer.cornerRadius = 10
        imageView.layer.borderWidth = 0.1
          imageView.clipsToBounds = true
          return imageView
      }()
      
      let storeNameL: UILabel = {
          let label = UILabel()
          label.translatesAutoresizingMaskIntoConstraints = false
          label.font = UIFont.boldSystemFont(ofSize: 12)
          return label
      }()
      
      let feeL: UILabel = {
          let label = UILabel()
          label.translatesAutoresizingMaskIntoConstraints = false
          label.font = UIFont.systemFont(ofSize: 12)
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
    
    func setData(with data: BestInfo) {
        storeImg.image = data.image
        storeNameL.text = data.storeName
        feeL.text = data.fee
        rateB.setTitle(data.rate, for: .normal)
        timeB.setTitle(data.time, for: .normal)
    }
    
    override init(frame:CGRect){
        super.init(frame:frame)
        contentView.addSubview(storeImg)
        contentView.addSubview(storeNameL)
        contentView.addSubview(feeL)
        contentView.addSubview(rateB)
        contentView.addSubview(timeB)
        
        storeImg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive=true
        storeImg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
        storeImg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
        storeImg.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        storeImg.heightAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true

        storeNameL.topAnchor.constraint(equalTo: storeImg.bottomAnchor, constant: 5).isActive=true
        storeNameL.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
        storeNameL.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        feeL.topAnchor.constraint(equalTo: storeNameL.bottomAnchor,constant: 5).isActive=true
        feeL.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
        feeL.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
        feeL.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        rateB.topAnchor.constraint(equalTo: storeImg.bottomAnchor, constant: 5).isActive=true
        rateB.leadingAnchor.constraint(equalTo:storeNameL.trailingAnchor).isActive=true
        rateB.trailingAnchor.constraint(equalTo: storeImg.trailingAnchor).isActive=true
        rateB.widthAnchor.constraint(equalToConstant: 50).isActive = true
        rateB.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        timeB.topAnchor.constraint(equalTo: feeL.bottomAnchor,constant: 5).isActive=true
        timeB.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
        timeB.widthAnchor.constraint(equalToConstant: 100).isActive = true
        timeB.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    required init?(coder aDecoder : NSCoder) {
        super.init(coder : aDecoder)
    }
}

