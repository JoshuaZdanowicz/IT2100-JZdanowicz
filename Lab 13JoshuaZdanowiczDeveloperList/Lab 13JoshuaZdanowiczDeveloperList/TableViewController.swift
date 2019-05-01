//
//  TableViewController.swift
//  Lab 13JoshuaZdanowiczDeveloperList
//
//  Created by Joshua Zdanowicz on 4/25/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    // Array with developer names (note: matches image names):
    let webDevelopers: [String] = ["Al Dente", "Armand Hammer", "Barry Cade", "Cara Van"]
    let mobileDevelopers: [String] = ["Ginger Ayle", "June Bugg", "Iona Ford", "Sue Flay",
                                      "Tim Burr", "Will Wynn"]
    
    // Array with developer titles:
    let webDevelopersTitle: [String] = ["Full Stack", "ASP.NET", "PHP", "Node.js, Angular, and React"]
    let mobileDevelopersTitle: [String] = ["iOS with Swift", "iOS and Android", "iOS wit Objective-C", "iOS with Swift and Objective-C", "Android", "Ionic"]
    
    let webDevelopersDetails: [String] = ["A full stack developer capable of front-end and back-end development in a Windows environment.","Back-end developer focused on database applications using a variety of DBMSs.",
    "Several years experience writing PHP with database connectvity using Linux and Windows.",
    "Newby developer with great demonstration of skills using Node.js and Angular. Some recent work in React."
    ]
    let mobileDevelopersDetails: [String] = ["12 apps developed using Swift and Xcode",
                                             "Senior app developer with experience in Android and iOS development",
        "Maintains large code base still in Objective-C. Working to learn Swift.",
        "Staff expert in Objective-C. Lead efforts to upgrade from Objective-C to Swift.",
        "Android expert with experience raning to days of Eclipse to current Android Studioversions.","Prototyping go-to. Uses Ionic to spin up fast prototypes for all apps."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Web Developers"
        }
        else {
            return "Mobile Developers"
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return webDevelopers.count
        }
        else {
            return mobileDevelopers.count
        }
    }
    
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "developerCell", for: indexPath)
        if indexPath.section == 0 {
            cell.textLabel?.text = webDevelopers[indexPath.row]
            let developerImage = UIImage(named:webDevelopers[indexPath.row])
            cell.imageView!.image = developerImage
        }
        else {
            cell.textLabel?.text = mobileDevelopers[indexPath.row]
            let developerImage = UIImage(named:mobileDevelopers[indexPath.row])
            cell.imageView!.image = developerImage
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var developerDetails: String = ""
        if indexPath.section == 0 {
            developerDetails = "\(webDevelopersTitle[indexPath.row])\n\n\(webDevelopersDetails[indexPath.row])"
        }
        else {
            developerDetails = "\(mobileDevelopersTitle[indexPath.row])\n\n\(mobileDevelopersDetails[indexPath.row])"
        }
        let alertController=UIAlertController(title: "Developer Selected", message:
            developerDetails, preferredStyle: UIAlertController.Style.alert)
        let defaultAction=UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel, handler: nil)
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
        
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
