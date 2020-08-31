//
//  MypageViewController.swift
//  iOS_Mypage_pratice
//
//  Created by 이유진 on 2020/08/31.
//  Copyright © 2020 이유진. All rights reserved.
//

import UIKit

class MypageViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
//extension MypageViewController: UITableViewDelegate { }
//extension MypageViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch section {
//        case 0:
//            return 1
//        case 1:
//            return 2
//        default:
//            assert(false)
//        }
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        switch indexPath.section {
////        case 0:
//            guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileTableViewCell.reuseIdentifier, for: indexPath)
////                as? ProfileTableViewCell else { return UITableViewCell() }
////
////            return cell
////        case 1:
////            guard let cell = tableView.dequeueReusableCell(withIdentifier: ContentTableViewCell.reuseIdentifier, for: indexPath)
////                as? ContentTableViewCell else { return UITableViewCell() }
////
////            cell.addSubview(pagingCollectionView)
////            //
////            cell.completionHandler = { indexPath in
////                self.tabCollectionView.selectItem(at: indexPath, animated: true, scrollPosition: .bottom)
////                self.tabCollectionView.scrollToItem(at: indexPath, at: .bottom, animated: true)
////                self.moveHighlighteView(indexPath)
////            }
//            return cell
////        default:
////            assert(false)
////        }
//    }
//
//
//}
