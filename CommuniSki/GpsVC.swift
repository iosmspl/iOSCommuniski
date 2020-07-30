//
//  GpsVC.swift
//  CommuniSki
//
//  Created by mac on 28/07/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class GpsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func side_MenuTapped(_ sender: Any) {
        myKyDrawerController.setDrawerState(.opened, animated: true)
        print("its working")
    }
    

}
