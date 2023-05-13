//
//  TableViewController.swift
//  myList
//
//  Created by Dariya Gecher on 05.05.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
//    var arrayNames = ["Alya", "Adrien", "Luka", "Wang", "Chloé "]
//    var arraySurnames = ["Césaire", "Agreste", "Couffaine", "Fu", "Bourgeois"]
//    var arrayImage = ["alya", "adrien", "luka", "wang", "chloe"]

    var arrayPersons = [
        Person(name: "Alya", surname: "Césaire", nick: "Rena Rouge, Lady Wifi, Oblivio", imageName: "alya", episode: 1.1, gender: "F", age: 15, power: "les forces proviennent de son smartphone et de son signal Wi-Fi.", hardest: 2),
        Person(name: "Adrien", surname: "Agreste", nick: "Chat Noir, Chat Blanc", imageName: "adrien", imageSecond: "supercat", evilImageName: "catblank", episode: 1.1, gender: "M", age: 15, power: "the power of destruction", hardest: 5, describe: "Lorsque Marinette commet une grave erreur, elle doit en assumer les conséquences et se battre contre quelqu'un qu'elle ne savait même pas qu'elle pouvait accumuler."),
                        Person(name: "Luka", surname: "Couffaine", imageName: "luka", episode: 3.3, gender: "F", age: 15, power: "antibug", hardest: 2),
                        Person(name: "Felix", surname: "Fu", imageName: "wang", episode: 3.3, gender: "F", age: 15, power: "antibug", hardest: 2),
        Person(name: "Chloé", surname: "Bourgeois", nick: "Queen Bee, AntiBug, Queen Wasp", imageName: "chloe", imageSecond: "queenbee", evilImageName: "queenwasp", episode: 1.1, gender: "F", age: 15, power: "immobilizing her target for a set amount of time", hardest: 3),
                        Person(name: "Aurore", surname: "Beauréal", nick: "Climatika", imageName: "aurora", evilImageName: "stormy", episode: 3.3, gender: "F", age: 15, power: "antibug", hardest: 2)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    
    @IBAction func addPerson(_ sender: Any) {
//        arrayNames.append("new name")
//        arraySurnames.append("new surname")
//        arrayImage.append("avatar")
        
        arrayPersons.append(Person(name: "new name", surname: "new surname", imageName: "avatar"))
        
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPersons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let labelNames = cell.viewWithTag(1000) as! UILabel
        labelNames.text = arrayPersons[indexPath.row].name
        
        let labelSurnames = cell.viewWithTag(1001) as! UILabel
        labelSurnames.text = arrayPersons[indexPath.row].surname
        
        let mainImage = cell.viewWithTag(1002) as! UIImageView
        mainImage.image = UIImage(named: arrayPersons[indexPath.row].imageSecond)
        mainImage.image = UIImage(named: arrayPersons[indexPath.row].imageName)
        
        let imageView = cell.viewWithTag(1002) as! UIImageView
        imageView.image = mainImage.image

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 60
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailedViewController") as! ViewController
        
//        detailVC.name = arrayPersons[indexPath.row].name
//        detailVC.surname = arrayPersons[indexPath.row].surname
//        detailVC.imageName = arrayPersons[indexPath.row].imageName
        
        detailVC.person = arrayPersons[indexPath.row]
        
        navigationController?.show(detailVC, sender: self)
    }
    

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
//            arrayNames.remove(at: indexPath.row)
//            arraySurnames.remove(at: indexPath.row)
//            arrayImage.remove(at: indexPath.row)
            
            arrayPersons.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
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
