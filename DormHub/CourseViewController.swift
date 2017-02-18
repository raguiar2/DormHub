//
//  CourseViewController.swift
//  DormHub
//
//  Created by James Carroll on 2/17/17.
//  Copyright © 2017 vegans. All rights reserved.
//

import UIKit

class CourseViewController: UITableViewController {
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    
//    var courseModel = CourseModel();
//    
//    @IBOutlet weak var courseSearchBar: UISearchBar!
//    
//    @IBAction func searchCourses(_ sender: UIButton) {
//        var searchTerm = courseSearchBar.text!
//        var courses = courseModel.searchForCourses(substr: searchTerm)
//        for course in courses {
//            print(course.getTitle())
//        }
//        
//        // display data
//    }

}
