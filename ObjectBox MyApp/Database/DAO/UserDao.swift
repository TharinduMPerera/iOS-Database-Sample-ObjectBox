//
//  UserDao.swift
//  ObjectBox MyApp
//
//  Created by Tharindu Perera on 1/13/20.
//  Copyright © 2020 Tharindu Perera. All rights reserved.
//

import Foundation
import ObjectBox

class UserDao: Crud {
    
    static let shared = UserDao()
    
    private let userBox = DBService.shared.userBox
    
    //////////////////////////////////////////////////////
    //MARK: - Creation Methods
    //////////////////////////////////////////////////////
    
    func create(obj: AnyObject) {
        if let user = obj as? User {
            try! userBox.put(user)
        }
    }
    
    func create(objList: Array<User>) {
        if !objList.isEmpty {
            try! userBox.put(objList)
        }
    }
    
    //////////////////////////////////////////////////////
    //MARK: - Update Methods
    //////////////////////////////////////////////////////
    
    func update(obj: AnyObject) {
        if let user = obj as? User {
            try! userBox.put(user)
        }
    }
    
    //////////////////////////////////////////////////////
    //MARK: - Deletion Methods
    //////////////////////////////////////////////////////
    
    func delete(obj: AnyObject) {
        if let user = obj as? User {
            try! userBox.remove(user)
        }
    }
    
    //////////////////////////////////////////////////////
    //MARK: - Getter Methods
    //////////////////////////////////////////////////////
    
    func getAll() -> Array<User> {
        return try! userBox.all()
    }
    
    func getByName(name: String) -> Array<User> {
        let nameEqualsQuery: Query<User> = try! userBox.query {
            User.name.isEqual(to: name)
        }.build()
        
        return try! nameEqualsQuery.find()
    }
    
    
    //////////////////////////////////////////////////////
    //MARK: - Count Methods
    //////////////////////////////////////////////////////
    
    func getCount() -> Int {
        return try! userBox.count()
    }
    
    
}
