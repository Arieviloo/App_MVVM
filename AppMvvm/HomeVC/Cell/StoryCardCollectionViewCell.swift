//
//  StoryCardCollectionViewCell.swift
//  AppMvvm
//
//  Created by Jadiê on 19/04/23.
//

import UIKit

class StoryCardCollectionViewCell: UICollectionViewCell {
    
    static let identifier:String = "StoryCardCollectionViewCell"
    
    private var screen: StoryCardColletctionViewCellScreen = StoryCardColletctionViewCellScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        screen.configProtocolsCollectionView(delegate: self, dataSource: self)
        configScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreen() {
        screen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(screen)
        screen.pin(to: contentView)
    }
}

extension StoryCardCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}
