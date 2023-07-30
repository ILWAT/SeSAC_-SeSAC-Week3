//
//  BuyLIstTableViewController.swift
//  SeSAC Week3
//
//  Created by 문정호 on 2023/07/28.
//

import UIKit

class BuyLIstTableViewController: UITableViewController {

    @IBOutlet weak var tappedInputBtn: UIButton!
    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        tappedInputBtn.layer.cornerRadius = 10
        tappedInputBtn.setTitleColor(.black, for: .normal)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0: return InputedBuyList.list.count
        default: return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch indexPath.section{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "buyListCell", for: indexPath) as! BuyListTableViewCell
            cell.showBuyList(row: indexPath.row)
            return cell
        default:
            let cell = UITableViewCell()
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(50)
    }

    
    @IBAction func inputTextButton(_ sender: UIButton) {
        guard let name = inputTextField.text else { return }
        print(name)
        if !name.isEmpty{
            InputedBuyList.list.append(BuyList(name: name, done: false, like: false))
            
            tableView.reloadData()
        }
        
    }
    

}
