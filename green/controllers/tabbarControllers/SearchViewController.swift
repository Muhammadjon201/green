//
//  SearchViewController.swift
//  green
//
//  Created by Muhammadjon Mamarasulov on 3/13/22.
//

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initViews()
    }


    func initViews(){
        navBarSettings()
    }
    
    func navBarSettings(){
        let menu = UIImage(named: "vv")
        let cart = UIImage(named: "vv2")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: menu, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: cart, style: .plain, target: self, action: #selector(rightTapped))
        
        self.title = "Search"
    }
    
    @objc func leftTapped(){
//        let vc = DetailViewController(nibName: "DetailViewController", bundle: nil)
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @objc func rightTapped(){
        
    }

}
