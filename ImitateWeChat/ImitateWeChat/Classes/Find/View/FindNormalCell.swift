//
//  FindNormalCell.swift
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/13.
//

import UIKit

class FindNormalCell: BaseTableViewCell {
    var icon: UIImageView!
    var title: UILabel!
    var summary: UILabel!
    var summaryIcon: UIImageView!
    
    override func initUI() {
        icon = UIImageView(image: UIImage(named: "contacts_selected"))
        icon.backgroundColor = .blue
        icon.layer.masksToBounds = true
        icon.layer.cornerRadius = 5
        self.contentView.addSubview(icon)
        icon.snp.makeConstraints { make in
            make.left.equalTo(self.contentView).offset(10)
            make.top.equalTo(self.contentView).offset(5)
            make.bottom.equalTo(self.contentView).offset(-5)
            make.width.equalTo(44)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
