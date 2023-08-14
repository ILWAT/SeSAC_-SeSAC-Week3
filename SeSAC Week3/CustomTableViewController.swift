//
//  CustomTableViewController.swift
//  SeSAC Week3
//
//  Created by 문정호 on 2023/07/28.
//

import UIKit


/*
 1. 파티를 막자
 2. sender.tag
 3. 
 */



class CustomTableViewController: UITableViewController {
    var toDoInformationlist = ToDoInformation.init(){
        didSet{ // 변수가 달라짐을 감지
            print("didSet 실행")
            tableView.reloadData()
        }
    }
//    var sublist = ["오늘까지", "내일까지", "주말까지"]
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 70
        
        searchBar.placeholder = "할일을 입력해보세요"
        searchBar.searchTextField.addTarget(self, action: #selector(tappedSearchBarReturn(_ :)), for: .editingDidEndOnExit)
        
    }
    
    // MARK: - Table view data source
    
    //1. 섹션 수 지정
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoInformationlist.list.count
    }
    
    
    //2. 어떤 셀로 구성할지 설정
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as! CustomTableViewCell
        
        let row = toDoInformationlist.list[indexPath.row]
        
        cell.configureCell(row: row)
        
        
        cell.likeButton.tag = indexPath.row
        cell.likeButton.addTarget(self, action: #selector(tappedLikeButton(_ :)), for: .touchUpInside)
        
        return cell
    }
    
    
    //3. 셀 선택
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        
        let vc = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        
        vc.data = toDoInformationlist.list[indexPath.row]
        
        self.present(vc, animated: true)
        
        tableView.reloadRows(at: [indexPath] , with: .automatic) //현재 선택되어진 셀안에서 특정 Row에 대해서만 reload를 진행했으니 -> 현재 선택되어진 셀에 대해서만 reload
    }
    
    //셀 삭제
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        //제거 -> 갱신
        //제거
        toDoInformationlist.list.remove(at: indexPath.row)
        
        //갱신
//        tableView.reloadData()
    }

    
    @objc func tappedLikeButton(_ sender: UIButton){
        print(#function)
        
        //indexPath를 tag로 설정해놓았기 때문에 sender.tag로 하면 indexPath를 불러올 수 있음
        toDoInformationlist.list[sender.tag].like.toggle()
        
//        tableView.reloadData()
    }
    
    @objc func tappedCheckBoxButton(_ sender: UIButton){
        toDoInformationlist.list[sender.tag].done.toggle()
        
//        tableView.reloadData()
    }
    
    @objc func tappedSearchBarReturn(_ sender: UISearchBar){
        //ToDo 항목을
        let newTodo = ToDo(main: searchBar.text!, sub: "23.08.01", like: false, done: false,color: ToDoInformation.randomBackgroundColor())
        //List에 추가
        toDoInformationlist.list.append(newTodo)
//        toDoInformationlist.list.insert(<#T##newElement: ToDo##ToDo#>, at: <#T##Int#>) //원하는 지점에 추가를 하고 싶다면 insert
        
        //UX : UISearchBar에 있는 텍스트 비우기
        searchBar.text = ""
        //갱신
//        tableView.reloadData()
    }

}
