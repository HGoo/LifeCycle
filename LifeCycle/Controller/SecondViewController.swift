//
//  SecondViewController.swift
//  LifeCycle
//
//  Created by Николай Петров on 27.02.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    // MARK: - Publick Properties
    var someProperties: String!
    
    @IBOutlet var openThirdVc: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printMessage()
    }

}

extension UIViewController {
    func printMessage(line: Int = #line, function: String = #function) {
        print("\(title ?? "nil"): \(function)")
    }
}
