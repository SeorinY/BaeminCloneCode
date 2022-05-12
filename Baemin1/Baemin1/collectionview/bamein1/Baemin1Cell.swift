//
//  baemin1Cell.swift
//  Baemin1
//
//  Created by 마경미 on 2022/04/21.
//

import UIKit

class Baemin1Cell: UICollectionViewCell {
    static let baemin1CellId = "baemin1Cell"

    var baemin1CV: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        return collectionView
    }()
    
    
    let bannerData = [ #imageLiteral(resourceName: "banner2"), #imageLiteral(resourceName: "banner6"), #imageLiteral(resourceName: "banner8"), #imageLiteral(resourceName: "banner3")]
    
    let menuData = [
        MenuInfo(name:"1인분",image: #imageLiteral(resourceName: "one")),
        MenuInfo(name:"돈까스,회,일식",image: #imageLiteral(resourceName: "japanese")),
        MenuInfo(name:"중식",image: #imageLiteral(resourceName: "chinese")),
        MenuInfo(name:"치킨",image: #imageLiteral(resourceName: "chicken")),
        MenuInfo(name:"백반,죽,국수",image: #imageLiteral(resourceName: "rice")),
        MenuInfo(name:"맛집랭킹", image: #imageLiteral(resourceName: "rank") ),
        MenuInfo(name:"카페,디저트", image: #imageLiteral(resourceName: "dessert")),
        MenuInfo(name:"분식",image: #imageLiteral(resourceName: "snack")),
        MenuInfo(name:"찜,탕,찌개",image: #imageLiteral(resourceName: "soup")),
        MenuInfo(name:"피자",image: #imageLiteral(resourceName: "pizza")),
        MenuInfo(name:"양식",image: #imageLiteral(resourceName: "italian") ),
        MenuInfo(name:"고기,구이", image: #imageLiteral(resourceName: "meat")),
        MenuInfo(name:"족발,보쌈",image: #imageLiteral(resourceName: "pig")),
        MenuInfo(name:"아시안",image: #imageLiteral(resourceName: "chinese")),
        MenuInfo(name:"버거",image: #imageLiteral(resourceName: "burger")),
    ]
    
    let bestData = [
        BestInfo(image: #imageLiteral(resourceName: "뚜레쥬르"), storeName: "뚜레쥬르", fee: "배달팁 3,000원", rate: "5.0", time : "29~30분"),
        BestInfo(image: #imageLiteral(resourceName: "이디야"), storeName: "이디야", fee: "배달팁 0원~2,000원", rate: "4.9", time: "19~19분"),
        BestInfo(image: #imageLiteral(resourceName: "빽다방"), storeName: "빽다방", fee: "배달팁 2,000원~2,900원", rate: "5.0", time: "20~30분"),
        BestInfo(image: #imageLiteral(resourceName: "BHC치킨"), storeName: "BHC치킨", fee: "배달팁 0원~3,000원", rate: "4.9", time: "21~31분"),
    ]
    
    let storeData = [
        StoreInfo(image1: #imageLiteral(resourceName: "채선당1"), image2: #imageLiteral(resourceName: "채선당2"), image3: #imageLiteral(resourceName: "채선당3"), storeName: "채선당", rate: "4.9", orderFee: "26,000원", time: "11~21분", distance: "1.2km", fee: "무료"),
        StoreInfo(image1: #imageLiteral(resourceName: "던모스1"), image2: #imageLiteral(resourceName: "던모스2"), image3: #imageLiteral(resourceName: "던모스3"), storeName: "던모스", rate: "5.0", orderFee: "15,000원", time: "20~30분", distance: "0.5km", fee: "무료"),
        StoreInfo(image1: #imageLiteral(resourceName: "배떡1-1"),image2: #imageLiteral(resourceName: "배떡 2"), image3: #imageLiteral(resourceName: "배떡3-1"), storeName: "배떡 로제떡볶이 공릉점", rate: "4.9", orderFee: "14,000원", time: "18~28분", distance: "0.3km", fee: "3,000원"),
        StoreInfo(image1: #imageLiteral(resourceName: "서오릉 피자1"), image2: #imageLiteral(resourceName: "서오릉 피자2"), image3: #imageLiteral(resourceName: "서오릉 피자3"), storeName: "서오릉피자 공릉점", rate: "5.0", orderFee: "14,000원", time: "16~26분", distance: "0.4km", fee: "1,000원"),
    ]
    
    func configureCollectionView() {
        baemin1CV.register(BannerCell.self, forCellWithReuseIdentifier: BannerCell.bannerCellId)
        baemin1CV.register(MenuCell.self, forCellWithReuseIdentifier: MenuCell.menuCellId)
        baemin1CV.register(BestCell.self, forCellWithReuseIdentifier: BestCell.bestCellId)
        baemin1CV.register(StoreCell.self, forCellWithReuseIdentifier: StoreCell.storeCellId)
        baemin1CV.delegate = self
        baemin1CV.dataSource = self
        baemin1CV.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            baemin1CV.topAnchor.constraint(equalTo: self.topAnchor),
            baemin1CV.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            baemin1CV.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            baemin1CV.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func createLayout() -> UICollectionViewCompositionalLayout{
         return UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in
             
             if sectionNumber == 0 {
                 let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                 //item.contentInsets.trailing = 2
                 item.contentInsets.bottom = 8
                     
                 let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(150)), subitems: [item])
                     
                 let section = NSCollectionLayoutSection(group: group)
                 section.orthogonalScrollingBehavior = .paging

                 return section
             } else if sectionNumber == 1 {
                 
                 let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(0.2), heightDimension: .absolute(60)))
                 item.contentInsets.trailing = 2
                 item.contentInsets.bottom = 4
                 let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(250)), subitems: [item])
                 //group.contentInsets.leading = 16
                 
                 let section = NSCollectionLayoutSection(group: group)
                 section.contentInsets.leading = 4
                 section.contentInsets.trailing = 4
                 section.contentInsets.bottom = 16
    
                 return section
             } else if sectionNumber == 2 {
                 let item = NSCollectionLayoutItem.init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                 item.contentInsets.trailing = 10
                 
                 let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(0.42), heightDimension: .absolute(230)), subitems: [item])
                 
                 let section = NSCollectionLayoutSection(group: group)
                 section.orthogonalScrollingBehavior = .continuous
                 section.contentInsets.leading = 16
                 section.contentInsets.bottom = 20

                 section.boundarySupplementaryItems = [
                     .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)),elementKind: BestHeader.bestHeaderId,alignment: . topLeading)
                 ]
                 return section
             } else {
                 
                 let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                 item.contentInsets.leading = 16
                 item.contentInsets.trailing = 16
                 item.contentInsets.bottom = 25
                     
                 let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(250)), subitems: [item])
                               
                 let section = NSCollectionLayoutSection(group: group)
                 
                 let pagingheader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)),elementKind: StoreHeader.storeHeaderId,alignment: . topLeading)
                 pagingheader.pinToVisibleBounds = true
                 section.boundarySupplementaryItems = [
                     pagingheader
                 ]
                 return section
             }
         }
    }
    
    override init(frame:CGRect){
        super.init(frame:frame)
        baemin1CV.collectionViewLayout = createLayout()
        self.addSubview(baemin1CV)
        configureCollectionView()
        baemin1CV.register(BestHeader.self,forSupplementaryViewOfKind:BestHeader.bestHeaderId,withReuseIdentifier:"BheaderId")
        baemin1CV.register(StoreHeader.self, forSupplementaryViewOfKind:StoreHeader.storeHeaderId,withReuseIdentifier:"SheaderId")
    }
    
    required init?(coder aDecoder : NSCoder) {
        super.init(coder : aDecoder)
    }
}

extension Baemin1Cell: UICollectionViewDelegate, UICollectionViewDataSource {

     func numberOfSections(in collectionView: UICollectionView) -> Int {

        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if indexPath.section == 2{
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "BheaderId", for: indexPath) as! BestHeader
            return header
        } else if indexPath.section == 3 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "SheaderId", for: indexPath) as! StoreHeader
            return header
        } else {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerId", for: indexPath)
            return header
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return bannerData.count
        } else if section == 1 {
            return menuData.count
        } else if section == 2 {
            return bestData.count
        } else {
            return storeData.count
        }
    }
    
    func collectionView(_ collectionView:UICollectionView,cellForItemAt indexPath:IndexPath)->UICollectionViewCell{
        if indexPath.section == 0 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:BannerCell.bannerCellId,for:indexPath) as? BannerCell else { return UICollectionViewCell() }
            
            cell.setData(image: bannerData[indexPath.row])
            return cell
        } else if indexPath.section == 1 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MenuCell.menuCellId, for: indexPath) as? MenuCell else { return UICollectionViewCell()}
            
            cell.setData(with: menuData[indexPath.row])
            return cell
        } else if indexPath.section == 2 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BestCell.bestCellId, for: indexPath) as? BestCell else { return UICollectionViewCell() }

            cell.setData(with: bestData[indexPath.row])
            return cell
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoreCell.storeCellId, for: indexPath) as? StoreCell else { return UICollectionViewCell() }
            
            cell.setData(with: storeData[indexPath.row])
            cell.backgroundColor = .white
            cell.layer.cornerRadius = 20
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOffset = CGSize(width: 1, height: 1)
            cell.layer.shadowOpacity = 0.3
            return cell
        }
    }
}

