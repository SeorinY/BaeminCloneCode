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
          imageView.layer.cornerRadius = 20
          imageView.clipsToBounds = true
          return imageView
      }()
      
      let storeNameL: UILabel = {
          let label = UILabel()
          label.translatesAutoresizingMaskIntoConstraints = false
          label.font = UIFont.systemFont(ofSize: 16)
          return label
      }()
      
      let feeL: UILabel = {
          let label = UILabel()
          label.translatesAutoresizingMaskIntoConstraints = false
          label.font = UIFont.systemFont(ofSize: 14)
          return label
      }()
    
    let rateL: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
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
    
    func setData(with data: BestInfo) {
        storeImg.image = data.image
        storeNameL.text = data.storeName
        feeL.text = data.fee
        rateL.text = data.rate
        timeB.setTitle(data.time, for: .normal)
    }
    
    override init(frame:CGRect){
        super.init(frame:frame)
        
    }
    
    required init?(coder aDecoder : NSCoder) {
        super.init(coder : aDecoder)
    }
}

