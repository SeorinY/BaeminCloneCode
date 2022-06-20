//
//  BestCollectionViewCell.swift
//  Baemin1
//
//  Created by 마경미 on 2022/06/20.
//
import UIKit
import Foundation

class BestCollectionViewCell {
    
    let bestData = [
        BestInfo(image: #imageLiteral(resourceName: "뚜레쥬르"), storeName: "뚜레쥬르", fee: "배달팁 3,000원", rate: "5.0", time : "29~30분"),
        BestInfo(image: #imageLiteral(resourceName: "이디야"), storeName: "이디야", fee: "배달팁 0원~2,000원", rate: "4.9", time: "19~19분"),
        BestInfo(image: #imageLiteral(resourceName: "빽다방"), storeName: "빽다방", fee: "배달팁 2,000원~2,900원", rate: "5.0", time: "20~30분"),
        BestInfo(image: #imageLiteral(resourceName: "BHC치킨"), storeName: "BHC치킨", fee: "배달팁 0원~3,000원", rate: "4.9", time: "21~31분"),
    ]
    
   public func makeSection() -> NSCollectionLayoutSection {
       let item = NSCollectionLayoutItem.init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
       item.contentInsets.trailing = 10

       let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(0.42), heightDimension: .absolute(210)), subitems: [item])

       let section = NSCollectionLayoutSection(group: group)
       section.orthogonalScrollingBehavior = .continuous
       section.contentInsets.leading = 16
       section.contentInsets.bottom = 20

       section.boundarySupplementaryItems = [
           .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)),elementKind: BestHeader.bestHeaderId,alignment: . topLeading)
       ]
       return section
    }
    
    func makeCell(collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BestCell.bestCellId, for: indexPath) as? BestCell else { return UICollectionViewCell() }

        cell.setData(with: bestData[indexPath.row])
        return cell
    }
    
    func makeHeader(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "BheaderId", for: indexPath) as! BestHeader
        return header
    }
}
