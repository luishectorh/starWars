//
//  PlanetsViewController.swift
//  Star Wars
//
//  Created by luis hector hernandez godinez  on 22/06/23.
//

import UIKit

class PlanetsViewController: UIViewController {
    
    @IBOutlet weak var planetCollectionView: UICollectionView!
    
    var arrayPlanet: [ResultsPlanet] = []
    
    private let myCell = UIScreen.main.bounds.width / 2
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "PLANETAS"
        planetCollectionView.dataSource = self
        planetCollectionView.delegate = self
        planetCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        dataPlanet()
        // Do any additional setup after loading the view.
    }
    
    func dataPlanet(){
        NetworkingProvider.shared.dataPlanet(){ result in
            switch result {
            case .success(let response):
                
                DispatchQueue.main.async {
                    self.arrayPlanet = response.results
                    self.planetCollectionView.reloadData()
                }
            case .failure(_):
                break
            }
        }
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
extension PlanetsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayPlanet.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell
        let result = self.arrayPlanet[indexPath.row]
        cell?.titleLabel.text = result.name
        return cell!
    }
    
    
}
extension PlanetsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let result = self.arrayPlanet[indexPath.row]
        let nextViewController = DetailPlanetsViewController()
        nextViewController.arrayDeatilPlanets = result
        navigationController?.pushViewController(nextViewController, animated: true)
    }
}
extension PlanetsViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: myCell, height: myCell)
    }
}
