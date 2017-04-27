//
//  Todo.swift
//  Today
//
//  Created by Brian McMinn on 4/26/17.
//  Copyright © 2017 Brian McMinn. All rights reserved.
//

import UIKit

class Todo: NSObject {
    var task: String?
    var time: String?
    var priority: String?
    var status: String?
    
    init(task: String? = nil, time: String? = nil, priority: String? = nil, status: String? = nil) {
        self.task = task
        self.time = time
        self.priority = priority
        self.status = status
        super.init()
    }
}
