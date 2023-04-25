//
//  ImagesCollectionViewCell.swift
//  CollectionView App
//
//  Created by Rasaal Ahmad on 25/04/2023.
//

import UIKit

class ImagesCollectionViewCell: UICollectionViewCell {
    static let identifier = "ImagesCollectionViewCell"
    
    private let imageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        imageView.image = UIImage(named: "image\(Int.random(in: 1...10))")
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        //imageView.image = nil
    }
    
}
