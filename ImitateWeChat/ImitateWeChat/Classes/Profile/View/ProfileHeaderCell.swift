//
//  ProfileHeaderCell.swift
//  ImitateWeChat
//
//  Created by Xltt on 2022/10/13.
//

import UIKit

class ProfileHeaderCell: BaseTableViewCell {
    var iconImageView: UIImageView!
    var nickNameLbl: UILabel!
    var weChatIdLbl: UILabel!
    var weChatNameLbl: UILabel!
    var qrCodeBtn: UIButton!
    var statusBtn: UIButton!
    
    override func initUI() {
        iconImageView = UIImageView(image: UIImage(named: "homepage_selected"))
        iconImageView.backgroundColor = .orange
        iconImageView.layer.masksToBounds = true
        iconImageView.layer.cornerRadius = 5
        self.contentView.addSubview(iconImageView)
        iconImageView.snp.makeConstraints { make in
            make.left.equalTo(self.contentView).offset(10)
            make.width.height.equalTo(64)
            make.centerY.equalTo(self.contentView)
        }
        
        nickNameLbl = UILabel()
        nickNameLbl.text = "Breeze"
        nickNameLbl.font = UIFont.systemFont(ofSize: 18)
        self.contentView.addSubview(nickNameLbl)
        nickNameLbl.snp.makeConstraints { make in
            make.left.equalTo(iconImageView.snp.right).offset(14)
            make.top.equalTo(iconImageView.snp.top).offset(4)
        }
        
        weChatIdLbl = UILabel()
        weChatIdLbl.text = "微信号:"
        weChatIdLbl.font = UIFont.systemFont(ofSize: 18)
        weChatIdLbl.textColor = .lightGray
        self.contentView.addSubview(weChatIdLbl)
        weChatIdLbl.snp.makeConstraints { make in
            make.left.equalTo(nickNameLbl.snp.left)
            make.top.equalTo(nickNameLbl.snp.bottom).offset(8)
        }
        
        weChatNameLbl = UILabel()
        weChatNameLbl.text = "Deepinillusion"
        weChatNameLbl.font = UIFont.systemFont(ofSize: 18)
        weChatNameLbl.textColor = .lightGray
        self.contentView.addSubview(weChatNameLbl)
        weChatNameLbl.snp.makeConstraints { make in
            make.left.equalTo(weChatIdLbl.snp.right)
            make.top.equalTo(weChatIdLbl.snp.top)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
