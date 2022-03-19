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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationItem.hidesBackButton = true
    }
    
    func tabBarSettings(){
        let vc1 = SearchViewController(nibName: "SearchViewController", bundle: nil)
//        vc1.tabBarItem.image = UIImage(named: "home")
        let nv = UINavigationController(rootViewController: vc1)
        nv.tabBarItem.image = UIImage(named: "home")
        
        let vc2 = LikeViewController(nibName: "LikeViewController", bundle: nil)
        vc2.tabBarItem.image = UIImage(named: "fav")
        
        let vc3 = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        vc3.tabBarItem.image = UIImage(named: "user")
        
        let vc4 = DetailViewController(nibName: "DetailViewController", bundle: nil)
        vc4.tabBarItem.image = UIImage(named: "history")
        
        let vc = [nv,vc2,vc3,vc4]
        
        viewControllers = vc
    }

}
