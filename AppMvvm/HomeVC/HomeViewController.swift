//
//  ViewController.swift
//  AppMvvm
//
//  Created by Jadiê on 19/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var homeScreen: HomeScreen?
    private var homeViewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
        homeScreen?.configProtocolsCollectionView(delegate: self, dataSource: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        homeViewModel.numberOfitems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCardCollectionViewCell.identifier, for: indexPath) as? StoryCardCollectionViewCell
            cell?.setupCell(listStory: homeViewModel.getListStory)
            return cell ?? UICollectionViewCell()
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PostCardCollectionViewCell.identifier, for: indexPath) as? PostCardCollectionViewCell
            cell?.setupCell(listPosts: homeViewModel.getListPost)
            return cell ?? UICollectionViewCell()
        }
        

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        homeViewModel.sizeForItem(indexPath: indexPath, frame: collectionView.frame)
    }
    
    
}

