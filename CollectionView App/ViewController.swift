//
//  ViewController.swift
//  CollectionView App
//
//  Created by Rasaal Ahmad on 25/04/2023.
//

import UIKit

class ViewController: UIViewController {

    private let imagesCollecitonView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagesCollecitonView.delegate = self
        imagesCollecitonView.dataSource = self
        view.addSubview(imagesCollecitonView)
    }


}


//MARK: - UICollectionViewDelegate, UICollectionViewDataSource
extension ViewController:UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}
