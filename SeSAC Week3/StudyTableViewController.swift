//
//  StudyTableViewController.swift
//  SeSAC Week3
//
//  Created by 문정호 on 2023/07/27.
//

import UIKit

class StudyTableViewController: UITableViewController {
    
    let studyList = ["변수", "상수", "열거형", "옵셔널 바인딩", "테이블 뷰 컨트롤러", "오토레이아웃", "앱의 생명주기"]
    let appleList = ["아이폰", "아이패드", "애플워치", "에어팟"]

    override func viewDidLoad() {
        super.viewDidLoad()
        

        //메서드 말고도 프로퍼티로써 tableViewCell의 높이를 지정해서 사용 할 수도 있다.
        tableView.rowHeight = 60
    
    }

    // 섹션 갯수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //섹션의 타이틀을 지정하는 함수
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return section == 0 ? "첫번째 섹션" : "두번째 섹션"
    }
    
    //1. 섹션별 셀 갯수(필수)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0 : return studyList.count
        case 1: return appleList.count
        default : return 0
        }

    }
    
    
    //2. 셀 데이터 및 디자인 처리 (필수)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //identifier가 없는 셀이 있을 수 있기 때문에 옵셔널로 반환을 해줌 -> 해제가 필요
        let cell = tableView.dequeueReusableCell(withIdentifier: "studyCell")!
        
        
        if indexPath.section == 0 {
            cell.textLabel?.text = studyList[indexPath.row]
        } else {
            cell.textLabel?.text = appleList[indexPath.row]
        }
        //수동적으로 셀을 처리하는 방식
//        if indexPath.row == 0 {
//            cell.textLabel?.text = "변수"
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = "상수"
//        } else if indexPath.row == 2 {
//            cell.textLabel?.text = "열거형"
//        }
        
//        cell.textLabel?.text = studyList[indexPath.row]
        
        
        
        //indexPath는 출력해보면 2차원 배열로 되어있다. -> 첫번째 원소는 섹션의 index를 가르키고, 두번째 원소는 섹션 안에서의 index를 가르킨다
//        cell.textLabel?.text = "\(indexPath) 위치에 있는 셀입니다."
        
        
        return cell
    }
    
    //3. 셀의 높이를 지정 : 서비스 구현에 다라 필요한 경우가 많지만, 항상 같은 홒이를 셀에서 사용한다면 비효율적일 수 있다.
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return
//    }
    
    

}
