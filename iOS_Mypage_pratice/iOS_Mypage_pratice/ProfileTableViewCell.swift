//
//  ProfileTableViewCell.swift
//  iOS_Mypage_pratice
//
//  Created by 이유진 on 2020/09/03.
//  Copyright © 2020 이유진. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    static let reuseIdentifier = "ProfileTableViewCellIdentifier"
    static let nibName = "ProfileTableViewCell"
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var proName: UILabel!
    @IBOutlet weak var proPart: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureLabels()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureLabels() {
        proName.text = "조희연"
        proPart.text = "27기 웹파트"
    }
}
