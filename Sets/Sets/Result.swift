//
//  Result.swift
//  Sets
//
//  Created by Cam Linke on 2015-12-16.
//  Copyright © 2015 camlinke. All rights reserved.
//

import Foundation
import RealmSwift

class Result: Object {
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
    dynamic var workoutName = ""
    dynamic var datetime = NSDate().timeIntervalSince1970
    dynamic var exerciseArray = [Dictionary<String, String>]()
    dynamic var previousExerciseArray = [Dictionary<String, String>]()
}
