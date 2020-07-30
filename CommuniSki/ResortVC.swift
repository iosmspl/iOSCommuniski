//
//  ResortVC.swift
//  CommuniSki
//
//  Created by mac on 28/07/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit
import KYDrawerController

class ResortVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var searchView: UIView!
    var arrayelements = ["INFO","RUNS","LIFT","RUNS","MAPS","TRANSPORT","FOOD","SHOPPING","HOTELS","EVENTS","ACTIVITIES","PICS & VIDS","GUIDE TIPS","KNOWLDGE","Q & A","DIRECTORY","FAVORITE","SKI PATROL"]
    
    @IBOutlet weak var cllction_View: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cllction_View.reloadData()
        searchView.layer.borderWidth = 0.2
        searchView.layer.cornerRadius = 14
    }
    
    // MARK : -  CollectionView Delegates : -
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return arrayelements.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = cllction_View.dequeueReusableCell(withReuseIdentifier: "ParkCVC", for: indexPath) as! ParkCVC
        
        cell.lbl_Name.text = arrayelements[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 100, height: 120)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    @IBAction func side_menuBtnTapped(_ sender: Any) {
        myKyDrawerController.setDrawerState(.opened, animated: true)
        print("its working")
    }
}

class ParkCVC : UICollectionViewCell {
    @IBOutlet weak var img_View: UIImageView!
    @IBOutlet weak var lbl_Name: UILabel!
}
