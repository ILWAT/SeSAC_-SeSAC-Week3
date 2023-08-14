//
//  CustomTableViewCell.swift
//  SeSAC Week3
//
//  Created by 문정호 on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CustomTableViewCell"
    
    @IBOutlet weak var checkImgView: UIImageView!
    @IBOutlet weak var baseBackgroundView: UIView!
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainTitleLabel.font = .boldSystemFont(ofSize: 17)
        mainTitleLabel.textColor = .brown
    }
    
    
    func configureCell(row: ToDo){
        mainTitleLabel.text = row.main
        
        
        baseBackgroundView.backgroundColor = row.color
        
        subTitleLabel.text = row.sub
        
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
