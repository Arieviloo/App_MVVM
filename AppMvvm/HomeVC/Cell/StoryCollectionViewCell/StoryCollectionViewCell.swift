//
//  StoryCollectionViewCell.swift
//  AppMvvm
//
//  Created by Jadiê on 05/05/23.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier:String = "StoryCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
