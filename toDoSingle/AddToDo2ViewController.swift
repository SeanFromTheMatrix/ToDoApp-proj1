//
//  AddToDo2ViewController.swift
//  toDoSingle
//
//  Created by Sean Bukich on 9/29/17.
//  Copyright © 2017 Sean Bukich. All rights reserved.
//

import UIKit

class AddToDo2ViewController: UIViewController {
    
    @IBOutlet weak var textFieldVc: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton) {
        
        if (textFieldVc.text?.characters.count)! <= 0 {
            
            print("type more")
            
        }
            
        else {
            
            self.performSegue(withIdentifier: "oneTime", sender: textFieldVc.text!)
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
        
        if segue.identifier == "oneTime" {
            
            let go  = sender as! String
            
            let destination = segue.destination as! AddToDoTVC
            destination.arrayOfToDo.append(go)
            
            
            destination.tableView.reloadData()
        }
    }
    

}
