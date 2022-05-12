//
//  MainHeader.swift
//  Baemin1
//
//  Created by 마경미 on 2022/04/22.
//

import UIKit

class MainHeader: UICollectionReusableView {

    static let mainHeaderId = "mainHeader"
    
    @IBOutlet var baemin1B: UIButton!
    @IBOutlet var baedalB: UIButton!
    @IBOutlet var pojangB: UIButton!
    @IBOutlet var BmartB: UIButton!
    @IBOutlet var baeminStoreB: UIButton!
    @IBOutlet var liveB: UIButton!
    @IBOutlet var presentB: UIButton!
    @IBOutlet var nationFoodB: UIButton!

    @IBOutlet var listButton: [UIButton]!
    
    @IBAction func clickButton(_ sender: UIButton) {
        for value in listButton {
            value.isSelected = false
            value.setTitleColor(.lightGray, for: .normal)
            value.backgroundColor = .white
        }
 
        sender.isSelected = true
        sender.layer.cornerRadius = 15
        if #available(iOS 15.0, *) {
            sender.backgroundColor = .systemMint
        } else {
            // Fallback on earlier versions
        }
        sender.setTitleColor(.white, for: .selected)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
