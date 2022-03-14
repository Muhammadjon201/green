//
//  MainTBC.swift
//  green
//
//  Created by Muhammadjon Mamarasulov on 3/13/22.
//

import UIKit

class MainTBC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabBarSettings()
    }
    
    func tabBarSettings(){
        let vc1 = UINavigationController(rootViewController: HomeViewController(nibName: "HomeViewController", bundle: nil))
        vc1.tabBarItem.image = UIImage(named: "home")
        
        let vc2 = LikeViewController(nibName: "LikeViewController", bundle: nil)
        vc2.tabBarItem.image = UIImage(named: "fav")
        
        let vc3 = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        vc3.tabBarItem.image = UIImage(named: "user")
        
        let vc4 = DetailViewController(nibName: "DetailViewController", bundle: nil)
        vc4.tabBarItem.image = UIImage(named: "history")
        
        let vc = [vc1,vc2,vc3,vc4]
        
        viewControllers = vc
    }

}
