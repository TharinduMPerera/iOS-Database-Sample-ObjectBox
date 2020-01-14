//
//  DBService.swift
//  ObjectBox MyApp
//
//  Created by Tharindu Perera on 1/13/20.
//  Copyright © 2020 Tharindu Perera. All rights reserved.
//

import Foundation
import ObjectBox

class DBService {
    
    static let shared = DBService()
    
    let store: Store!
    let userBox: Box<User>
    
    private init() {
        store = try! Store.createStore()
        
        userBox = store.box(for: User.self)
    }
    
}
