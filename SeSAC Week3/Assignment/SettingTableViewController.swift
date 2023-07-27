//
//  SettingTableViewController.swift
//  SeSAC Week3
//
//  Created by 문정호 on 2023/07/27.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    let settingGeneral = ["공지사항", "실험실", "버전정보"]
    let settingPersonal = ["개인/보안", "알림", "채팅", "멀티프로필"]
    let settingEtc = ["고객센터/도움말"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0: return settingGeneral.count
        case 1: return settingPersonal.count
        case 2: return settingEtc.count
        default : return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath)
        
        switch indexPath.section {
        case 0: return setTableViewCellUI(cell, settingGeneral[indexPath.row])
        case 1: return setTableViewCellUI(cell, settingPersonal[indexPath.row])
        case 2: return setTableViewCellUI(cell, settingEtc[indexPath.row])
        default: return cell
        }
        

    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "전체 설정"
        case 1: return "개인 설정"
        case 2: return "기타"
        default : return ""
        }
    }
    
    
    //클래스는 reference Type이기 때문에 view를 UITableViewHeaderFooterView로 다운 캐스팅하여 값을 설정하면 기존 view에도 값이 적용된다....?
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let header = view as? UITableViewHeaderFooterView {
            header.textLabel?.textColor = .systemGray
            header.textLabel?.font = .boldSystemFont(ofSize: 18)
        }
    }
    

    
    

    


  //MARK: - setTableViewCellUI()
    
    func setTableViewCellUI(_ cell: UITableViewCell,_ title: String) -> UITableViewCell{
        cell.textLabel?.text = title
        cell.textLabel?.textColor = .white
        cell.textLabel?.font = .systemFont(ofSize: 15)
        cell.backgroundColor = .black
        
        return cell
    }

}
