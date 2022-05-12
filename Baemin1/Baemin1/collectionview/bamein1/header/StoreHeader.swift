//
//  StoreHeader.swift
//  Baemin1
//
//  Created by 마경미 on 2022/05/12.
//

import UIKit

class StoreHeader: UICollectionReusableView {
    static let storeHeaderId = "storeHeaderId"
    let texts = ["배달 빠른 순","배달팁 낮은 순", "기본순", "주문 많은 순", "별점 높은 순", "가까운 순", "찜 많은 순", "최소 주문 금액"]
    var buttonList: [UIButton] = []
    
    private let contentScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .white
        scrollView.showsVerticalScrollIndicator = false
        
        return scrollView
    }()
    
    var stackView: UIStackView = { //arrangedSubviews <- 안에 있는 값은 클래스에서 불러온값
        let stackV = UIStackView()
        stackV.translatesAutoresizingMaskIntoConstraints = false
        stackV.axis = .horizontal
        stackV.spacing = 15
        stackV.distribution = .equalSpacing
        return stackV
    }()
    
    func addButtons() {
        for value in texts {
            let button = UIButton()
            button.setTitle(value, for: .normal)
            button.sizeToFit()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
            button.setTitleColor(.systemGray, for: .normal)
            button.setTitleColor(.brown, for: .selected)
            button.backgroundColor = .white
            button.contentEdgeInsets.left = 10
            button.contentEdgeInsets.right = 10
            button.layer.cornerRadius = 15
            if value == texts[0] {
                let color = UIColor(hexString: "F5F5DC")
                button.isSelected = true
                button.backgroundColor = color
            }
            buttonList.append(button)
            stackView.addArrangedSubview(button)
        }
    }
    
    func addButtonEvents() {
        for value in buttonList {
            value.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        }
    }
    
    @objc func clickButton(_ sender: UIButton) {
        for value in buttonList {
            value.isSelected = false
            value.backgroundColor = .white
        }
        
        sender.isSelected = true
        if #available(iOS 15.0, *) {
            let color = UIColor(hexString: "F5F5DC")
            sender.backgroundColor = color
        } else {
            
        }
    }
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        
        addSubview(contentScrollView)
        contentScrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentScrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        contentScrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        contentScrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        contentScrollView.addSubview(stackView)
        
        stackView.leadingAnchor.constraint(equalTo: contentScrollView.leadingAnchor,constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentScrollView.trailingAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: contentScrollView.centerYAnchor).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 30).isActive = true

        addButtons()
        addButtonEvents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
