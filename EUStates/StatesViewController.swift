//
//  StatesViewController.swift
//  EUStates
//
//  Created by Patrick Bean on 4/14/19.
//  Copyright © 2019 TheDevBean. All rights reserved.
//

import UIKit

class StatesViewController: UITableViewController {
    
    let states = NSMutableArray(capacity: 15)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundColor = UIColor.red
        initStates()
    }
    
    func initStates() {
        states[0] = "Austria"
        states[1] = "Belgium"
        states[2] = "Bulgaria"
        states[3] = "Croatia"
        states[4] = "Cyprus"
        states[5] = "Czech Republic"
        states[6] = "Denmark"
        states[7] = "Estonia"
        states[8] = "Finland"
        states[9] = "France"
        states[10] = "Germany"
        states[11] = "Greece"
        states[12] = "Hungary"
        states[13] = "Ireland"
        states[14] = "Italy"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return states.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StateCell", for: indexPath)

        let cellText = "\(indexPath.row): \(states[indexPath.row])"
        cell.textLabel!.text = cellText

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
