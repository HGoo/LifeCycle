//
//  SceneDelegate.swift
//  LifeCycle
//
//  Created by Николай Петров on 27.02.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print(#function)
        //window?.rootViewController = UINavigationController(rootViewController: RootViewController())
        window?.tintColor = .red
        UINavigationBar.appearance().barTintColor = .green
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    //Вызывается перед переходом в состояние в фоновый режим
    func sceneWillResignActive(_ scene: UIScene) {
        print(#function)
    }
    
    //Вызывается при переходе в фоновый режим
    func sceneDidEnterBackground(_ scene: UIScene) {
        print(#function)
    }

    //Вызывается перед переходом на Передний алан
    func sceneWillEnterForeground(_ scene: UIScene) {
        print(#function)
    }

    //Выполняется при переходе на апередний план
    //sceneDidBecomeActive
    
    //Вызывается при завершении работы
    func applicationWillTerminate(_ aplication: UIApplication) {
        print(#function)
    }
}

