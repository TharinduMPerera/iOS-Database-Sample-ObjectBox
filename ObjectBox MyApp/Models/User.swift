//
//  User.swift
//  ObjectBox MyApp
//
//  Created by Tharindu Perera on 1/13/20.
//  Copyright © 2020 Tharindu Perera. All rights reserved.
//

import Foundation
import ObjectBox

class User: Entity {
    var id: Id = 0
    var name: String?
    
    // An initializer with no parameters is required by ObjectBox
    required init() {
    }
}
