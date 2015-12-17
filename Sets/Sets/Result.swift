//
//  Result.swift
//  Sets
//
//  Created by Cam Linke on 2015-12-16.
//  Copyright © 2015 camlinke. All rights reserved.
//

import Foundation
import RealmSwift

class ListedExercise: Object {
    dynamic var name = ""
    dynamic var datetime = NSDate().timeIntervalSince1970
    dynamic var reps = ""
    dynamic var weight = ""
    dynamic var repUnit = ""
    dynamic var weightUnit = ""
}

class Result: Object {
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
    dynamic var workoutName = ""
    dynamic var datetime = NSDate().timeIntervalSince1970
    let exerciseArray = List<ListedExercise>()
    let previousExerciseArray = List<ListedExercise>()
}
