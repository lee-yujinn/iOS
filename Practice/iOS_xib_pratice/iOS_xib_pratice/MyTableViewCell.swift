//
//  MyTableViewCell.swift
//  iOS_xib_pratice
//
//  Created by 이유진 on 2020/08/27.
//  Copyright © 2020 이유진. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    static let identifier: String = "PlaceListTVC"
    
    @IBOutlet var placeName: UILabel!
    @IBOutlet var placeSubway: UILabel!
    @IBOutlet var placeDate: UILabel!
    @IBOutlet var placePhoto: UIImageView!
    @IBOutlet var writerImg: UIImageView!
    @IBOutlet var writerName: UILabel!
    @IBOutlet var placeTag: [UITextField]!
    //@IBOutlet weak var bottomSeperatorView: UIView!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            
            setupBottomSeperatorView()
            
            writerImg.layer.cornerRadius = writerImg.frame.height/2
            for i in 0..<3 {
                placeTag[i].layer.borderWidth = 0.0
            }
            placeTag[1].layer.borderWidth = 0.0
    //        placeTag[1].borderStyle.
        }
        
        private func setupBottomSeperatorView() {
            //bottomSeperatorView.backgroundColor = .blueGray20
        }

        func setPlaceInfo(pName: String,
                          pSubway:String,
                          pDate:String,
                          pPhoto:String,
                          pWriter: String,
                          wName:String,
                          pTag1:String,
                          pTag2:String,
                          pTag3:String) {
            placeName.text = pName
            placeSubway.text = pSubway
            placeDate.text = pDate
//            placePhoto.kf.setImage(with: URL(string: pPhoto))
//            placeWriter.kf.setImage(with: URL(string: pWriter))
            placePhoto.layer.cornerRadius = 4
            writerName.text = wName
            placeTag[0].text = pTag1
            placeTag[1].text = pTag2
            placeTag[2].text = pTag3
           
            for i in 0..<3{
                placeTag[i].clipsToBounds = true
                placeTag[i].layer.borderWidth = 2
                placeTag[i].layer.borderColor = UIColor(red: 0.945, green: 0.957, blue: 0.961, alpha: 1).cgColor
                placeTag[i].backgroundColor = UIColor(red: 0.945, green: 0.957, blue: 0.961, alpha: 1)
                placeTag[i].layer.cornerRadius = 4
                placeTag[i].isEnabled = false
            }
        }
    
}
