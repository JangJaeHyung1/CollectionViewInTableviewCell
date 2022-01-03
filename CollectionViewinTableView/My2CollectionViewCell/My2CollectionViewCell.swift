//
//  My2CollectionViewCell.swift
//  CollectionViewinTableView
//
//  Created by jh on 2022/01/03.
//

import UIKit

class My2CollectionViewCell: UICollectionViewCell {

    static let cellId = "My2CollectionViewCell"
    static let className = "My2CollectionViewCell"
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    public func configure() {
        titleLbl.text = "aaaaaaaaaaaaa"
        imageView.tintColor = .blue
    }

}
