
import UIKit

let blueColor:UIColor = UIColor(red: 60/255, green: 90/255, blue: 150/255, alpha: 1)
let greenColor:UIColor = UIColor(red: 90/255, green: 180/255, blue: 70/255, alpha: 1)
let yellowColor:UIColor = UIColor(red: 239/255, green: 231/255, blue: 0/255, alpha: 1)

let heigthScreen:CGFloat = UIScreen.main.bounds.height
let widthScreen:CGFloat = UIScreen.main.bounds.width
let heigthStatusBar:CGFloat = UIApplication.shared.statusBarFrame.size.height
var heigthNavBar:CGFloat = 0.0

var indice = 99

var characters:[Character] = []

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myTable:UITableView = UITableView()
    
    
    override func viewDidLoad() {
        
        heigthNavBar = (self.navigationController?.navigationBar.frame.size.height)!
        self.title = "Personagens"
        
        characters.append(Character("Arara Azul", 10, 30, 50, "ARARA_AZUL"))
        characters.append(Character("Arara Vermelha", 10, 30, 50, "ARARA_VERMELHA"))
        characters.append(Character("Caipora", 10, 30, 50, "CAIPORA"))
        characters.append(Character("Capivara", 10, 30, 40, "CAPIVARA"))
        characters.append(Character("Cuca", 10, 30, 50, "CUCA"))
        characters.append(Character("Curupira Azul", 10, 20, 50, "CURUPIRA"))
        characters.append(Character("Grilo", 10, 20, 30, "GRILO"))
        characters.append(Character("Guaraná", 10, 10, 50, "GUARANA"))
        characters.append(Character("Mico Leão", 10, 30, 50, "MICO_LEAO"))
        characters.append(Character("Pai-do-Mato", 10, 30, 20, "PAI_DO_MATO"))
        characters.append(Character("Professor Pépe", 10, 30, 50, "PEPE"))
        characters.append(Character("Pica-Pau Amarelo", 10, 30, 50, "PICA_PAU_AMARELO"))
        characters.append(Character("Saci", 10, 30, 30, "SACI"))
        characters.append(Character("Tatu", 10, 30, 10, "TATU"))
        characters.append(Character("Tucano", 10, 30, 10, "TUCANO"))
        characters.append(Character("Vitória Régia", 10, 30, 10, "VITORIA_REGIA"))
        
        
        super.viewDidLoad()
        self.view.backgroundColor = .darkGray
        
        myTable = UITableView(frame: CGRect(x: 10, y: 10+heigthStatusBar+heigthNavBar, width: widthScreen-20, height: heigthScreen-20-heigthStatusBar-heigthNavBar))
        
        myTable.delegate = self
        myTable.dataSource = self
        
        self.view.addSubview(myTable)
        
        myTable.register(CellTableViewController.self, forCellReuseIdentifier: "My Cell")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CellTableViewController = CellTableViewController(style: .default, reuseIdentifier: "My Cell")
        cell.textName.text = characters[indexPath.row].name!
        cell.textImage.image = UIImage(named: characters[indexPath.row].image!)
        
        let e = characters[indexPath.row].experience!
        let f = characters[indexPath.row].force!
        let a = characters[indexPath.row].agility!
        
        cell.textExperience.text = "Experiência: \(e)"
        cell.textForce.text = "Força: \(f)"
        cell.textAgility.text = "Agilidade: \(a)"
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        indice = indexPath.row
        myTable.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "My Segue", sender: nil)
        
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete){
            characters.remove(at: indexPath.row)
            myTable.reloadData()
        }
    }
}
