//
//  SecondViewController.swift
//  LifeCycle
//
//  Created by Николай Петров on 27.02.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var someProperties: String! {
        didSet {
            print(someProperties ?? "nil")
        }
    }
    
    @IBOutlet var openThirdVc: UIButton! {
        didSet {
            print("\(openThirdVc.currentTitle ?? "...")")
        }
    }
    
    @IBAction  func unwind(for unwindSegue: UIStoryboardSegue) {}
    
     // Срабатывает после загрузки View
    override func viewDidLoad() {
        super.viewDidLoad()
        printMessage()
    }
    
    // Срабатывает перед появлением View на экране
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    // Срабатывает перед тем, как  размер View поменяется под размер экрана
    override func viewWillLayoutSubviews() {
        printMessage()
    }
    
    // Тут срабатывает Auto Layout
        
    // Срабатывает после тем, как  размер View поменился под размер экрана
    override func viewDidLayoutSubviews() {
        printMessage()
    }

    // Срабатывает перед появлением View на экране
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    //Срабатывает перед поворотом экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        printMessage()
    }
    
    //Срабатывают перд тем как, вью закроется
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    //Срабатывают после закрытия вью
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
}


extension UIViewController {
    func printMessage(function: String = #function) {
        print("\(navigationItem.title ?? "nil"): \(function)")
    }
}
