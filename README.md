# Swift-Technic
## 自定义TableViewCell
---
1. 先继承UITableViewCell
2. 定义各种变量
3. 直接
```
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
          super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
 ```
4. 对每一个组件进行规划（用snapkit）
5.  ```func update(by question: QuestionModel) {
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
```
     用一个函数赋值
