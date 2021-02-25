

import UIKit

class DetailViewController: UIViewController {
    
      var textImage:UIImageView = UIImageView()
      var textName:UILabel = UILabel()
      var textExperience:UILabel = UILabel()
      var textForce:UILabel = UILabel()
      var textAgility:UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = greenColor
        
        textImage.frame = CGRect(x: 0, y: 10+heigthNavBar+heigthStatusBar, width: widthScreen, height: (heigthScreen-heigthStatusBar-heigthNavBar)/2)
        
        textName.frame = CGRect(x: 20, y: textImage.frame.maxY+20, width: widthScreen-20, height: 30)
        
        textExperience.frame = CGRect(x: 20, y: textName.frame.maxY+20, width: widthScreen-20, height: 30)
        
        textForce.frame = CGRect(x: 20, y: textExperience.frame.maxY+20, width: widthScreen-20, height: 30)
        
        textAgility.frame = CGRect(x: 20, y: textForce.frame.maxY+20, width: widthScreen-20, height: 30)
        
        textImage.image = UIImage(named: characters[indice].image!)
        textImage.contentMode = .scaleAspectFit
        textImage.clipsToBounds = true
        
        textName.text = characters[indice].name!
        textName.textAlignment = .left
        textName.font = UIFont(name: "Arial", size: 23)
        textName.textColor = yellowColor
        
        textExperience.text = "Experiência: \(characters[indice].experience!)"
        textExperience.textAlignment = .left
        textExperience.textColor = .white
        
        textForce.text = "Força: \(characters[indice].force!)"
        textForce.textAlignment = .left
        textForce.textColor = .white
        
        textAgility.text = "Agilidade: \(characters[indice].agility!)"
        textAgility.textAlignment = .left
        textAgility.textColor = .white
        
        self.view.addSubview(textImage)
        self.view.addSubview(textName)
        self.view.addSubview(textExperience)
        self.view.addSubview(textForce)
        self.view.addSubview(textAgility)
        
        self.title = characters[indice].name!
        
        
    }
}
