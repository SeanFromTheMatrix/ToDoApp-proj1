//
//  AddToDoViewController.swift
//  toDoSingle
//
//  Created by Sean Bukich on 9/28/17.
//  Copyright © 2017 Sean Bukich. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    
    @IBOutlet weak var todoTextField: UITextField!
    
    @IBOutlet weak var importanceSwitch: UISwitch!
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        
        if (todoTextField.text?.characters.count)! <= 0 {
            
            print("type something")
        
        } else {
            
            var appendText = ""
            
            if importanceSwitch.isOn {
                appendText = "🔜 "
            }

        
            self.performSegue(withIdentifier: "buttonIdentifier", sender: appendText + todoTextField.text!)
            
        }
        
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func save(text: String) {
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        
        if segue.identifier == "buttonIdentifier" {
            
            let go  = sender as! String
            
            let destination = segue.destination as! ToDoTableViewController
            destination.todoName.append(go)
            
            
            destination.tableView.reloadData()
        }
        
    }
    
    
    
}
