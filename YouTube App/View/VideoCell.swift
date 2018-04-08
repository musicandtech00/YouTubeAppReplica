//
//  VideoCell.swift
//  YouTube App
//
//  Created by Curtis Wiseman on 4/7/18.
//  Copyright © 2018 Curtis Wiseman. All rights reserved.
//

import UIKit

class VideoCell: UICollectionViewCell {
    
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            setupView()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupView(){
            addSubview(thumbNailImageView)
            addSubview(seperatorVIew)
            addSubview(userProfileImageView)
            addSubview(titleLabel)
            addSubview(subTitleTextView)
            thumbNailImageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            
            
            //Horizontal constraints
            addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: thumbNailImageView)
            addConstraintsWithFormat(format: "H:|[v0]|", views: seperatorVIew)
            addConstraintsWithFormat(format: "H:|-16-[v0(44)]|", views: userProfileImageView)
            
            //vertical constraints
            addConstraintsWithFormat(format: "V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", views: thumbNailImageView,userProfileImageView,seperatorVIew)
            
            //        addConstraintsWithFormat(format: "V:[v0(20)]", views: titleLabel)
            //        addConstraintsWithFormat(format: "H:|[v0]|", views: titleLabel)
            
            // purple textLabel constraints vertically and horiozotally
            //top constraints
            addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy:.equal, toItem: thumbNailImageView, attribute: .bottom, multiplier: 1, constant: 8))
            //left constraint
            addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
            //right constraint
            addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumbNailImageView, attribute: .right, multiplier: 1, constant: 0))
            //height constraint
            addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
            
            
            //the subtitletextview constraints
            //top constraints
            addConstraint(NSLayoutConstraint(item: subTitleTextView, attribute: .top, relatedBy:.equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 4))
            //left constraint
            addConstraint(NSLayoutConstraint(item: subTitleTextView, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
            //right constraint
            addConstraint(NSLayoutConstraint(item: subTitleTextView, attribute: .right, relatedBy: .equal, toItem: thumbNailImageView, attribute: .right, multiplier: 1, constant: 0))
            //height constraint
            addConstraint(NSLayoutConstraint(item: subTitleTextView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
            
            
            
        }
        
        
        let thumbNailImageView: UIImageView = {
            let image = UIImageView()
            image.image = UIImage(named: "hov")
            image.translatesAutoresizingMaskIntoConstraints = false
            image.contentMode = .scaleAspectFill
            image.clipsToBounds = true
            return image
        }()
        
        let seperatorVIew: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.black
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
        let userProfileImageView: UIImageView = {
            let image = UIImageView()
            image.image = UIImage(named: "jay-z-letterman")
            image.translatesAutoresizingMaskIntoConstraints = false
            image.layer.cornerRadius = 22
            image.layer.masksToBounds = true
            return image
        }()
        
        let titleLabel: UILabel = {
            let title = UILabel()
            title.translatesAutoresizingMaskIntoConstraints = false
            title.text = "Jay-z Interview"
            return title
            
        }()
        
        let subTitleTextView: UITextView = {
            let textView = UITextView()
            textView.translatesAutoresizingMaskIntoConstraints = false
            textView.text = "Jay-Z, David Letterman talk cheating: Beyoncé knew 'I'm not the worst of what I've done'"
            textView.textColor = UIColor.lightGray
            textView.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
            
            return textView
            
        }()
}

