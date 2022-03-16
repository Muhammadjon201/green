//
//  AppDelegate.swift
//  green
//
//  Created by Muhammadjon Mamarasulov on 3/12/22.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        IQKeyboardManager.shared.enable = true
        
        window = UIWindow()
        let vc = HomeViewController(nibName: "HomeViewController", bundle: nil)
        let nc = UINavigationController(rootViewController: vc)
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        
        return true
    }

    

}

