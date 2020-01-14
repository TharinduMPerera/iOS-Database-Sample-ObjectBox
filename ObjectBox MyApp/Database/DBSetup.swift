//
//  DBSetup.swift
//  ObjectBox MyApp
//
//  Created by Tharindu Perera on 1/13/20.
//  Copyright © 2020 Tharindu Perera. All rights reserved.
//

import Foundation
import ObjectBox

extension Store {
    /// Creates a new ObjectBox.Store in a temporary directory.
    static func createStore() throws -> Store {
        
        let databaseDirectoryName = Bundle.main.bundleIdentifier!
        
        let directory = try FileManager.default.url(
            for: .applicationSupportDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: true).appendingPathComponent(databaseDirectoryName)
        try? FileManager.default.createDirectory(at: directory, withIntermediateDirectories: false, attributes: nil)
        return try Store(directoryPath: directory.path)
    }
}
