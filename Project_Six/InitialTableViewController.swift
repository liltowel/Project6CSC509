//
//  InitialTableViewController.swift
//  Project_Six
//
//  Created by Patrick Alston on 1/15/20.
//  Copyright © 2020 Patrick Alston. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import WebKit

class InitialTableViewController: UITableViewController {
    let defaults = UserDefaults.standard
    var tasks: [String] = []
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

//    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    
        if let taskData = defaults.array(forKey: "tasks") as? [String] {
            tasks = taskData
        } else {
       
        defaults.set([String](), forKey: "tasks")
        }
            tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1   }
   
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)

        if let cellWithOtherName = cell as? InitialTableViewCell {
            cellWithOtherName.taskNameLabel.text = tasks[indexPath.row]

//        }

        return cell
       }
        if let taskData = defaults.array(forKey: "tasks") as? [String] {
            tasks = taskData
        } else {
        
            defaults.set([String](), forKey: "tasks")
        }
        tableView.reloadData()
        return cell
    }
    func loadYoutube(videoID:String) {
        guard
            let youtubeURL = URL(string: "https://www.youtube.com/watch?v=3YmMNpbFjp0")
            else { return }
        print(URLRequest(url: youtubeURL) )
    }
//    func playVideo(){
//        guard let url = URL(string: "https://www.youtube.com/watch?v=3YmMNpbFjp0") else {
//            return
//        }
////         Create an AVPlayer, passing it the HTTP Live Streaming URL.
//        let player = AVPlayer(url: url)
//
////         Create a new AVPlayerViewController and pass it a reference to the player.
//        let controller = AVPlayerViewController()
//        controller.player = player
//
////         Modally present the player and call the player's play() method when complete.
//        present(controller, animated: true) {
//            player.play()
//    }

    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tasks.remove(at: indexPath.row)
            defaults.set([String](tasks), forKey: "tasks")
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            // make a new movie vc
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let movieVC = storyboard.instantiateViewController(withIdentifier: "movieVC")
            navigationController?.pushViewController(movieVC, animated: true)
            return loadYoutube(videoID: "https://www.youtube.com/watch?v=3YmMNpbFjp0")
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    
        // GET HELP FROM DR Z
//        movieVC = MovieViewController()
        
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}


