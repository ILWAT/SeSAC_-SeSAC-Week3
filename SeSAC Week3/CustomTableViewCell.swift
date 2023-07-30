//
//  CustomTableViewCell.swift
//  SeSAC Week3
//
//  Created by 문정호 on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CusomTableViewCell"
    
    @IBOutlet weak var checkImgView: UIImageView!
    @IBOutlet weak var baseBackgroundView: UIView!
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    func configureCell(row: ToDo){
        self.mainTitleLabel.text = row.main
        self.subTitleLabel.text = row.sub
        
        if row.done{
            self.checkImgView.image = UIImage(systemName: "checkmark.square.fill")
        } else {
            self.checkImgView.image = UIImage(systemName: "checkmark.square")
        }
        if row.like{
            self.likeButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            self.likeButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
    }
}
