//
//  ViewController.swift
//  SuperHeroes
//
//  Created by Can Öncü on 16.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var marvelLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    var heroesArray = [heroes]()
    var userChoice : heroes?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        //heroes
        let spiderMan = heroes(name:"Spider Man", universe: "MARVEL Universe", image: UIImage (named: "spiderMan")!)
        let blackWidow = heroes(name:"Black Widow ", universe: "MARVEL Universe", image: UIImage (named: "blackWidow")!)
        let blackPanther = heroes(name:"Black Panther", universe: "MARVEL Universe", image: UIImage (named: "blackPanther")!)
        let captain = heroes(name:"Captain America", universe: "MARVEL Universe", image: UIImage (named: "captain")!)
        
            heroesArray = [spiderMan,blackWidow,blackPanther,captain]
 
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroesArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = heroesArray[indexPath.row].name
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.orange
        cell.selectedBackgroundView = backgroundView
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userChoice = heroesArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.chosenHero = userChoice
        }
    }


}

