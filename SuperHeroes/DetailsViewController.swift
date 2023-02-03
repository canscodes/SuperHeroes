//
//  DetailsViewController.swift
//  SuperHeroes
//
//  Created by Can Öncü on 16.09.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var superHeroImage: UIImageView!
    @IBOutlet weak var superHeroUniverse: UILabel!
    @IBOutlet weak var superHeroName: UILabel!
    
    var chosenHero : heroes?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        superHeroName.text = chosenHero?.name
        superHeroUniverse.text = chosenHero?.universe
        superHeroImage.image = chosenHero?.image
       
    }
    

 

}
