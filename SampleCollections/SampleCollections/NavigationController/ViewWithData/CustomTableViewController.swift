//
//  CustomTableViewController.swift
//  SampleCollections
//
//  Created by 이유진 on 2022/04/07.
//

import UIKit

class CustomTableViewController: UIViewController {
    let sections = ["우량주", "성장주", "코인"]
    let arrImage = ["dollarsign.circle", "dollarsign.circle", "bitcoinsign.circle"]
    
    let arrWoo = ["삼성전자", "현대자동차", "LG생활건강"]
    let arrDescWoo = ["69,200", "177,500", "912,000"]

    let arrSung = ["LG에너지솔루션", "카카오뱅크", "셀트리온"]
    let arrDescSung = ["443,000", "50,200", "170,000"]

    let arrCoin = ["비트코인", "이더리움", "도지코인"]
    let arrDescCoin = ["56,891,000", "4,293,000", "184"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - UITableViewDataSource
extension CustomTableViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell else { return UITableViewCell() }
        var title = ""
        var description = ""
        switch(indexPath.section) {
        case 0:
            title = arrWoo[indexPath.row]
            description = arrDescWoo[indexPath.row]
        case 1:
            title = arrSung[indexPath.row]
            description = arrDescSung[indexPath.row]
        case 2:
            title = arrCoin[indexPath.row]
            description = arrDescCoin[indexPath.row]
        default:
            NSLog("cellForRowAt error \(indexPath)")
        }
        
        cell.setup(title: title, desc: description, imageName: arrImage[indexPath.section])
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
}

// MARK: - UITableViewDelegate
extension CustomTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
