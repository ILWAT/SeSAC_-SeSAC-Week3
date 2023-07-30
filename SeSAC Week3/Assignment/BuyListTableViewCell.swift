//
//  BuyListTableViewCell.swift
//  SeSAC Week3
//
//  Created by 문정호 on 2023/07/28.
//

import UIKit

class BuyListTableViewCell: UITableViewCell {

    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var displayNameLabel: UILabel!
    @IBOutlet weak var checkButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//    override func layoutSubviews() {
//        super.layoutSubviews()
//    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func showBuyList(row: Int){
        let text = InputedBuyList.list[row].name
        
        self.contentView.layer.cornerRadius = 10
        self.contentView.clipsToBounds = true
        
        displayNameLabel.text = text
        displayNameLabel.font = .systemFont(ofSize: 17)
    }

}
