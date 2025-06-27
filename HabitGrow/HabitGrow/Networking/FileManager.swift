//
//  FileManager.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/26/25.
//

import Foundation

class FileManager {
    private static let categoryFileName = "category"
    
    static func getCategory() -> Data? {
        return getData(filename: categoryFileName)
    }
    
    private static func getData(filename: String) -> Data? {

        if let path = Bundle.main.url(forResource: filename, withExtension: "json"),
            let data = try? Data.init(contentsOf: path) {
            return data
        } else {
            return nil
        }
    }
}
