//
//  InformationController.swift
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/13.
//

import UIKit
fileprivate let informationCellId = "informationCellId"
class ProInformationController: BaseViewController {
    private var datas: [[ProFileNormalModel]] = ProFileDataManager.shareInstance().parseInformationDatas() as! [[ProFileNormalModel]]
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: CGRect(x: 0, y: NAVBARHEIGHT + 2, width: SCREENWIDTH, height: SCREENHEIGHT), style: .grouped)
        tableView.separatorStyle = .none
        tableView.register(ProfieNormalCell.self, forCellReuseIdentifier: informationCellId)
        tableView.delegate = self
        tableView.dataSource = self
        if #available(iOS 11.0, *) {
            tableView.contentInsetAdjustmentBehavior = .never
            tableView.estimatedRowHeight = 0
            tableView.estimatedSectionFooterHeight = 0
            tableView.estimatedSectionHeaderHeight = 0
        }
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func initUI() {
        self.navigationController?.navigationBar.isHidden = false
        self.title = NSLocalizedString("My Profile", comment: "My Profile")
        self.view.addSubview(tableView)
    }

}

// MARK: -------------------------------- UITableViewDelegate,UITableViewDataSource --------------------------------
extension ProInformationController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 6
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: informationCellId, for: indexPath) as! ProfieNormalCell
        let model = self.datas[indexPath.section][indexPath.row]
        cell.titleIcon.image = UIImage(named: model.titleIcon)
        cell.title.text = model.title
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 54
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0.0001
        }
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
