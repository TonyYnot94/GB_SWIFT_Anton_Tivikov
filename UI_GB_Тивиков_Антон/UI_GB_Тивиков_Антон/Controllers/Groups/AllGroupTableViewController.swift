//
//  AllGroupTableViewController.swift
//  UI_GB_Тивиков_Антон
//
//  Created by Антон Тивиков on 16.11.2021.
//

import UIKit

class AllGroupTableViewController: UITableViewController {
    
    var names = ["Спорт","Автомобили","Книги","Фильмы"]

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundView = UIImageView(image: #imageLiteral(resourceName: "4"))

       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return names.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupCell", for: indexPath) as! GroupsTableViewCell
        let name = names[indexPath.row]
        cell.groupName.text = name
        cell.groupPhoto.image = UIImage(named: name)
        

        return cell
    }
}
