//
//  ViewController.swift
//  Baemin1
//
//  Created by Mac Book Pro on 2022/04/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainCV: UICollectionView! {
        didSet {
            mainCV.collectionViewLayout = createLayout()
        }
    }
    
    override func viewDidLoad() {
        self.mainCV.register(Baemin1Cell.self, forCellWithReuseIdentifier: Baemin1Cell.baemin1CellId)
    }
    
    func createLayout() -> UICollectionViewCompositionalLayout {
        let size = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: size)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: size, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .paging
        section.boundarySupplementaryItems = [
            .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .topLeading)
        ]
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "baemin1Cell", for: indexPath) as?
                UICollectionViewCell else {
            return UICollectionViewCell()
        }
        if indexPath.item == 0 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:Baemin1Cell.baemin1CellId, for: indexPath) as?
                    Baemin1Cell else {
                return UICollectionViewCell()
            }
            return cell
        }
        else if indexPath.item % 2 == 0 {
            cell.backgroundColor = .systemPink
        } else {
            cell.backgroundColor = .systemBlue
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
                                                                               withReuseIdentifier: MainHeader.mainHeaderId, for: indexPath) as? MainHeader else {
            return UICollectionReusableView()
        }
        return headerView
    }
    
}
