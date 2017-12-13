//
//  ToDoTableViewController.swift
//  toDoSingle
//
//  Created by Sean Bukich on 9/28/17.
//  Copyright © 2017 Sean Bukich. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var todoName: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        

    }
    
    @IBAction func unwindToVC1(_ segue: UIStoryboardSegue) { }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = todoName[indexPath.row]
        
        
        return cell
    }
 


    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .fade)
            todoName.remove(at: indexPath.row)
            tableView.endUpdates()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    

}
