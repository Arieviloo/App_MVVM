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
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        homeViewModel.sizeForItem(indexPath: indexPath, frame: collectionView.frame)
    }
    
    
}

