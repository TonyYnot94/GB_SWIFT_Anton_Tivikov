//
//  GroupTableViewController.swift
//  UI_GB_Тивиков_Антон
//
//  Created by Антон Тивиков on 09.11.2021.
//

import UIKit

class GroupTableViewController: UITableViewController {
    
    
    var names = ["Спорт","Автомобили","Книги","Фильмы"]
   // var rowIndex = Int() костыль
    
   
    @IBAction func addGroup(segue: UIStoryboardSegue) {
    // Проверяем идентификатор перехода, чтобы убедиться, что это нужный
    if segue.identifier == "addGroup" {
    // Получаем ссылку на контроллер, с которого осуществлен переход
    guard let allGroupController = segue.source as? AllGroupTableViewController else { return }
    // Получаем индекс выделенной ячейки
    if let indexPath = allGroupController.tableView.indexPathForSelectedRow {
    // Получаем группу по индексу
    let name = allGroupController.names[indexPath.row]
    // Проверяем, что такой группы нет в списке
    if !names.contains(name) {
    // Добавляем группу в список выбранных
    names.append(name)
    // Обновляем таблицу
    tableView.reloadData()
        
    }
        
    }
        
    }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundView = UIImageView(image: #imageLiteral(resourceName: "3"))
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupCell", for: indexPath) as! GroupsTableViewCell
        let name = names[indexPath.row]
        cell.groupName.text = name
        cell.groupPhoto.image = UIImage(named: name)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        // Если была нажата кнопка «Удалить»
        if editingStyle == .delete {
            // Удаляем группу из массива
        names.remove(at: indexPath.row)
            // И удаляем строку из таблицы
        tableView.deleteRows(at: [indexPath], with: .fade) }
    }

    //не разобрался как сделать с помощью кнопки, но в процессе
//    @IBAction func deleteGroup(_ sender: UIButton) {
//
//
//        self.names.remove(at: rowIndex)
//        print(names)
//        tableView.reloadData()
//
//    }


}
