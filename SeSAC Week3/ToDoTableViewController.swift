//
//  ToDoTableViewController.swift
//  SeSAC Week3
//
//  Created by 문정호 on 2023/07/27.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var list = ["빨래 하기", "영화 보기", "코드 보기", "과제 하기", "장 보기", "복습하기", "청소하기", "밥 해먹기", "설거지 하기"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //1. 섹션 내 셀의 갯수 : 카톡 친구 수만큼 셀 갯수가 필요해 라고 iOS에게 전달
    
    //MARK: - numberOfRowsInSection
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return list.count
    }
    
    
    
    //MARK: - cellForRowAt
    //2. 셀 디자인 및 데이터 처리 : 카톡 프로필 모서리 둥글게, 프로필 이미지와 상태 메시지 반영 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //보여지는 셀 하나하나에 맞춰서 실행이 됨
        print(#function, indexPath)
        //
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        //indexPath의 행에 맞춰서 실행되면 마지막 셀을 기준으로 재사용 매커니즘이 실행 되기 때문에
        //마지막 셀이 계속 반복 사용 될 것임
        //그걸 해결할 수 있는 가장 단순한 방법 예외처리를 잘 해주는 것
//        if indexPath.row == 0 {
//            cell.textLabel?.text = list[0]
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = list[1]
//        } else if indexPath.row % 2 == 0 {
//            cell.textLabel?.text = list[2]
//        } else{
//            cell.textLabel?.text = list[3]
//        }
        
        cell.textLabel?.text = list[indexPath.row]
        cell.textLabel?.textColor = .red
        cell.textLabel?.font = .boldSystemFont(ofSize: 20)

        cell.backgroundColor = indexPath.row % 2 == 0 ? .lightGray : .white
        
        cell.detailTextLabel?.text = "디테일 텍스트"
        cell.detailTextLabel?.textColor = .blue
        cell.detailTextLabel?.font = .systemFont(ofSize: 15)

        cell.imageView?.image = UIImage(systemName: "star.fill")
        
        return cell
    }
    
   
    //MARK: - heightForRowAt
    //3. 셀의 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print(#function)
        return CGFloat(70)
    }
    @IBAction func tappedBarButtonItem(_ sender: UIBarButtonItem) {
        list.append("치토스 먹기")
        self.tableView.reloadData()
        showAlert()
    }
}

