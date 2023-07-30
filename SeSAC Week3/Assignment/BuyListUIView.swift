//
//  BuyListUIView.swift
//  SeSAC Week3
//
//  Created by 문정호 on 2023/07/28.
//

import UIKit

class BuyListUIView: UIView {

    @IBOutlet weak var inputTextField: UITextField!
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        inputTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        inputTextField.leftViewMode = .always
    }
    

}
