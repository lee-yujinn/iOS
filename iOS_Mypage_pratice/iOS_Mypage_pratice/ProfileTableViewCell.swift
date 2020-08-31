//
//  ProfileTableViewCell.swift
//  iOS_Mypage_pratice
//
//  Created by 이유진 on 2020/08/31.
//  Copyright © 2020 이유진. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    static let reuseIdentifier = "ProfileTableViewCellIdentifier"
    static let nibName = "ProfileTableViewCell"
    
    @IBOutlet weak var profileImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureLabels()
    }
    
    func configureLabels() {
//        explainLabel.addCharacterSpacing(kernValue: -0.24)
//        nickNameLabel.addCharacterSpacing(kernValue: -0.24)
//        explainLabel.text = "소소한 일상을 나답게 살아가고자 글을 씁니다"
//        nickNameLabel.text = "머리가 말랑말랑"
//        nickNameLabel.textColor = UIColor.white
//        explainLabel.textColor = UIColor.white
    }
    
}
