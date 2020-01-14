//
//  Crud.swift
//  ObjectBox MyApp
//
//  Created by Tharindu Perera on 1/13/20.
//  Copyright © 2020 Tharindu Perera. All rights reserved.
//

import Foundation

protocol Crud {
    func create(obj: AnyObject)
    func update(obj: AnyObject)
    func delete(obj: AnyObject)
}
