//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Quentin Ikuta on 9/29/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var coolTableView: UITableView!
    
    var emojis = ["🤩", "🐛", "🦉", "🌜", "🗿", "⛲️", "♿️", "⚔️", "🇫🇯", "🇩🇲"] // add or remove emojis for the app here
    
    
    override func viewDidLoad() { //this is default
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        coolTableView.dataSource = self // instructing table view toward data source
        coolTableView.delegate = self // instructing table view
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //how many rows do we want/need?
        return emojis.count //this is a count of our list of emojis
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //data source for a cell to insert in a particular location of the table view
        let cell = UITableViewCell() //constant that assigns each cell in the table to cell
        cell.textLabel?.text = emojis[indexPath.row] //passes the each emoji from our list to the cell
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
        defVC.emoji = sender as! String // sending the emoji as a string 
    }
    
    
    

}

