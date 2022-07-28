//
//  FocusViewController.swift
//  HeadSpaceFocus
//
//  Created by 김지수 on 2022/07/29.
//

import UIKit

class FocusViewController: UIViewController {

    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var curated: Bool = false
    
    var items: [Focus] = Focus.list
    enum Section {
        case main
    }
    
    typealias Item = Focus
    var datasource: UICollectionViewDiffableDataSource<Section, Item>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshButton.layer.cornerRadius = 10
        
        // Presentation, Data, Layout
        
        datasource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView, cellProvider: { collectionView, indexPath, item in
            
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FocusCell", for: indexPath) as? FocusCell else {
                return nil
            }
            cell.configure(item)
            return cell
        })
        
        // Snapshot
        setSnapshot()

//        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
//        snapshot.appendSections([.main])
//        snapshot.appendItems(items, toSection: .main)
//        datasource.apply(snapshot)

        collectionView.collectionViewLayout = layout()
        
        updateButtonTitle()
        
    }
    
    private func layout() -> UICollectionViewCompositionalLayout {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)) // 콘텐츠에 따라 변경이 될 수 있다
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)
        section.interGroupSpacing = 10
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }
    
    func updateButtonTitle() {
        let title = curated ? "See All" : "See Recommendation"
        refreshButton.setTitle(title, for: .normal)
    }
    
    func setSnapshot() {
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections([.main])
        snapshot.appendItems(items, toSection: .main)
        datasource.apply(snapshot)
    }
    
    @IBAction func refreshButtonTapped(_ sender: Any) {
        curated.toggle() // true와 false Switch
        
        self.items = curated ? Focus.recommendations : Focus.list
        
//        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
//        snapshot.appendSections([.main])
//        snapshot.appendItems(items, toSection: .main)
//        datasource.apply(snapshot)
        
        setSnapshot()
        updateButtonTitle()

    }
}
