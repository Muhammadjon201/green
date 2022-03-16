//
//  LoginViewController.swift
//  green
//
//  Created by Muhammadjon Mamarasulov on 3/13/22.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var myCollection: UICollectionView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
    }
    
    func initViews(){
        emailField.delegate = self
        passwordField.delegate = self
        myCollection.delegate = self
        myCollection.dataSource = self
        myCollection.register(UINib(nibName: "SignUpCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SignUpCollectionViewCell")
        self.myCollection.contentInset = UIEdgeInsets(top: 0, left: 15, bottom: 10, right: 15)
        
    }
    
    // Showing data..
    var data: [Data] = [
        Data(name: "Login", isSelect: true),
        Data(name: "Sign-up", isSelect: false)]
    
    // TextField
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.emailField.resignFirstResponder()
        self.passwordField.resignFirstResponder()
        return true
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    
    // Button action..
    @IBAction func btn(_ sender: Any) {
        callMainTBC()
    }
    
    func callMainTBC(){
        let vc = MainTBC(nibName: "MainTBC", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}

// Collection View..

extension LoginViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = myCollection.dequeueReusableCell(withReuseIdentifier: "SignUpCollectionViewCell", for: indexPath) as? SignUpCollectionViewCell else{return UICollectionViewCell()}
        
        cell.myUpdateCell(data: data[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == myCollection{
            for i in data.enumerated(){
                data[i.offset].isSelect = false
            }
            data[indexPath.row].isSelect = true
            collectionView.reloadData()
        }else{
            let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIScreen.main.bounds.width/2 - 30, height: 40)
    }
    
}

