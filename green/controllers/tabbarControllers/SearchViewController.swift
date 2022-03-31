//
//  SearchViewController.swift
//  green
//
//  Created by Muhammadjon Mamarasulov on 3/13/22.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var myCollection2: UICollectionView!
    @IBOutlet weak var myCollection3: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initViews()
    }
    
    // showing data..
    
    var item:[Item] = [
        Item(name: "Foods", isSelect: true),
        Item(name: "Drinks", isSelect: false),
        Item(name: "Snacks", isSelect: false),
        Item(name: "Sausage", isSelect: false)
        
    ]
    
    // showing another data..
    
    var food:[Food] = [
        Food(title: "Veggie tomato mix", name: "N1,900"),
        Food(title: "Risotto Alla Milanese", name: "N1,800"),
        Food(title: "Polenta", name: "N1,570"),
        Food(title: "Lasagna", name: "N1,900"),
        Food(title: "Plov", name: "N2,000")
    ]


    func initViews(){
        navBarSettings()
        
        myCollection2.delegate = self
        myCollection2.dataSource = self
        myCollection2.register(UINib(nibName: "SearchCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SearchCollectionViewCell")
        myCollection2.contentInset = UIEdgeInsets(top: 0, left: 15, bottom: 10, right: 15)
        
        myCollection3.delegate = self
        myCollection3.dataSource = self
        myCollection3.register(UINib(nibName: "SecondSearchCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SecondSearchCollectionViewCell")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.hidesBackButton = true
    }
    
   
    
    func navBarSettings(){
        let menu = UIImage(named: "vv")
        let cart = UIImage(named: "vv2")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: menu, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: cart, style: .plain, target: self, action: #selector(rightTapped))
        
    }
    
    @objc func leftTapped(){
//        let vc = DetailViewController(nibName: "DetailViewController", bundle: nil)
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @objc func rightTapped(){
        
    }

}

// Collection View..

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == myCollection2{
            return item.count
        }else{
            return food.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == myCollection2{
            guard let cell = myCollection2.dequeueReusableCell(withReuseIdentifier: "SearchCollectionViewCell", for: indexPath) as? SearchCollectionViewCell else{
                return UICollectionViewCell()
            }
            cell.updateCell2(item: item[indexPath.row])
            return cell
        }else{
            guard let cell = myCollection3.dequeueReusableCell(withReuseIdentifier: "SecondSearchCollectionViewCell", for: indexPath) as? SecondSearchCollectionViewCell else{return UICollectionViewCell()}
            cell.updateCell(info: food[indexPath.row])
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == myCollection2{
            for a in item.enumerated(){
                item[a.offset].isSelect = false
            }
            item[indexPath.row].isSelect = true
            collectionView.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == myCollection2{
            return CGSize(width: UIScreen.main.bounds.width/4 - 25, height: 40)
        }
        else{
            return CGSize(width: UIScreen.main.bounds.width*220/414,
                          height: UIScreen.main.bounds.height*321/896)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let vc = DetailViewController(nibName: "DescriptionViewController", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
    }
    
    
    
}



