//
//  ProfieNormalCell.swift
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/13.
//

import UIKit

class ProfieNormalCell: BaseTableViewCell {
    
    var separator:UILabel!
    var titleIcon:UIImageView!
    var title:UILabel!
    override func initUI() {
        separator = UILabel()
        separator.backgroundColor = NavGray
        self.contentView.addSubview(separator)
        separator.snp.makeConstraints { make in
            make.right.equalTo(self.contentView)
            make.height.equalTo(1)
            make.bottom.equalTo(self.contentView)
            make.left.equalTo(self.contentView).offset(54)
        }
        titleIcon = UIImageView()
        titleIcon.backgroundColor = .orange
        titleIcon.layer.cornerRadius = 5
        titleIcon.layer.masksToBounds = true
        self.contentView.addSubview(titleIcon)
        titleIcon.snp.makeConstraints { make in
            make.width.height.equalTo(38)
            make.left.equalTo(self.contentView).offset(8)
            make.top.equalTo(self.contentView).offset(8)
            make.bottom.equalTo(self.contentView).offset(-8)
            
        }
        title = UILabel()
        title.font = UIFont.boldSystemFont(ofSize: 16)
        self.contentView.addSubview(title)
        title.snp.makeConstraints { make in
            make.centerY.equalTo(self.contentView)
            make.left.equalTo(self.contentView).offset(54)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
