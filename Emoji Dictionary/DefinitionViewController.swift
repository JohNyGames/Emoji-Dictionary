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
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🐶"{
            definition.text = "Sup Dog?"
        }
        if emoji == "🐭"{
            definition.text = "Shhh! Quiet as a mouse"
        }
        if emoji == "🐰"{
            definition.text = "What's up doc?"
        }
        if emoji == "🦊"{
            definition.text = "What does the fox say?"
        }
        if emoji == "🐻"{
            definition.text = "You barely see bears"
        }
        if emoji == "🦁"{
            definition.text = "King of the jungle!"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
