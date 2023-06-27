//
//  MenuViewController.swift
//  Star Wars
//
//  Created by luis hector hernandez godinez  on 23/06/23.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var peopleButton: UIButton!
    @IBOutlet weak var planetsButton: UIButton!
    @IBOutlet weak var nameUserLabel: UILabel!

    var userName: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("username\(userName)")
        nameUserLabel.text = userName
        // Do any additional setup after loading the view.
    }


    @IBAction func selectedPersonAction(_ sender: Any) {
        let vc = PersonViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func planetButton(_ sender: Any) {
        let vc = PlanetsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
