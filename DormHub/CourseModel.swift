//
//  ClassesModel.swift
//  DormHub
//
//  Created by James Carroll on 2/17/17.
//  Copyright © 2017 vegans. All rights reserved.
//

class CourseModel {
    
    fileprivate var courseList : [Course]
    
    init() {
        courseList = []
        var courseTitle = ["CS106A", "CS106B", "PHIL 178", "CME 102", "CME 102A", "CS 109", "CS 142", "PWR 2AB", "ENGR 40M", "EARTH 2"]
        var instructors = ["Chris Piech", "Keith Schwarz", "Poopfart", "Hung Le", "Hung Le", "Mehran Sahami", "Mendel Rosenblum", "Angela Becerra", "Mark Horowitz", "Noah Diffenbaugh"]
        var units = [5, 5, 4, 5, 2, 5, 3, 4, 5, 3]
        
        for i in 0...9 {
            var course = Course(title: courseTitle[i], instructor: instructors[i], units: units[i])
            self.courseList.append(course)
        }
    }
    
    func getAllCourses() -> [Course] {
        return courseList
    }
    
    func searchForCourses(substr: String) -> [Course] {
        var matchedCourses : [Course] = []
        for course in courseList {
            if (course.getTitle().contains(substr)) {
                matchedCourses.append(course)
            }
        }
        return matchedCourses
    }
    
}
