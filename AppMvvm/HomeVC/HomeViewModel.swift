//
//  HomeViewModel.swift
//  AppMvvm
//
//  Created by Jadiê on 19/04/23.
//

import UIKit

class HomeViewModel {

    public var numberOfitems: Int { 1 }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if(indexPath.row == 0) {
            return CGSize(width: 120, height: frame.height)
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
}
