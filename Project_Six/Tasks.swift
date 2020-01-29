//
//  Tasks.swift
//  Project_Six
//
//  Created by Patrick Alston on 1/15/20.
//  Copyright © 2020 Patrick Alston. All rights reserved.
//

import Foundation

struct Task {
    var nameOfTask: String
    var timeOfNeededCompletion: String
    var urgency: String
    var frequency: String
init(nameOfTask: String, timeOfNeededCompletion: String, urgency: String,
            frequency: String) {
        self.nameOfTask = nameOfTask
        self.timeOfNeededCompletion = timeOfNeededCompletion
        self.urgency = urgency
        self.frequency = frequency
    }
}

