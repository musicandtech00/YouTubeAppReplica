//
//  MenuBar.swift
//  YouTube App
//
//  Created by Curtis Wiseman on 4/7/18.
//  Copyright © 2018 Curtis Wiseman. All rights reserved.
//

import UIKit

class MenuBar: UIView,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

    let cellId = "cellId"
    
//    lazy var collectionView: UICollectionView = {
//        let layout = UICollectionViewFlowLayout()
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = UIColor.purple //UIColor(red: 230/255, green: 32/255, blue: 31/255, alpha: 1)
//        cv.dataSource = self
//        cv.delegate = self
//        translatesAutoresizingMaskIntoConstraints = false
//        return cv
//    }()
    
    //var collectionViewTabBar: UICollectionView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let layout = UICollectionViewFlowLayout()
        collectionViewTabBar = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionViewTabBar?.backgroundColor = UIColor.purple
        collectionViewTabBar?.dataSource = self
        collectionViewTabBar?.delegate = self
        collectionViewTabBar?.translatesAutoresizingMaskIntoConstraints = false
        collectionViewTabBar?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)

        addSubview(collectionViewTabBar!)
//        addConstraintsWithFormat(format:"H:|[v0]|", views: collectionView)
//        addConstraintsWithFormat(format:"V:|[v0]|", views: collectionView)
        //self.translatesAutoresizingMaskIntoConstraints = false

//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
//
//        addConstraintsWithFormat(format: "H:|[v0]|", views: collectionView)
//        addConstraintsWithFormat(format: "V:|[v0]|", views: collectionView)

        //backgroundColor = UIColor.purple//UIColor(red: 230/255, green: 32/255, blue: 31/255, alpha: 1)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = UIColor.purple
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width / 4, height: frame.height)

    }
    

}
