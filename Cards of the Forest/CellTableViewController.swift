

import UIKit

class CellTableViewController: UITableViewCell {
    
    var textImage:UIImageView = UIImageView()
    var textName:UILabel = UILabel()
    var textExperience:UILabel = UILabel()
    var textForce:UILabel = UILabel()
    var textAgility:UILabel = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        textImage = UIImageView (frame: CGRect(x: 0, y: 0, width: widthScreen/3, height: 130))
        textName = UILabel(frame: CGRect(x: widthScreen/3, y: 10, width: widthScreen/3*2-40, height: 20))
        textExperience = UILabel(frame: CGRect(x: widthScreen/3, y: 35, width: widthScreen/3*2-40, height: 30))
        textForce = UILabel(frame: CGRect(x: widthScreen/3, y: 65, width: widthScreen/3*2-40, height: 30))
        textAgility = UILabel(frame: CGRect(x: widthScreen/3, y: 95, width: widthScreen/3*2-40, height: 30))
        
        textImage.contentMode = .scaleAspectFit
        textImage.clipsToBounds = true
        
        textName.textAlignment = .left
        textName.font = UIFont(name: "Verdana", size: 19)
        textName.textColor = .yellow
        
        textExperience.textAlignment = .left
        textExperience.font = UIFont(name: "Arial", size: 13)
        textExperience.textColor = .white
        
        textForce.textAlignment = .left
        textForce.font = UIFont(name: "Arial", size: 13)
        textForce.textColor = .white
        
        textAgility.textAlignment = .left
        textAgility.font = UIFont(name: "Arial", size: 13)
        textAgility.textColor = .white
        
        contentView.backgroundColor = blueColor
        contentView.addSubview(textImage)
        contentView.addSubview(textName)
        contentView.addSubview(textExperience)
        contentView.addSubview(textForce)
        contentView.addSubview(textAgility)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}




