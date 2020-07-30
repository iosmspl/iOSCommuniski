//
//  TermsandConditionsVC.swift
//  CommuniSki
//
//  Created by mac on 24/07/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class TermsandConditionsVC: UIViewController {
    @IBOutlet weak var txt_ViewData: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func back_Tapped(_ sender: Any) {
    self.navigationController?.popViewController(animated: true)
    }
    
}
