//
//  Workout.swift
//  Sets
//
//  Created by Cam Linke on 2015-12-11.
//  Copyright © 2015 camlinke. All rights reserved.
//

import Foundation
import RealmSwift

class Set: Object {
    let set = List<Exercise>()
}

class Workout: Object {
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
    
    dynamic var name = "New Workout"
    let sets = List<Set>()
}
