//
//  Extension.swift
//  FileManager
//
//  Created by Евгений Дроздов on 26.04.2023.
//

import Foundation
import UIKit

extension UIViewController {
    
    func customAlertController(complitionhangler: @escaping (_ text: String)->Void) {
        let alertController = UIAlertController(title: "Создание папки", message: nil, preferredStyle: .alert)
        alertController.addTextField { textfield in
            textfield.placeholder = "Введите название папки"
        }
        let actionOk = UIAlertAction(title: "Ok", style: .default) { action in
            let firstTextField = alertController.textFields![0] as UITextField
            complitionhangler(firstTextField.text ?? "nil")
        }
        let actionCancel = UIAlertAction(title: "Отмена", style: .default)
        alertController.addAction(actionOk)
        alertController.addAction(actionCancel)
        present(alertController, animated: true, completion: nil)
    }
    
    func setupNavigatorController(largeTitle: Bool, imageOneButton: UIImage, imageTwoButton: UIImage, nameActionOneButton: Selector?, nameActionTwoButton: Selector?) {
        navigationController?.navigationBar.prefersLargeTitles = largeTitle
        let oneButttonItem = UIBarButtonItem(image: imageOneButton, style: .plain, target: self, action: nameActionOneButton)
        let twoButttonItem = UIBarButtonItem(image: imageTwoButton, style: .plain, target: self, action: nameActionTwoButton)
        navigationItem.rightBarButtonItems = [oneButttonItem, twoButttonItem]
    }
    func alertErrorPassword(text: String) {
        let alertController = UIAlertController(title: "Внимание", message: text, preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ок", style: .cancel, handler: { action in
            self.dismiss(animated: true, completion: nil)
        })
        alertController.addAction(actionOk)
        present(alertController, animated: true, completion: nil)
    }
}
