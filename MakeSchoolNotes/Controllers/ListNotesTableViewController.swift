//
//  ListNotesTableViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16. Modifed by FG
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class ListNotesTableViewController: UITableViewController {
    
    @IBAction func unwindWithSegue(_ segue: UIStoryboardSegue) {
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "listNotesTableViewCell", for: indexPath) as! ListNotesTableViewCell
        cell.noteTitleLabel.text = "Note's title"
        cell.noteModificationTimeLabel.text = "note's modification time"
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let identifer = segue.identifier else { return }
        
        switch identifer {
            
        case "displayNote":
            
            print("note cell tapped")
            
        case "addNote" :
            
            print("create note bar button item tapped")

        default:
            print("unexpected segue identifier")
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
