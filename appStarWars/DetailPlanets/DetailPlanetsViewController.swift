//
//  DetailPlanetsViewController.swift
//  Star Wars
//
//  Created by luis hector hernandez godinez  on 23/06/23.
//

import UIKit

class DetailPlanetsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var rotationLabel: UILabel!
    @IBOutlet weak var orbitLabel: UILabel!
    @IBOutlet weak var diameterLaber: UILabel!
    @IBOutlet weak var climateLabel: UILabel!
    @IBOutlet weak var gravityLabel: UILabel!
    @IBOutlet weak var terrainLabel: UILabel!
    @IBOutlet weak var surfaceLabel: UILabel!
    @IBOutlet weak var populationLabel: UILabel!


    var arrayDeatilPlanets: ResultsPlanet?
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "INFORMACIÓN"
        nameLabel.text = arrayDeatilPlanets?.name
        rotationLabel.text = arrayDeatilPlanets?.rotation_period
        orbitLabel.text = arrayDeatilPlanets?.orbital_period
        diameterLaber.text = arrayDeatilPlanets?.diameter
        climateLabel.text = arrayDeatilPlanets?.climate
        gravityLabel.text = arrayDeatilPlanets?.gravity
        terrainLabel.text = arrayDeatilPlanets?.terrain
        surfaceLabel.text = arrayDeatilPlanets?.surface_water
        populationLabel.text = arrayDeatilPlanets?.population

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
