//
//  FileManagerServiceProtocol.swift
//  FileManager
//
//  Created by Евгений Дроздов on 26.04.2023.
//

import Foundation
import UIKit

protocol FileManagerServiceProtocol: AnyObject {
    func contentsOfDirectory(nameFolder: String?, comlitionHangler: (([String])) -> Void)
    func createDirectory(name: String)
    func createFile(nameFolder: String?, image: UIImage, imageName: String)
    func removeContent(name: String)
    func setupTitleDocumentDbirectory(comlitionHangler: ((String)) -> Void)
}

struct Content {
    let folder: UIImage?
    let image: UIImage?
}
