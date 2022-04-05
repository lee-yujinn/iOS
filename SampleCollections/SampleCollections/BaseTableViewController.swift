//
//  BaseTableViewController.swift
//  SampleCollections
//
//  Created by 이유진 on 2022/04/04.
//

import UIKit

class BaseTableViewController: UITableViewController {
    let sections = ["우량주", "성장주", "코인"]
    let arrWoo = ["삼성전자", "현대자동차", "LG생활건강"]
    let arrSung = ["LG에너지솔루션", "카카오뱅크", "셀트리온"]
    let arrCoin = ["비트코인", "이더리움", "도지코인"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.arrWoo.count
        case 1:
            return self.arrSung.count
        case 2:
            return self.arrCoin.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(systemName: "lock.fill")
        
        switch indexPath.section {
        case 0:
            content.text = self.arrWoo[indexPath.row]
        case 1:
            content.text = self.arrSung[indexPath.row]
        case 2:
            content.text = self.arrCoin[indexPath.row]
        default:
            NSLog("error")
        }
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
