//
//  CourseViewController.swift
//  DormHub
//
//  Created by James Carroll on 2/17/17.
//  Copyright © 2017 vegans. All rights reserved.
//

import UIKit

class CourseViewController: UITableViewController {
    
    var courseModel = CourseModel()
    var allCourses = [Course]()
    var filteredCourses = [Course]()
    let searchController = UISearchController(searchResultsController: nil)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allCourses = courseModel.getAllCourses()

        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = true
        definesPresentationContext = true
        searchController.searchBar.barTintColor = UIColor.init(red: 4/255, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: 1)
        tableView.tableHeaderView = searchController.searchBar
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.isActive && searchController.searchBar.text != "" {
            return filteredCourses.count
        }
        return allCourses.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let course: Course
        if searchController.isActive && searchController.searchBar.text != "" {
            course = filteredCourses[indexPath.row]
        } else {
            course = allCourses[indexPath.row]
        }
        cell.textLabel?.text = course.getTitle()
        cell.detailTextLabel?.text = course.getInstructor()
        return cell
    }
    
    func filterContentForSearchText(searchText: String, scope: String = "All") {
        filteredCourses =  courseModel.searchForCourses(substr: searchText)
        tableView.reloadData()
    }
    
}

extension CourseViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchText: searchController.searchBar.text!)
    }
}
