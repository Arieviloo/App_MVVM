//
//  PostCollectionViewCellScreen.swift
//  AppMvvm
//
//  Created by Jadiê on 09/05/23.
//

import UIKit

class PostCollectionViewCellScreen: UIView {
    
    lazy var cardView: UIView = {
        let card = UIView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = .white
        card.setCardShadow()
        card.layer.cornerRadius = 15
        card.clipsToBounds = true
        return card
    }()
    
    lazy var likeImageView: UIImageView = {
        let img = UIImageView()
        let tap = UITapGestureRecognizer(target: self, action: #selector(tappedLikeImageView))
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "red-heart")
        img.contentMode = .scaleAspectFill
        img.addGestureRecognizer(tap)
        img.isUserInteractionEnabled = true
        tap.numberOfTapsRequired = 1
        return img
    }()
    
    lazy var profileImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        img.image = UIImage(named: "demo")
        img.clipsToBounds = true
        img.layer.cornerRadius = 15
        return img
    }()
    
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "name user"
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(cardView)
        cardView.addSubview(likeImageView)
        cardView.addSubview(profileImageView)
        cardView.addSubview(userNameLabel)
        
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func tappedLikeImageView() {
        
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15),
            cardView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            likeImageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 19),
            likeImageView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20),
            likeImageView.heightAnchor.constraint(equalToConstant: 25),
            likeImageView.widthAnchor.constraint(equalToConstant: 25),

            profileImageView.heightAnchor.constraint(equalToConstant: 30),
            profileImageView.widthAnchor.constraint(equalToConstant: 30),
            profileImageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 17),
            profileImageView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
            
            userNameLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 24),
            userNameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 10),
            userNameLabel.trailingAnchor.constraint(equalTo: likeImageView.leadingAnchor, constant: -5)
        ])
    }
    
}
