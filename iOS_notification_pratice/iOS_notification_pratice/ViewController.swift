//
//  ViewController.swift
//  iOS_notification_pratice
//
//  Created by 이유진 on 2020/08/28.
//  Copyright © 2020 이유진. All rights reserved.
//

//이제 예제를 간단히 설명드리자면 UIButton이 있는 ViewController에서 버튼을 눌렀다는 Event를 NotificationCenter에 Post하면 나머지 UILabel이 있는 두 ViewController가 Observer가 되는데 보이지 않는 UILabel은 보여지고, 나머지 하나의 UILabel은 사라지는 예제

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        }
        
    @IBAction func postBut(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "postBut"), object:nil)
    }
    //버튼을 누르면 postBut이라는 이벤트 등록 -> 발생
    //아무것도 넘기지 않을거기 때문에 object를 nil로 설정

}

