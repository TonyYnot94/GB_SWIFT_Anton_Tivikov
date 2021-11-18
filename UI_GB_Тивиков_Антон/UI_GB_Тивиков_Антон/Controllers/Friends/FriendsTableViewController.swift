//
//  FriendsTableViewController.swift
//  UI_GB_Тивиков_Антон
//
//  Created by Антон Тивиков on 09.11.2021.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    var names = ["Mel Gibson","Jason Statham","Vin Diesel","Dwayne Johnson","Bruce Willis"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundView = UIImageView(image: #imageLiteral(resourceName: "5"))
    }

    // MARK: - Table view data source

  /*  override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return names.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! FriendsTableViewCell
        let name = names[indexPath.row]
        cell.friendName.text = name
        cell.friendPhoto.image = UIImage(named: name)
        

        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        guard let cell = sender as? FriendsTableViewCell else{return}
        guard let photocard = segue.destination as? PhotoCollectionViewController else{return}
        photocard.photoCard = cell.friendPhoto.image
   }
 
}
