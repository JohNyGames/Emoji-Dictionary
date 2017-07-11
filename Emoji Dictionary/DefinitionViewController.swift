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
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        dateLabel.text = "Inception: \(emoji.inception)"
        category.text = "Category: \(emoji.category)"
        definition.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
