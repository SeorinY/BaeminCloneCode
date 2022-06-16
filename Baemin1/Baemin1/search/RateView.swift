//
//  rateView.swift
//  Baemin1
//
//  Created by 마경미 on 2022/06/16.
//

import UIKit

class RateView: UIView {

    let rateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let storeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let changeImage: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    func setData(with data: BestSearchInfo) {
        rateLabel.text = String(data.rate)
        storeLabel.text = data.name
        if data.change == 1 {
            changeImage.image = UIImage(systemName: "arrowtriangle.up.fill")
        } else if data.change == 0 {
            changeImage.image = UIImage(systemName: "line.3.horizontal")
        } else {
            changeImage.image = UIImage(systemName: "arrowtriangle.down.fill")
        }
    }
    
    func setLayout() {
        rateLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        rateLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        rateLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        rateLabel.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        storeLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        storeLabel.leadingAnchor.constraint(equalTo: rateLabel.trailingAnchor).isActive = true
        storeLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        changeImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        changeImage.leadingAnchor.constraint(equalTo: storeLabel.trailingAnchor).isActive = true
        changeImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        changeImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        changeImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        addSubview(rateLabel)
        addSubview(storeLabel)
        addSubview(changeImage)
        setLayout()
    }
}
