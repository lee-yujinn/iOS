//
//  CustomTableViewCell.swift
//  SampleCollections
//
//  Created by 이유진 on 2022/04/07.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    func setup(title: String, desc: String, imageName: String) {
        self.titleImage.image = UIImage.init(systemName: imageName)
        self.title.text = title
        self.desc.text = desc
    }
}
