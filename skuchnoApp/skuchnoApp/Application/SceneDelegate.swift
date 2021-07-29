//
//  SceneDelegate.swift
//  skuchnoApp
//
//  Created by Sergey Stelmakh on 28.07.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = createTabBar()
        window.makeKeyAndVisible()
        self.window = window
    }
    
    fileprivate func createMainViewNav() -> UINavigationController {
        let mainViewController = MainViewController()
        mainViewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "book"), tag: 0)
        let mainNavigationController = UINavigationController(rootViewController: mainViewController)
        return mainNavigationController
    }
    
    fileprivate func createSettingsViewNav() -> UINavigationController {
        let settingsViewController = SettingsViewController()
        settingsViewController.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "gearshape"), tag: 1)
        let settingsNavigationController = UINavigationController(rootViewController: settingsViewController)
        return settingsNavigationController
    }
    
    fileprivate func createTabBar() -> UITabBarController {
        let tabbar = UITabBarController()
        tabbar.viewControllers = [createMainViewNav(), createSettingsViewNav()]
        return tabbar
    }


}

