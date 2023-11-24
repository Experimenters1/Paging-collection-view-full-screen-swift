//
//  ViewController.swift
//  test3
//
//  Created by Huy Vu on 11/6/23.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        CollectionView.register(UINib(nibName: "CollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "cell")
        
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0

        CollectionView.collectionViewLayout = layout
        CollectionView.isPagingEnabled = true
        CollectionView.showsHorizontalScrollIndicator = false
    }

}

extension ViewController:  UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        200
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
//        let url = URL(string: "https://firebasestorage.googleapis.com/v0/b/test1-a8623.appspot.com/o/bZ2IVQyCcNeFbKvXLnBCAopUwqv2%2F002A11F6-C8B2-4E07-9464-857D7D6E4B69.png?alt=media&token=2eb8b2b1-53ce-4009-85ba-d5914df95b9e&_gl=1*1g3fwmd*_ga*NzQ4MDMxNjYzLjE2OTcwOTM5ODc.*_ga_CW55HF8NVT*MTY5OTI0NTg4Ni44OC4xLjE2OTkyNDU5NDguNjAuMC4w")
//        
//        cell.img.kf.setImage(with: url)
        cell.first.text = "huy"

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CollectionView.bounds.size
    }
    
}
