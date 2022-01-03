//
//  MyCollectionViewCell.swift
//  CollectionViewinTableView
//
//  Created by jh on 2022/01/02.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    static let cellId = "MyCollectionViewCell"
    static let className = "MyCollectionViewCell"
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    // data model 넣으면 됨
    public func configure() {
        myLabel.text = "123421321321"
        myImageView.tintColor = .blue
    }

}
