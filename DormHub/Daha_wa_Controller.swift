//
//  Daha_wa_Controller.swift
//  DormHub
//
//  Created by Rui Aguiar on 2/17/17.
//  Copyright © 2017 vegans. All rights reserved.
//

import UIKit

class Daha_wa_Controller: UIViewController, UITableViewDelegate,UITableViewDataSource {
    // These strings will be the data for the table view cells
    @IBOutlet var tableView: UITableView!
    var newButton = UIButton(type: .roundedRect)


    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var tasks: [DAHAPost] = []
    let cellReuseIdentifier = "cell"
    let cellSpacingHeight: CGFloat = 5
    
    //Sets up table
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.allowsSelection = true
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        tableView.reloadData()
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
            tasks=tasks.reversed()

        } catch {
            print("Fetching Failed")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }

    
    override func viewWillAppear(_ animated: Bool) {
        getData()
        tableView.reloadData()
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!

        let task = self.tasks[indexPath.section]
        cell.textLabel?.text = task.name
        
        cell.backgroundColor = UIColor.white
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true

               return cell
    }
    //number of sectons
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.tasks.count
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //performSegue(withIdentifier: "table_to_post", sender: self)

    }
    
    // Make the background color show through
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
       // let backgroundcolor =  UIColor(red: 94/255.0, green: 218/255.0, blue: 219/255.0, alpha: 1.0)

        headerView.backgroundColor = UIColor.clear
        return headerView
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
