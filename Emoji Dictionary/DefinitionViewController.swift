//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by John Nyberg on 7/10/17.
//  Copyright © 2017 JohnnyGames. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definition: UILabel!
    
    @IBOutlet weak var category: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🐶"{
            definition.text = "Sup Dog?"
            category.text = "Category: Animal"
            dateLabel.text = "Inception: 2009"
        }
        if emoji == "🐭"{
            definition.text = "Shhh! Quiet as a mouse"
            category.text = "Category: Animal"
            dateLabel.text = "Inception: 2009"
        }
        if emoji == "🐰"{
            definition.text = "What's up doc?"
            category.text = "Category: Animal"
            dateLabel.text = "Inception: 2016"
        }
        if emoji == "🦊"{
            definition.text = "What does the fox say?"
            category.text = "Category: Animal"
            dateLabel.text = "Inception: 2016"
        }
        if emoji == "🐻"{
            definition.text = "You barely see bears"
            category.text = "Category: Animal"
            dateLabel.text = "Inception: 2017"
        }
        if emoji == "🦁"{
            definition.text = "King of the jungle!"
            category.text = "Category: Animal"
            dateLabel.text = "Inception: 2017"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
