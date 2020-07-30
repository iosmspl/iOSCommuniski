//
//  HomeVC.swift
//  CommuniSki
//
//  Created by mac on 28/07/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit
import KYDrawerController

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
 
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        if UIDevice().userInterfaceIdiom == .phone
        {
            switch UIScreen.main.nativeBounds.height
            {
            case 1136:
                self.tabBarController?.tabBar.items?[0].image = UIImage(named: "ski_group")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[0].selectedImage = UIImage(named: "ski_group_o")?.withRenderingMode(.alwaysOriginal)
                
                // Orders Tab Bar change Image
                self.tabBarController?.tabBar.items?[1].image = UIImage(named: "group")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[1].selectedImage = UIImage(named: "buddies_o")?.withRenderingMode(.alwaysOriginal)
                
                // Appointments Tab Bar change Image
                self.tabBarController?.tabBar.items?[2].image = UIImage(named: "resorts")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[2].selectedImage = UIImage(named: "APPOINTMENTS")?.withRenderingMode(.alwaysOriginal)
                
                // Catalouge Tab Bar change Image
                self.tabBarController?.tabBar.items?[3].image = UIImage(named: "gps")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[3].selectedImage = UIImage(named: "gps_o")?.withRenderingMode(.alwaysOriginal)

                //   print("iPhone 5 or 5S or 5C")
                self.tabBarController?.tabBar.isTranslucent = false
            case 1334:
                self.tabBarController?.tabBar.items?[0].image = UIImage(named: "ski_group")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[0].selectedImage = UIImage(named: "ski_group_o")?.withRenderingMode(.alwaysOriginal)
                
                // Orders Tab Bar change Image
                self.tabBarController?.tabBar.items?[1].image = UIImage(named: "group")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[1].selectedImage = UIImage(named: "buddies_o")?.withRenderingMode(.alwaysOriginal)
                
                // Appointments Tab Bar change Image
                self.tabBarController?.tabBar.items?[2].image = UIImage(named: "resorts")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[2].selectedImage = UIImage(named: "APPOINTMENTS")?.withRenderingMode(.alwaysOriginal)
                
                // Catalouge Tab Bar change Image
                self.tabBarController?.tabBar.items?[3].image = UIImage(named: "gps")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[3].selectedImage = UIImage(named: "gps_o")?.withRenderingMode(.alwaysOriginal)
     
                //   print("iPhone 6/6S/7/8")
                self.tabBarController?.tabBar.isTranslucent = false
            case 1920,2208:
                self.tabBarController?.tabBar.items?[0].image = UIImage(named: "ski_group")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[0].selectedImage = UIImage(named: "ski_group_o")?.withRenderingMode(.alwaysOriginal)
                
                // Orders Tab Bar change Image
                self.tabBarController?.tabBar.items?[1].image = UIImage(named: "group")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[1].selectedImage = UIImage(named: "buddies_o")?.withRenderingMode(.alwaysOriginal)
                
                // Appointments Tab Bar change Image
                self.tabBarController?.tabBar.items?[2].image = UIImage(named: "resorts")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[2].selectedImage = UIImage(named: "resorts_o")?.withRenderingMode(.alwaysOriginal)
                
                // Catalouge Tab Bar change Image
                self.tabBarController?.tabBar.items?[3].image = UIImage(named: "gps")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[3].selectedImage = UIImage(named: "gps_o")?.withRenderingMode(.alwaysOriginal)
                
                //    print("iPhone 6+/6S+/7+/8+")
                self.tabBarController?.tabBar.isTranslucent = false
            case 2436:
                self.tabBarController?.tabBar.items?[0].image = UIImage(named: "ski_group")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[0].selectedImage = UIImage(named: "ski_group_o")?.withRenderingMode(.alwaysOriginal)
                
                // Orders Tab Bar change Image
                self.tabBarController?.tabBar.items?[1].image = UIImage(named: "group")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[1].selectedImage = UIImage(named: "buddies_o")?.withRenderingMode(.alwaysOriginal)
                
                // Appointments Tab Bar change Image
                self.tabBarController?.tabBar.items?[2].image = UIImage(named: "resorts")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[2].selectedImage = UIImage(named: "resorts_o")?.withRenderingMode(.alwaysOriginal)
                
                // Catalouge Tab Bar change Image
                self.tabBarController?.tabBar.items?[3].image = UIImage(named: "gps")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[3].selectedImage = UIImage(named: "gps_o")?.withRenderingMode(.alwaysOriginal)
                
                // Home Tab Bar change Image
                self.tabBarController?.tabBar.isTranslucent = true
            case 2688:
                self.tabBarController?.tabBar.items?[0].image = UIImage(named: "ski_group")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[0].selectedImage = UIImage(named: "ski_group_o")?.withRenderingMode(.alwaysOriginal)
                
                // Orders Tab Bar change Image
                self.tabBarController?.tabBar.items?[1].image = UIImage(named: "group")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[1].selectedImage = UIImage(named: "buddies_o")?.withRenderingMode(.alwaysOriginal)
                
                // Appointments Tab Bar change Image
                self.tabBarController?.tabBar.items?[2].image = UIImage(named: "resorts")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[2].selectedImage = UIImage(named: "resorts_o")?.withRenderingMode(.alwaysOriginal)
                
                // Catalouge Tab Bar change Image
                self.tabBarController?.tabBar.items?[3].image = UIImage(named: "gps")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[3].selectedImage = UIImage(named: "gps_o")?.withRenderingMode(.alwaysOriginal)
              
                //  print("iPhone Xs Max")
                
                self.tabBarController?.tabBar.isTranslucent = true
            case 1792:
                self.tabBarController?.tabBar.items?[0].image = UIImage(named: "ski_group")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[0].selectedImage = UIImage(named: "ski_group_o")?.withRenderingMode(.alwaysOriginal)
                
                // Orders Tab Bar change Image
                self.tabBarController?.tabBar.items?[1].image = UIImage(named: "group")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[1].selectedImage = UIImage(named: "buddies_o")?.withRenderingMode(.alwaysOriginal)
                
                // Appointments Tab Bar change Image
                self.tabBarController?.tabBar.items?[2].image = UIImage(named: "resorts")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[2].selectedImage = UIImage(named: "resorts_o")?.withRenderingMode(.alwaysOriginal)
                
                // Catalouge Tab Bar change Image
                self.tabBarController?.tabBar.items?[3].image = UIImage(named: "gps")?.withRenderingMode(.alwaysOriginal)
                self.tabBarController?.tabBar.items?[3].selectedImage = UIImage(named: "gps_o")?.withRenderingMode(.alwaysOriginal)
                //  print("iPhone Xr")
                self.tabBarController?.tabBar.isTranslucent = true
            default:
                print("unknown")
            }
        }

    }
    @IBAction func menu_Tapped(_ sender: Any) {
        myKyDrawerController.setDrawerState(.opened, animated: true)
               print("its working")
    }
    
    
    
    
    override func viewDidLayoutSubviews()
    {
        super.viewDidLayoutSubviews()
        if UIDevice().userInterfaceIdiom == .phone
        {
            switch UIScreen.main.nativeBounds.height
            {
            case 1136:
                //   print("iPhone 5 or 5S or 5C")
                self.tabBarController?.tabBar.isTranslucent = false
            case 1334:
                //   print("iPhone 6/6S/7/8")
                self.tabBarController?.tabBar.isTranslucent = false
            case 1920,2208:
                //    print("iPhone 6+/6S+/7+/8+")
                self.tabBarController?.tabBar.isTranslucent = false
            case 2436:
                //   print("iPhone X, Xs")
                self.tabBarController?.tabBar.isTranslucent = true
            case 2688:
                //  print("iPhone Xs Max")
                self.tabBarController?.tabBar.isTranslucent = true
            case 1792:
                //  print("iPhone Xr")
                self.tabBarController?.tabBar.isTranslucent = true
            default:
                print("unknown")
            }
        }
    }
    
}
