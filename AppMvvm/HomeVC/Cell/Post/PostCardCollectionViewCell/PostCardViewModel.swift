//
//  PostCardViewModel.swift
//  AppMvvm
//
//  Created by Jadiê on 08/05/23.
//

import UIKit

class PostCardViewModel {
    
    private var listPost: [ Posts ]
    
    init(listPost: [Posts]) {
        self.listPost = listPost
    }
    
    public var numberOfItems: Int { listPost.count }
    
    func loudCurrentPost(indexPath: IndexPath) -> Posts {
        listPost[indexPath.row]
    }
}

