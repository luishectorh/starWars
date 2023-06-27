//
//  PersonViewController.swift
//  Star Wars
//
//  Created by luis hector hernandez godinez  on 21/06/23.
//

import UIKit

class PersonViewController: UIViewController {


    @IBOutlet weak var tablePerson: UITableView!

    var arrayPeople: [Results] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "PERSONAJES"
        tablePerson.delegate = self
        tablePerson.dataSource = self
        tablePerson.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        PeopleData()
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

    func PeopleData(){
        NetworkingProvider.shared.retrieveDeta(){ result in
            switch result {
            case .success(let response):

                DispatchQueue.main.async {
                    self.arrayPeople = response.results 
                    self.tablePerson.reloadData()
                }
            case .failure(_):
                break
            }
        }
    }

}
extension PersonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return arrayPeople.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PersonTableViewCell
        let result = self.arrayPeople[indexPath.row]
        cell?.nameLabel.text = result.name
        return cell!
    }


}
extension PersonViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let result = self.arrayPeople[indexPath.row]
        let nextViewController = DetailPersonViewController()
        nextViewController.detailPeroson = result
        navigationController?.pushViewController(nextViewController, animated: true)
    }
}
