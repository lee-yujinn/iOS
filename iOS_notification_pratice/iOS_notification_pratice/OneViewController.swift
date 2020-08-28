//
//  OneViewController.swift
//  iOS_notification_pratice
//
//  Created by 이유진 on 2020/08/28.
//  Copyright © 2020 이유진. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {

    @IBOutlet weak var hiddenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(showLabel), name: NSNotification.Name(rawValue: "postBut"), object: nil)
        // Do any additional setup after loading the view.
    }
    
    @objc func showLabel() {
        hiddenLabel.layer.isHidden = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
