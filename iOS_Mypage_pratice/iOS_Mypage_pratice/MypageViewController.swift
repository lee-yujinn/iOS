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
    
    let headerView: UIView = {
        let v = UIView()
        let width = UIScreen.main.bounds.width //***
        
        v.backgroundColor = UIColor.white
        v.frame = CGRect.init(x: 0, y: 0, width: width, height: 44)
        return v
    }()
    
    let highlightingView: UIView = {
        let v = UIView()
        let width = UIScreen.main.bounds.width
        
        v.backgroundColor = UIColor.red
        v.frame = CGRect.init(x: 0, y: 0, width: width / 2 , height: 1)
        v.translatesAutoresizingMaskIntoConstraints = false //***
        return v
    }()
    
//    //이 탭컬렉션뷰는 또 뭘까
//    let tabCollectionView: UICollectionView = {
//        let width = UIScreen.main.bounds.width
//        let frame = CGRect(x: 0, y: 0, width: width, height: 44)
//
//        let layout = UICollectionViewFlowLayout()
//        layout.minimumInteritemSpacing = .zero
//        layout.minimumLineSpacing = .zero
//        layout.scrollDirection = .vertical
//
//        let tabCV = UICollectionView(frame: frame, collectionViewLayout: layout)
//        tabCV.register(TabCollectionViewCell.self, forCellWithReuseIdentifier: TabCollectionViewCell.reuseIdentifier)
//        tabCV.translatesAutoresizingMaskIntoConstraints = false
//        tabCV.isPagingEnabled = true
//        return tabCV
//    }()
    
//    //이 페이징컬렉션뷰는 뭐지
//    let pagingCollectionView: UICollectionView = {
//        let width = UIScreen.main.bounds.width //bounds이게 모냐
//        let itemheight: CGFloat = 203 //어떤 높이인거지
//        let itemCount: CGFloat = 40 //어떤 카운트인건가
//        let frame = CGRect(x: 0, y: 0, width: width, height: itemheight * itemCount)
//
//        let layout = UICollectionViewFlowLayout()
//        layout.minimumInteritemSpacing = .zero
//        layout.minimumLineSpacing = .zero
//        layout.scrollDirection = .horizontal
//
//        let pageCV = UICollectionView(frame: frame, collectionViewLayout: layout)
//        pageCV.register(TabCollectionViewCell.self, forCellWithReuseIdentifier: TabCollectionViewCell.reuseIdentifier)
//        pageCV.translatesAutoresizingMaskIntoConstraints = false
//        pageCV.isPagingEnabled = true
//        return pageCV
//    }()
    
    //뭔지 알아보자
    override var preferredStatusBarStyle: UIStatusBarStyle {
           return .lightContent
       }
       
       override func viewDidAppear(_ animated: Bool) {
           navigationController?.navigationBar.barStyle = .black
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupRefreshControl()
        setupNavigationBar()
        setupTableView()
//        initialSetupHighlightingView()
        // Do any additional setup after loading the view.
    }

}

extension MypageViewController {
    //리로드 코드
    private func setupRefreshControl() {
        let attributedString = [NSAttributedString.Key.foregroundColor: UIColor.white]
        let refreshControl: UIRefreshControl! //이거 공부하자
        refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(updateUI(refresh:)), for: .valueChanged)
        refreshControl.backgroundColor = UIColor.red
        refreshControl.tintColor = UIColor.white
        refreshControl.attributedTitle = NSAttributedString(string: "새로고침", attributes: attributedString)

        tableview.addSubview(refreshControl)
    }
    
    @objc
    func updateUI(refresh: UIRefreshControl) {
        refresh.endRefreshing()
        tableview.reloadData()
    }
    
    private func setupNavigationBar() {
//        guard let navigationBar = self.navigationController?.navigationBar else { return }
//
//        let titleLabel: UILabel = {
//            let label = UILabel()
//            label.text = "MY 서랍"
//            label.textColor = UIColor.white
//            label.font = .systemFont(ofSize: 18)
//            return label
//        }()
//
//        navigationBar.isTranslucent = true
//        navigationBar.backgroundColor = UIColor.mainBlue
//        navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
//        navigationBar.shadowImage = UIImage()
//
//        let leftButton: UIBarButtonItem = UIBarButtonItem(image: UIImage(named: "icBackWhite"),
//                                                          style: .plain,
//                                                          target: self,
//                                                          action: #selector(dismissVC))
//        navigationItem.leftBarButtonItem = leftButton
//        navigationItem.titleView = titleLabel
    }
    
//    @objc
//    private func dismissVC() {
//        dismiss(animated: true, completion: nil)
//    }
//    private func initialSetupHighlightingView() {
//        let width = UIScreen.main.bounds.width
//
//        if UIApplication.shared.windows.first(where: { $0.isKeyWindow }) != nil {
//            headerView.addSubview(highlightingView)
//            highlightingView.bringSubviewToFront(tabCollectionView)
//
    //constraints 공부
//            constraints = [
//                highlightingView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 4),
//                highlightingView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 0),
//                highlightingView.heightAnchor.constraint(equalToConstant: 2),
//                highlightingView.widthAnchor.constraint(equalToConstant: width / 2)
//            ]
//            NSLayoutConstraint.activate(constraints)
//        }
//    }
    
//    private func moveHighlighteView(_ indexPath: IndexPath) {
//        let width = UIScreen.main.bounds.width
//
//        if indexPath.item == 1 {
//            NSLayoutConstraint.deactivate(constraints)
//            highlightingView.translatesAutoresizingMaskIntoConstraints = false
//            constraints = [
//                highlightingView.leadingAnchor.constraint(equalTo: headerView.centerXAnchor),
//                highlightingView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor),
//                highlightingView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 4),
//                highlightingView.heightAnchor.constraint(equalToConstant: 2)
//            ]
//            NSLayoutConstraint.activate(constraints)
//            UIView.animate(withDuration: 0.3) {
//                self.view.layoutIfNeeded()
//            }
//
//        } else {
//            NSLayoutConstraint.deactivate(constraints)
//            constraints = [
//                highlightingView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 4),
//                highlightingView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 0),
//                highlightingView.heightAnchor.constraint(equalToConstant: 2),
//                highlightingView.widthAnchor.constraint(equalToConstant: width/2)
//            ]
//            NSLayoutConstraint.activate(constraints)
//            UIView.animate(withDuration: 0.3) {
//                self.view.layoutIfNeeded()
//            }
//        }
//    }
}

extension MypageViewController: UITableViewDelegate { }
extension MypageViewController: UITableViewDataSource {
    
    func setupTableView() {
        tableview.delegate = self
        tableview.dataSource = self
        tableview.separatorStyle = .singleLine
        
        let profileNibname = UINib(nibName: ProfileTableViewCell.nibName, bundle: nil)
//        let contentNibname = UINib(nibName: ContentTableViewCell.nibName, bundle: nil)
        tableview.register(profileNibname, forCellReuseIdentifier: ProfileTableViewCell.reuseIdentifier)
//        tableView.register(contentNibname, forCellReuseIdentifier: ContentTableViewCell.reuseIdentifier)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            return 119
        } else if indexPath.section == 1 {
            return 203 * 40
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 2
        default:
            assert(false)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileTableViewCell.reuseIdentifier, for: indexPath)
                as? ProfileTableViewCell else { return UITableViewCell() }
            
            return cell
        case 1:
           guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileTableViewCell.reuseIdentifier, for: indexPath)
                as? ProfileTableViewCell else { return UITableViewCell() }
            
            
//            cell.addSubview(pagingCollectionView)
            //
//            cell.completionHandler = { indexPath in
//                self.tabCollectionView.selectItem(at: indexPath, animated: true, scrollPosition: .bottom)
//                self.tabCollectionView.scrollToItem(at: indexPath, at: .bottom, animated: true)
//                self.moveHighlighteView(indexPath)
//            }
            return cell
        default:
            assert(false)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 1 {
            return 40
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        headerView.addSubview(tabCollectionView)
        return headerView
    }
}
