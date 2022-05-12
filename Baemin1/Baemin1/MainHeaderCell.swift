//
//  MainHeaderCell.swift
//  Baemin1
//
//  Created by 마경미 on 2022/04/22.
//

import UIKit

class MainHeaderCell: UICollectionViewCell {
    @IBOutlet var tabL: UILabel!
    static let mainHeaderCellId = "mainHeaderCell"

    override var isSelected: Bool {
        didSet {
          if isSelected {
            let backgroundColor: UIColor = UIColor(red: 236/255, green: 230/255, blue: 204/255, alpha: 1)
            contentView.backgroundColor = backgroundColor
            tabL.textColor = .systemBrown
            tabL.font = .systemFont(ofSize: 14, weight: .bold)
          } else {
            contentView.backgroundColor = .white
            tabL.textColor = .systemGray
            tabL.font = .systemFont(ofSize: 14, weight: .regular)
          }
        }
      }
    func setData(with text: String) {
        tabL.text = text
        tabL.backgroundColor = .blue
    }
    override init(frame:CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        tabL.sizeToFit()
        tabL.layer.masksToBounds = true
        tabL.layer.cornerRadius = tabL.frame.size.height / 2
    }
}
