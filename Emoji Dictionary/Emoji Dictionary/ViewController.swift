//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Quentin Ikuta on 9/29/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var coolTableView: UITableView!
    
    var emojis : [Emoji] = [] // using an array of type Emoji
    
    
    override func viewDidLoad() { //this is default, runs first
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        coolTableView.dataSource = self // instructing table view toward data source
        coolTableView.delegate = self // instructing table view
        emojis = makeEmojiArry() // emojis is equal to the makeEmojiArry function at the bottom
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //how many rows do we want/need?
        return emojis.count //this is a count of our list of emojis
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //data source for a cell to insert in a particular location of the table view
        let cell = UITableViewCell() //constant that assigns each cell in the table to cell
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji //passes the each emoji from our list to the cell
        return cell // returns each emoji for each cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //was an row/cell selected?
        tableView.deselectRow(at: indexPath, animated: true) //turn on deselect annimation (don't indicate with shadow which was selected
        let emoji = emojis[indexPath.row] // connecting emoji with DefinitionViewController file to equal the sent emoji
        performSegue(withIdentifier: "moveSegue", sender: emoji) //perform segue from main page to definition page,send the emoji from above
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //
        let defVC = segue.destination as!
            DefinitionViewController // this is where the segue goes to
        defVC.emoji = sender as! Emoji // sending the emoji as a string 
    }
    
    
    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🤩"
        emoji1.birthYear = 2010
        emoji1.category = "Smileys"
        emoji1.definition = "A starstruck individual"
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🐛"
        emoji2.birthYear = 2010
        emoji2.category = "Insects"
        emoji2.definition = "A cute caterpillar"
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🦉"
        emoji3.birthYear = 2010
        emoji3.category = "Animals"
        emoji3.definition = "A curious owl"
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🌜"
        emoji4.birthYear = 2010
        emoji4.category = "Space"
        emoji4.definition = "A crescent moon"
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🗿"
        emoji5.birthYear = 2010
        emoji5.category = "Worldly Wonders"
        emoji5.definition = "The Moai head"
        let emoji6 = Emoji()
        emoji6.stringEmoji = "⛲️"
        emoji6.birthYear = 2010
        emoji6.category = "Figtures"
        emoji6.definition = "A beautiful water fountain"
        let emoji7 = Emoji()
        emoji7.stringEmoji = "♿️"
        emoji7.birthYear = 2010
        emoji7.category = "Signs"
        emoji7.definition = "A mobility sign"
        let emoji8 = Emoji()
        emoji8.stringEmoji = "⚔️"
        emoji8.birthYear = 2010
        emoji8.category = "Weapons"
        emoji8.definition = "Crossed Swords"
        let emoji9 = Emoji()
        emoji9.stringEmoji = "🇫🇯"
        emoji9.birthYear = 2010
        emoji9.category = "Flags"
        emoji9.definition = "Fiji Flag"
        let emoji10 = Emoji()
        emoji10.stringEmoji = "🇩🇲"
        emoji10.birthYear = 2010
        emoji10.category = "Flags"
        emoji10.definition = "Dominica Flag"
        
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10]
    }

}

