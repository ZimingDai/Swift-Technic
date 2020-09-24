//
//  CommentTableViewCell.swift
//  WePeiYang
//
//  Created by phoenix Dai on 2020/9/22.
//  Copyright © 2020 twtstudio. All rights reserved.
//

import UIKit

class CommentTableViewCell: UITableViewCell {
     
     var userImgView: UIImageView! // user头像
     var userNameLabel: UILabel! // user名称
//     var officialImgView: UIImageView! // 官方Tag 暂时没有这个图标
     var officialLabel: UILabel!
     var contentLabel: UILabel! // 内容
     var timeLabel: UILabel! // 时间
     var likesImgView: UIImageView! // 点赞图标
     var likesLabel: UILabel! // 点赞数
     
     
     override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
          super.init(style: style, reuseIdentifier: reuseIdentifier)
          
          userImgView = UIImageView()
          userImgView.image = UIImage(named: "feedback_user")
          contentView.addSubview(userImgView)
          userImgView.snp.makeConstraints { (make) in
               make.left.top.equalTo(contentView).offset(5)
               make.width.height.equalTo(25)
          }
          
          userNameLabel = UILabel()
          userNameLabel.font = .boldSystemFont(ofSize: 16)
          contentView.addSubview(userNameLabel)
          userNameLabel.snp.makeConstraints { (make) in
               make.left.equalTo(userImgView.snp.right).offset(2)
               make.top.equalTo(contentView).offset(5)
               make.height.equalTo(17)
          }
          
          officialLabel = UILabel()
          officialLabel.font = .systemFont(ofSize: 12)
          contentView.addSubview(officialLabel)
          officialLabel.backgroundColor = .blue
          officialLabel.textColor = .white
          officialLabel.textAlignment = .center
          officialLabel.snp.makeConstraints { (make) in
               make.left.equalTo(userNameLabel.snp.right).offset(4)
               make.centerY.equalTo(userNameLabel)
               make.height.equalTo(17)
               make.width.equalTo(25)
          }
          
          contentLabel = UILabel()
//          contentLabel.font = .systemFont(ofSize: 12)
          contentView.addSubview(contentLabel)
          contentLabel.numberOfLines = 0
          contentLabel.snp.makeConstraints { (make) in
               make.left.equalTo(userNameLabel.snp.left)
               make.top.equalTo(officialLabel.snp.bottom).offset(3)
               make.width.equalTo(SCREEN.width * 0.8)
               make.bottom.equalTo(contentView.snp.bottom).offset(-20)
          }
          
          timeLabel = UILabel()
          timeLabel.font = .systemFont(ofSize: 10)
          timeLabel.textColor = .gray
          contentView.addSubview(timeLabel)
          timeLabel.snp.makeConstraints { (make) in
               make.left.equalTo(contentLabel.snp.left)
               make.top.equalTo(contentLabel.snp.bottom).offset(5)
          }
          
          likesImgView = UIImageView()
          likesImgView.image = UIImage(named: "feedback_thumb_up")
          contentView.addSubview(likesImgView)
          likesImgView.snp.makeConstraints { (make) in
               make.centerY.equalTo(timeLabel)
               make.left.equalTo(timeLabel.snp.right).offset(5)
               make.width.height.equalTo(10)
          }
          
          likesLabel = UILabel()
          likesLabel.font = .systemFont(ofSize: 10)
          contentView.addSubview(likesLabel)
          likesLabel.snp.makeConstraints { (make) in
               make.centerY.equalTo(timeLabel)
               make.left.equalTo(likesImgView.snp.right).offset(5)
          }
     }
     
     required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
     }
     
     func update(coder: NSCoder) {
          userNameLabel.text = "学校官方部门"
          userNameLabel.sizeToFit()
          officialLabel.text = "官方"
          officialLabel.sizeToFit()
          contentLabel.text = "暂时不知道"
          contentLabel.sizeToFit()
          timeLabel.text = "2020.1.1"
          timeLabel.sizeToFit()
          likesLabel.text = "10000"
          likesLabel.sizeToFit()
     }
}
