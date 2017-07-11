//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by John Nyberg on 7/10/17.
//  Copyright © 2017 JohnnyGames. All rights reserved!
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
        
    }
    //How many rows do you want in the table view?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    //What do you want in each row in the table view?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defvc = segue.destination as! DefinitionViewController
        defvc.emoji = sender as! Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🐶"
        emoji1.inception = 2010
        emoji1.category = "Animals"
        emoji1.definition = "Sup Dog?"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🐭"
        emoji2.inception = 2010
        emoji2.category = "Animals"
        emoji2.definition = "Shhh. Quiet as a mouse."
       
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐰"
        emoji3.inception = 2010
        emoji3.category = "Animals"
        emoji3.definition = "What's up doc?"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🦊"
        emoji4.inception = 2010
        emoji4.category = "Animals"
        emoji4.definition = "What does the fox say?"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐻"
        emoji5.inception = 2010
        emoji5.category = "Animals"
        emoji5.definition = "You barely see bears?"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🦁"
        emoji6.inception = 2010
        emoji6.category = "Animals"
        emoji6.definition = "King of the Jungle"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }

}

