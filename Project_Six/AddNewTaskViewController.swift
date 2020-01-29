//
//  AddNewTaskViewController.swift
//  Project_Six
//
//  Created by Patrick Alston on 1/22/20.
//  Copyright © 2020 Patrick Alston. All rights reserved.
//

import UIKit

class AddNewTaskViewController: UIViewController {
    let defaults = UserDefaults.standard
    var tasks: [String] = []
    
    @IBOutlet weak var taskText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let taskData = defaults.array(forKey: "tasks") as? [String] {
        
        tasks = taskData
        } else {
           
            defaults.set([String](), forKey: "tasks")
        
    }
    
}
    @IBAction func typeInTheTaskButton(_ sender: Any) {
        let newTask: String = taskText.text!
            tasks.append ("\(newTask)")
            
//            tableView.reloadData()
        
            defaults.set(tasks, forKey: "tasks")
        
        
        if let tableViewController = navigationController?.viewControllers.first as? InitialTableViewController {
            tableViewController.viewDidLoad()
        
        }
        navigationController?.popViewController(animated: true)
//        navigationController?.viewControllers.first.
    }
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


