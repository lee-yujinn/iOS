//
//  TabCollectionViewCell.swift
//  iOS_Mypage_pratice
//
//  Created by 이유진 on 2020/09/03.
//  Copyright © 2020 이유진. All rights reserved.
//

import UIKit

class TabCollectionViewCell: UICollectionViewCell {
    static let nibName = "TabCollectionViewCell"
    static let reuseIdentifier = "TabCollectionViewCellIdentifier"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override var isSelected: Bool {
        willSet { //*** willset이건 뭘까
            if newValue {
                titleLabel.textColor = .black
            } else {
                titleLabel.textColor = .red
            }
        }
    }
    
    //***prepareForReuse가 뭘까
    override func prepareForReuse() {
        isSelected = false
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

//        setUpCollectionViewUI()
    }
}
