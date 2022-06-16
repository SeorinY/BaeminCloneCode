//
//  SearchTableCellTableViewCell.swift
//  Baemin1
//
//  Created by 마경미 on 2022/06/16.
//

import UIKit

struct BestSearchInfo {
    var rate: Int
    var name: String
    var change: Int
}

class SearchTableCell: UITableViewCell {
    
    static let searchTableCellId = "searchTableCell"
    
    func setData(with data: BestSearchInfo) {
        let rateView: RateView = {
            let view = RateView()
            view.setData(with: data)
            return view
        }()
        
        addSubview(rateView)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
