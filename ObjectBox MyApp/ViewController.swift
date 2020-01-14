//
//  ViewController.swift
//  ObjectBox MyApp
//
//  Created by Tharindu Perera on 1/13/20.
//  Copyright © 2020 Tharindu Perera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testDB()
    }
    
    private func testDB() {
        
        print("------------------Testing DB-----------------\n")
        
        
        print("Creating user with name 'Paul'")
        let user1 = User()
        user1.name = "Paul"
        
        UserDao.shared.create(obj: user1)
        print("_____________________________________________\n")
        
        
        print("Creating user with name 'Walker'")
        let user2 = User()
        user1.name = "Walker"
        
        UserDao.shared.create(obj: user2)
        print("_____________________________________________\n")
        
        
        print("Printing all users")
        dump(UserDao.shared.getAll())
        print("_____________________________________________\n")
        
        
        print("Printing all user count")
        print("User count: \(UserDao.shared.getCount())")
        print("_____________________________________________\n")
        
        
        print("Quering and printing users whose name is 'Paul'")
        dump(UserDao.shared.getByName(name: "Paul"))
        print("_____________________________________________\n")
        
    }


}

