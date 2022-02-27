//
//  ViewController.swift
//  LifeCycle
//
//  Created by Николай Петров on 27.02.2022.
//

import UIKit

class FirstViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToSecondVC" {
            let dvc = segue.destination as! SecondViewController
            dvc.someProperties = "someProperties"
        }
    }


}

