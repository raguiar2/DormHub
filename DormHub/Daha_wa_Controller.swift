//
//  Daha_wa_Controller.swift
//  DormHub
//
//  Created by Rui Aguiar on 2/17/17.
//  Copyright © 2017 vegans. All rights reserved.
//

import UIKit

class Daha_wa_Controller: UIViewController, UITableViewDelegate {
    // These strings will be the data for the table view cells
    @IBOutlet var tableView: UITableView!

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var tasks: [DAHAPost] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 109
        tableView.rowHeight = UITableViewAutomaticDimension
        //tableView.dataSource = tasks
        tableView.reloadData()
        print("HI")
        getData()
        print(tasks.count)
        // These tasks can also be done in IB if you prefer.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func postButton(_ sender: Any) {
        
    }
    
    //Gets data from the posts.
    func getData() {
        do {
            tasks = try context.fetch(DAHAPost.fetchRequest())
        } catch {
            print("Fetching Failed")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getData()
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        
        if let myName = task.name {
            cell.textLabel?.text = myName
        }
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
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
