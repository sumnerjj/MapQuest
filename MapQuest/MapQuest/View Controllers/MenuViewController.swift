//
//  MenuViewController.swift
//  MapQuest
//
//  Created by Mushaheed Kapadia on 10/13/17.
//  Copyright © 2017 Mushaheed Kapadia. All rights reserved.
//

import UIKit

enum MenuItem : String {
    case MY_QUESTS = "MY_QUESTS"
    case ALL_QUESTS = "ALL_QUESTS"
    case CREATE_QUEST = "CREATE_QUEST"
    case IN_PROGRESS = "IN_PROGRESS"
    case COMPLETED = "COMPELETED"
}


class MenuViewController: UIViewController {

    @IBOutlet weak var menuItemsTable: UITableView!
    
    var burgerViewController: BurgerViewController!
    
    let menuItemsOrder: [MenuItem] = [.MY_QUESTS,
                                      .ALL_QUESTS,
                                      .CREATE_QUEST,
                                      .IN_PROGRESS,
                                      .COMPLETED]
    
    let menuItems: [MenuItem:String] = [.MY_QUESTS: "My Quests",
                                        .ALL_QUESTS: "All Quests",
                                        .CREATE_QUEST: "Create Quest",
                                        .IN_PROGRESS: "In Progress Quests",
                                        .COMPLETED: "Completed Quests"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuItemsTable.delegate = self
        menuItemsTable.dataSource = self
        
        menuItemsTable.estimatedRowHeight = 250
        menuItemsTable.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItemsOrder.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemCell") as! MenuItemTableViewCell
        cell.menuItem = menuItems[menuItemsOrder[indexPath.row]]
        return cell
    }
}
