//
//  InfoTableViewCell.swift
//  SampleCollections
//
//  Created by 이유진 on 2022/04/11.
//

import UIKit

class InfoTableViewCell: UITableViewCell {
    @IBOutlet var title: UILabel!
    @IBOutlet var info: UILabel!
    
    func setup(title: String, info: String) {
        self.title.text = title
        self.info.text = info
    }
}
