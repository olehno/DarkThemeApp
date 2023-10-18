//
//  ViewController.swift
//  DarkThemeApp
//
//  Created by Артур Олехно on 18/10/2023.
//

import UIKit

class ThemeViewController: UIViewController {

    @IBOutlet weak var darkButton: UIButton!
    @IBOutlet weak var folderButton: UIBarButtonItem!
    @IBOutlet weak var actionSheetButton: UIBarButtonItem!
    var isDark: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        darkButton.layer.cornerRadius = 10
    }

    @IBAction func darkButtonTapped(_ sender: Any) {
        print("dark button tapped")
        if isDark {
            view.backgroundColor = UIColor.white
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            darkButton.setTitle("Dark Theme on", for: .normal)
            darkButton.setTitleColor(UIColor.black, for: .normal)
            darkButton.tintColor = UIColor.white
            isDark = false
        } else {
            view.backgroundColor = UIColor.black
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            darkButton.setTitle("Dark Theme off", for: .normal)
            darkButton.setTitleColor(UIColor.black, for: .normal)
            darkButton.tintColor = UIColor.white
            isDark = true
        }
    }
    
    @IBAction func folderTapped(_ sender: Any) {
        basicAlert(title: "My Folder", message: "This is my item button!")
    }
    @IBAction func actionSheetTapped(_ sender: Any) {
        actionSheetAlert(title: "New messege", message: "You created action sheet message!")
    }
    
}

extension UIViewController {
    
    func basicAlert(title: String?, message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
    func actionSheetAlert(title: String?, message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
}
