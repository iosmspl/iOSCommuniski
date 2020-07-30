//
//  SignUpVC.swift
//  CommuniSki
//
//  Created by mac on 23/07/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var name_TF: UITextField!
    @IBOutlet weak var dob_TF: UITextField!
    @IBOutlet weak var country_TF: UITextField!
    @IBOutlet weak var phone_TF: UITextField!
    @IBOutlet weak var email_TF: UITextField!
    @IBOutlet weak var password_TF: UITextField!
    @IBOutlet weak var refferal_TF: UITextField!
    @IBOutlet weak var selct_BtnTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
// MARK :- All Buttons Actions :-
    
    @IBAction func logn_Tapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func terms_CondtionTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "TermsandConditionsVC") as! TermsandConditionsVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func privacy_PolicyTapped(_ sender: Any) {
        let alertok = UIAlertController.init(title: "Communiski", message: "Privacy Policy Coming Soon!", preferredStyle: .alert)
        alertok.addAction(UIAlertAction.init(title: "OK", style: .default, handler: { (okaction) in
        }))
        self.present(alertok, animated: true, completion: nil)
    }
    
    @IBAction func select_UnselectedTapped(_ sender: Any) {
        
    }
    
    @IBAction func Sign_UpTapped(_ sender: Any) {
        let alertok = UIAlertController.init(title: "Communiski", message: "Account Created Successfully.", preferredStyle: .alert)
        alertok.addAction(UIAlertAction.init(title: "OK", style: .default, handler: { (okaction) in
        }))
        self.present(alertok, animated: true, completion: nil)
        name_TF.text = ""
        dob_TF.text = ""
        country_TF.text = ""
        phone_TF.text = ""
        email_TF.text = ""
        password_TF.text = ""
        refferal_TF.text = ""
        refferal_TF.text = ""
        
    }
}
