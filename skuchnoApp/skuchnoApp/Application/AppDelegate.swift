//
//  AppDelegate.swift
//  skuchnoApp
//
//  Created by Sergey Stelmakh on 28.07.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UINavigationBar.appearance().barTintColor = UIColor(red: 101.0/255.0, green: 67.0/255.0, blue: 230.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
//        UINavigationBar.appearance().backgroundColor = UIColor(red: 101.0/255.0, green: 67.0/255.0, blue: 230.0/255.0, alpha: 1.0)
//        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UITabBar.appearance().barTintColor = UIColor(red: 101.0/255.0, green: 67.0/255.0, blue: 230.0/255.0, alpha: 1.0)
        UITabBar.appearance().tintColor = .white
//        UITabBar.appearance().tintColor = UIColor(red: 247.0/255.0, green: 185.0/255.0, blue: 42.0/255.0, alpha: 1.0)
//        UITabBar.appearance().tintColor = UIColor(red: 255.0/255.0, green: 243.0/255.0, blue: 209.0/255.0, alpha: 1.0)
//        UITabBar.appearance().unselectedItemTintColor = .white
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

