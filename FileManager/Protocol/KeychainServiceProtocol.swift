//
//  KeychainServiceProtocol.swift
//  FileManager
//
//  Created Евгений Дроздов on 26.04.2023.
//

import Foundation

protocol KeychainServiceProtocol: AnyObject {
    func getData() -> String?
    func saveData(name: String)
    func updateData(name: String)
    func remove(for name: String)
    func removeAll()
}
