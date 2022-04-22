////
////  BestCell.swift
////  Baemin1
////
////  Created by 마경미 on 2022/04/21.
////
//
//import UIKit
//
//struct BestInfo{
//  var image:UIImage
//  var storeName:String
//  var fee:String
//  var time:String
//}
//
//class BestCell: UICollectionViewCell {
//
//  var data: BestInfo? {
//      didSet{
//          guard let data = data else { return }
//          storeNameL.text = data.storeName
//          feeT.text = data.fee
//          timeT.text = data.time
//          storeImg.image = data.image
//      }
//  }
//
//  let storeImg:UIImageView = {
//      let imageView=UIImageView()
//      imageView.image = #imageLiteral(resourceName: "japanese")
//      imageView.translatesAutoresizingMaskIntoConstraints = false
//      imageView.contentMode = .scaleAspectFit
//      imageView.layer.cornerRadius = 20
//
//      imageView.clipsToBounds = true
//
//      return imageView
//  }()
//
//  let storeNameL: UILabel = {
//      let label = UILabel()
//      label.text = "TEST"
//      label.translatesAutoresizingMaskIntoConstraints = false
//      label.font = UIFont.systemFont(ofSize: 16)
//      return label
//  }()
//
//  let feeT: UITextView = {
//      let textV = UITextView()
//      textV.text = "TEST"
//      textV.translatesAutoresizingMaskIntoConstraints = false
//      textV.font = UIFont.systemFont(ofSize: 14)
//      return textV
//  }()
//
//  let timeT: UITextView = {
//      let textV = UITextView()
//      textV.text = "TEST"
//      textV.translatesAutoresizingMaskIntoConstraints = false
//      textV.font = UIFont.systemFont(ofSize: 14)
//      textV.layer.cornerRadius = 20
//
//      let color2 = UIColor(hexString: "#88dbe3")
//      textV.layer.borderWidth = 3
//      textV.layer.borderColor = color2.cgColor
//
//      let color = UIColor(hexString: "#ccecf0")
//      textV.backgroundColor = color
//      return textV
//  }()
//
//  override init(frame:CGRect){
//      super.init(frame:frame)
//
//      contentView.addSubview(storeImg)
//      contentView.addSubview(storeNameL)
//      contentView.addSubview(feeT)
//      contentView.addSubview(timeT)
//
//      storeImg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive=true
//      storeImg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
//      storeImg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
//      storeImg.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
//      storeImg.heightAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
//
//      storeNameL.topAnchor.constraint(equalTo: storeImg.bottomAnchor).isActive=true
//      storeNameL.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
//      storeNameL.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive=true
//      storeNameL.heightAnchor.constraint(equalToConstant: 20).isActive = true
//
//      feeT.topAnchor.constraint(equalTo: storeNameL.bottomAnchor).isActive=true
//      feeT.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
//      feeT.trailingAnchor.constraint(equalTo: storeImg.trailingAnchor).isActive=true
//      feeT.heightAnchor.constraint(equalToConstant: 35).isActive = true
//
//      timeT.topAnchor.constraint(equalTo: feeT.bottomAnchor).isActive=true
//      timeT.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive=true
//      timeT.widthAnchor.constraint(equalToConstant: 100).isActive = true
//      timeT.heightAnchor.constraint(equalToConstant: 30).isActive = true
//  }
//
//  required init?(coder aDecoder : NSCoder) {
//      super.init(coder : aDecoder)
//  }
//}
//
