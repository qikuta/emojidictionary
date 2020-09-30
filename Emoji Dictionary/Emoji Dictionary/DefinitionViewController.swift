//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Quentin Ikuta on 9/29/20.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var birthYearLabel: UILabel!
    
    
    @IBOutlet weak var categoryLabel: UILabel! // link to the category text
    
    @IBOutlet weak var definitionLabel: UILabel! //link to storyboard definition label
    
    @IBOutlet weak var emojiLabel: UILabel! //link to storyboard of definition emoji
    
    var emoji = Emoji() // this is a placeholder, once an emoji is selected, the sender provides the selected emoji from the ViewController file
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Birthyear: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
        
        
    }
    

}



