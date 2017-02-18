//
//  Course.swift
//  DormHub
//
//  Created by James Carroll on 2/17/17.
//  Copyright © 2017 vegans. All rights reserved.
//

class Course {
    
    fileprivate var title: String
    fileprivate var instructor: String
    fileprivate var units: Int
    
//    var quarters: [String]
//    var year: [Int]
//    var time: String
//    var days: String
//    var location: String
    
    init(title: String, instructor: String, units: Int) {
        self.title = title
        self.instructor = instructor
        self.units = units
    }
    
    func getTitle() -> String {
        return title
    }
    
    func getInstructor() -> String {
        return instructor
    }
    
    func getUnits() -> Int {
        return units
    }
    
}
