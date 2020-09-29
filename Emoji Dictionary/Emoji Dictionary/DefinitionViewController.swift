//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Quentin Ikuta on 9/29/20.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel! //link to storyboard definition label
    
    @IBOutlet weak var emojiLabel: UILabel! //link to storyboard of definition emoji
    
    var emoji = "NO EMOJI" // this is a placeholder, once an emoji is selected, the sender provides the selected emoji from the ViewController file 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        
        //add or remove emoji definitions here, match to emojis in viewcontroller
        if emoji == "🤩"{
            definitionLabel.text = "A star-struck individual"
        }
        if emoji == "🐛"{
            definitionLabel.text = "A cute Caterpillar!"
        }
        if emoji == "🦉"{
            definitionLabel.text = "A howlin' Owl!"
        }
        if emoji == "🌜"{
            definitionLabel.text = "A crescent moon"
        }
        if emoji == "🗿"{
            definitionLabel.text = "The Moai head from Easter Island"
        }
        if emoji == "⛲️"{
            definitionLabel.text = "A beautiful water fountain"
        }
        if emoji == "♿️"{
            definitionLabel.text = "Wheel-chair accessibility icon"
        }
        if emoji == "⚔️"{
            definitionLabel.text = "crossed swords"
        }
        if emoji == "🇫🇯"{
            definitionLabel.text = "Fiji Flag"
        }
        if emoji == "🇩🇲"{
            definitionLabel.text = "Dominica Flag"
        }
    
        
    }
    

}



