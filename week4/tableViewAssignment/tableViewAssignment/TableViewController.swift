//
//  ViewController.swift
//  tableViewAssignment
//
//  Created by Nicky Y on 2024/7/8.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 建立 UITableView
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        view.addSubview(tableView)
        
        // 建立重用格子的識別代號："Cell"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    // 兩個 section: 0, 1
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // 每個 section 中的 row 數量: 10, 5
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 10 : 5
    }
    
    // cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") ?? UITableViewCell(style: .default, reuseIdentifier: "Cell")   // 呼叫重用識別代號"Cell"，沒有的話重新建立一個新的識別代號"Cell"
        
        cell.textLabel?.text = "This is section \(indexPath.section), row \(indexPath.row)"
        
        return cell
    }
}



/*
 There are several methods defined in the UITableViewDataSource protocol. Which methods are called by the system after we manually call reloadData() of a table view and what are their sequences? Please describe in as much detail as possible.

 1. 首先調用section數量 -> numberOfSections(in:)
 2. 對每個section調用row數量 -> tableView(_:numberOfRowsInSection:)
 3. 對目前view中每個cell調用 -> tableView(_:cellForRowAt:)
 4. (optional) 對每個section調用header & footer -> tableView(_:titleForHeaderInSection:) 和 tableView(_:titleForFooterInSection:)
 5. (optional) 如果有需要編輯 -> tableView(_:canEditRowAt:) 和 tableView(_:canMoveRowAt:)
 */
