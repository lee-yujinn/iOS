//
//  SettingViewController.swift
//  SampleCollections
//
//  Created by 이유진 on 2022/04/11.
//

import UIKit

class SettingViewController: UIViewController {
    let firstSection = ["정보"]
    let secondSection = ["키보드", "게임 컨트롤러", "서체", "언어 및 지역", "사전"]
    let thirdSection = ["전송 또는 iPhone 재설정"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - UITableViewDataSource
extension SettingViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.firstSection.count
        case 1:
            return self.secondSection.count
        case 2:
            return self.thirdSection.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.section {
        case 0:
            content.text = "\(self.firstSection[indexPath.row])"
        case 1:
            content.text = "\(self.secondSection[indexPath.row])"
        case 2:
            content.text = "\(self.thirdSection[indexPath.row])"
        default:
            NSLog("cellForRowAt error \(indexPath)")
        }
        cell.accessoryType = .disclosureIndicator
        cell.contentConfiguration = content
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension SettingViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.section {
        case 0:
            guard let InfoViewController = self.storyboard?.instantiateViewController(withIdentifier: "InfoViewController") else { return }
            self.navigationController?.pushViewController(InfoViewController, animated: true)
        default:
            return
        }
    }
}
