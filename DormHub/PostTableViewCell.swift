//
//  MealTableViewCell.swift
//  DormHub
//
//  Created by Rui Aguiar on 2/18/17.
//  Copyright © 2017 vegans. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
 
    var clickButton = UIButton(type: .roundedRect)
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        self.contentView.addSubview(self.clickButton);
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
print("HELLO")

        // Configure the view for the selected state
    }

}
