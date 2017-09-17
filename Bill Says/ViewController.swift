//
//  ViewController.swift
//  Bill Says
//
//  Created by Royalty on 14/09/2017.
//  Copyright © 2017 Royalty Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var celebrities = ["the Steve Jobs", "the Stephen Curry", "the Madonna", "the Lagarfeld", "the Scarlett Johansson"]
    var places = ["of the fifth street", "of the Apple Store", "of Hollywood", "of the NBA", "of Disneyland"]
    
    

    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote() {
        
        // On séléctionne un élément alétoire parmi les célébrités
        let randomIndex1 = Int(arc4random_uniform(UInt32(celebrities.count)))
        let celebrity = celebrities[randomIndex1]
        print(celebrity)
        
        // On séléctionne un élément aléatoire parmi les activités
        let randomIndex2 = Int(arc4random_uniform(UInt32(places.count)))
        let place = places[randomIndex2]
        print(place)
        
        quoteLabel.text = "You are " + celebrity + " " + place
    }

}

