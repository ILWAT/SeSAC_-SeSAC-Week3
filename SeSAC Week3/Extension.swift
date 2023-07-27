//
//  Extension.swift
//  SeSAC Week3
//
//  Created by 문정호 on 2023/07/27.
//

import Foundation
import UIKit

extension UITableViewController {
    func showAlert(){
        let alert = UIAlertController(title: "타이틀", message: "메시지", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "확인", style: .default)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        alert.addAction(ok)
        alert.addAction(cancel)
        present(alert, animated: true)
    }
    
}


extension UILabel {
    func setLabelUI(){
        self.textColor = .red
        self.textColor = .black
        self.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 10)
        self.textAlignment = .center
    }
}
