//
//  CollectionTableViewCell.swift
//  CollectionViewinTableView
//
//  Created by jh on 2022/01/02.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    
    static let cellId = "CollectionTableViewCell"
    static let className = "CollectionTableViewCell"
    
    @IBOutlet var collectionView: UICollectionView!
    
    var model = [String]()
    
    func configure(){
        //        with model: [Model]
        //        self.model = models
        collectionView.reloadData()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(UINib(nibName: MyCollectionViewCell.className, bundle: nil), forCellWithReuseIdentifier : MyCollectionViewCell.cellId)
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}

extension CollectionTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.cellId, for: indexPath) as! MyCollectionViewCell
        cell.configure()
        //        cell.configure(with: model[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
}

