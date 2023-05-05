//
//  StoryCardViewModel.swift
//  AppMvvm
//
//  Created by Jadiê on 19/04/23.
//

import UIKit

class StoryCardViewModel {

    private var listStory: [ Stories ]
    
    init(listStory: [Stories]) {
        self.listStory = listStory
    }
    
    public var numberOfItems: Int { listStory.count }
    
    func loudCurrentStory(indexPath: IndexPath) -> Stories {
        listStory[indexPath.row]
    }
}
