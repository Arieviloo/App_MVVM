//
//  HomeViewModel.swift
//  AppMvvm
//
//  Created by Jadiê on 19/04/23.
//

import UIKit

class HomeViewModel {
    
    private var posts = [
        Posts(profileImages: "img2", userName: "Jack", postImage: "post1"),
        Posts(profileImages: "img4", userName: "Samuel", postImage: "post2"),
        Posts(profileImages: "img3", userName: "Karolina", postImage: "post3"),
        Posts(profileImages: "img6", userName: "puggy_101", postImage: "post4")
    ]
    
    private var story = [
        Stories(image: "img1", userName: "Add Story"),
        Stories(image: "img2", userName: "Jack"),
        Stories(image: "img3", userName: "Carolina"),
        Stories(image: "img4", userName: "Samuel"),
        Stories(image: "img5", userName: "AdAriana Josep"),
        Stories(image: "img6", userName: "puggy_101"),
        Stories(image: "img7", userName: "Dheeraj"),
    ]
    
    public var getListPost: [Posts] { posts }
    
    public var getListStory: [Stories] { story }
    
    public var numberOfitems: Int { 1 }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if(indexPath.row == 0) {
            return CGSize(width: 120, height: frame.height)
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
}
