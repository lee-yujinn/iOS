//
//  InfoViewController.swift
//  SampleCollections
//
//  Created by 이유진 on 2022/04/11.
//

import UIKit

class InfoViewController: UIViewController {
    let firstSection = ["이름", "소프트웨어 버전", "모델명", "모델 번호", "일련 번호"]
    let firstInfo = ["iPhone", "15.2", "iPhone 11", "A2111", "CO2YD2EAJGH6"]
    let secondSection = ["노래", "비디오", "사진", "응용 프로그램", "전체 공간", "사용 가능 공간"]
    let secondInfo = ["0", "0", "6", "8", "499.96GB", "213GB"]
    let thirdSection = ["인증서 신뢰 설정"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


// MARK: - UITableViewDataSource
extension InfoViewController: UITableViewDataSource {
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "InfoTableViewCell", for: indexPath) as? InfoTableViewCell else { return UITableViewCell() }
        
        switch indexPath.section {
        case 0:
            cell.setup(title: self.firstSection[indexPath.row], info: self.firstInfo[indexPath.row])
        case 1:
            cell.setup(title: self.secondSection[indexPath.row], info: self.secondInfo[indexPath.row])
        case 2:
            var content = cell.defaultContentConfiguration()
            content.text = self.thirdSection[indexPath.row]
            cell.contentConfiguration = content
            cell.accessoryType = .disclosureIndicator
        default:
            NSLog("cellForRowAt error \(indexPath)")
        }
        return cell
    }
}

// MARK: - UITableViewDelegate
extension InfoViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
