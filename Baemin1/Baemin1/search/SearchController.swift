//
//  SearchController.swift
//  Baemin1
//
//  Created by 마경미 on 2022/06/13.
//

import UIKit

class SearchController: UIViewController {

    @IBOutlet var searchBestCV: UICollectionView! {
        didSet {
            searchBestCV.collectionViewLayout = createLayout()
        }
    }
    @IBOutlet var bestTo5: UITableView!
    @IBOutlet var bestTo10: UITableView!
    let instanceOfBest: BestCollectionViewCell = BestCollectionViewCell()
    
    let searchRateDataTo5 = [
        BestSearchInfo(rate: 1, name: "교촌치킨", change: 0),
        BestSearchInfo(rate: 2, name: "치킨", change: 1),
        BestSearchInfo(rate: 3, name: "굽네치킨", change: 1),
        BestSearchInfo(rate: 4, name: "족발", change: 1),
        BestSearchInfo(rate: 5, name: "bbq", change: 1),
    ]
    
    let searchRateDataTo10 = [
        BestSearchInfo(rate: 6, name: "찜닭", change: 1),
        BestSearchInfo(rate: 7, name: "닭발", change: -1),
        BestSearchInfo(rate: 8, name: "보쌈", change: 1),
        BestSearchInfo(rate: 9, name: "동대문엽기떡볶이", change: 1),
        BestSearchInfo(rate: 10, name: "지코바", change: 1)
    ]
    
    func createLayout() -> UICollectionViewCompositionalLayout {
        let layout = UICollectionViewCompositionalLayout(section: self.instanceOfBest.makeSection())
        return layout
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchBestCV.register(BestHeader.self,forSupplementaryViewOfKind:BestHeader.bestHeaderId,withReuseIdentifier:"BheaderId")
    }

}

extension SearchController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SearchTableCell.searchTableCellId)! as! SearchTableCell

        if tableView == bestTo5 {
            cell.setData(with:searchRateDataTo5[indexPath.row])
        } else {
            cell.setData(with: searchRateDataTo10[indexPath.row])
        }
        return cell
    }
    
}

extension SearchController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.instanceOfBest.bestData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return self.instanceOfBest.makeCell(collectionView: collectionView, cellForItemAt: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        return self.instanceOfBest.makeHeader(collectionView: collectionView, viewForSupplementaryElementOfKind: kind, at: indexPath)
    }
}
