//
//  CustomTableViewController.swift
//  SeSAC Week3
//
//  Created by 문정호 on 2023/07/28.
//

import UIKit






class CustomTableViewController: UITableViewController {
    var toDoInformationlist = ToDoInformation.init()
//    var sublist = ["오늘까지", "내일까지", "주말까지"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 70
        
    }
    
    // MARK: - Table view data source
    
    //1. 섹션 수 지정
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoInformationlist.list.count
    }
    
    
    //2. 어떤 셀로 구성할지 설정
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as! CustomTableViewCell
        
//        let row = list[indexPath.row]
        
        cell.configureCell(row: toDoInformationlist.list[indexPath.row])
        
        return cell
    }
    
    
    //3. 셀 선택
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    



}
