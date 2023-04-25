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
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        let images = [
            UIImageView(named: "image1"),
            UIImageView(named: "image2"),
            UIImageView(named: "image3"),
            UIImageView(named: "image4"),
            UIImageView(named: "image5"),
            UIImageView(named: "image6"),
            UIImageView(named: "image7"),
            UIImageView(named: "image8"),
            UIImageView(named: "image9"),
            UIImageView(named: "image10"),
        ].compactMap({ $0 })
        imageView.image = images.randomElement()
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
    }
    
}
