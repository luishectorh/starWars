//
//  DetailPersonViewController.swift
//  Star Wars
//
//  Created by luis hector hernandez godinez  on 22/06/23.
//

import UIKit

class DetailPersonViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var hairColorLabel: UILabel!
    @IBOutlet weak var skinColoLabel: UILabel!
    @IBOutlet weak var eyeColorLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!



    var detailPeroson: Results?

    var arrayDetailUser: [DetailReponse] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = detailPeroson?.name
        heightLabel.text = detailPeroson?.height
        massLabel.text = detailPeroson?.mass
        hairColorLabel.text = detailPeroson?.hair_color
        skinColoLabel.text = detailPeroson?.skin_color
        eyeColorLabel.text = detailPeroson?.eye_color
        birthYearLabel.text = detailPeroson?.birth_year
        genderLabel.text = detailPeroson?.gender

        // Do any additional setup after loading the view.
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
