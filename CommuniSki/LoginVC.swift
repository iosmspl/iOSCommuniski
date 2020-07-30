
//
//  LoginVC.swift
//  CommuniSki
//
//  Created by mac on 23/07/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit
import KYDrawerController
import Alamofire
import ARSLineProgress

var appdelegate = UIApplication.shared.delegate as! AppDelegate

let sboard = UIStoryboard(name: "Main", bundle: nil)

var myKyDrawerController = sboard.instantiateViewController(withIdentifier: "NewSideMenu") as! KYDrawerController
var strCheckView = ""


class LoginVC: UIViewController {
    
    @IBOutlet weak var email_TF: UITextField!
    @IBOutlet weak var password_TF: UITextField!
    @IBOutlet weak var pop_UpView: UIView!
    @IBOutlet weak var po_EmailTxtView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        pop_UpView.isHidden = true
    }
    @IBAction func forgot_Tapped(_ sender: Any) {
        pop_UpView.isHidden = false
    }
    
    @IBAction func login_Tapped(_ sender: Any) {
        NSLog("Login OK")
        
        if (email_TF.text == "")
        {
            let alert = UIAlertController(title: "Communiski", message: "Please enter your Email.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                @unknown default:
                    print("default")
                }}))
            self.present(alert, animated: true, completion: nil)
        }else if !(email_TF.text?.isvaliddemail())!{
            let alert = UIAlertController(title: "CommuniSki", message: "Please enter a Valid Email", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                @unknown default:
                    print("default")
                }}))
            self.present(alert, animated: true, completion: nil)
        }
        else if (password_TF.text == "")
        {
            let alert = UIAlertController(title: "CommuniSki", message: "Please enter your password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                @unknown default:
                    print("default")
                }}))
            self.present(alert, animated: true, completion: nil)
        }
        else {
            loginApi()
        }
        
    }
    func loginApi(){
        
        ARSLineProgress.show()
        let headersAuth = ["Authorization" : "Bearer (authrizeToken)",
                           "Content-Type": "application/json"]
        
        let paramDict : [String : Any] = ["email":email_TF.text!, "password" : password_TF.text!,"device_id": "","device_type":"I"]
        print(paramDict)
        
        if Reachability.isConnectedToNetwork(){
            print(API.userLogin)
            
            AF.request(API.userLogin, method: .post, parameters: paramDict, encoding:  URLEncoding.queryString, headers: nil).responseJSON
                {
                    (response:AFDataResponse<Any>) in
                    
                    switch(response.result)
                    {
                    case.success(let data):
                        print("success",data)
                        let statuscode = response.response?.statusCode
                        let response = data as! NSDictionary
                        let status = response.object(forKey:("status")) as! String
                        if(statuscode == 200)
                        {
                            ARSLineProgress.hide()
                            print("Response Successfully Printed")
                            if status == "1"
                            {
                                print(status)
                                let message = response.object(forKey: "message") as! String
                                if let token = response["token"] as? String {
                                    AppUserDefaults.set(token, forKey: "token")
                                    print(token)
                                    if(message == "Logged in successfully")
                                    {
                                        UIApplication.shared.endIgnoringInteractionEvents()
                                        let alert = UIAlertController(title: "Communiski", message: message, preferredStyle: .alert)
                                        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
                                        {
                                            UIAlertAction in
                                            let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                            let vc = storyboard.instantiateViewController(withIdentifier: "UiTabBar") as! MyTabBarController
                                            vc.selectedIndex = 0
                                            let rearViewController = storyboard.instantiateViewController(withIdentifier: "sideMenuVC") as! sideMenuVC
                                            let mainViewController   = vc
                                            let drawerViewController = rearViewController
                                            myKyDrawerController.mainViewController = mainViewController
                                            myKyDrawerController.drawerViewController = drawerViewController
                                            appdelegate.window?.rootViewController = myKyDrawerController
                                            self.navigationController?.pushViewController(vc, animated: true)
                                            appdelegate.window?.makeKeyAndVisible()
                                        }
                                        alert.addAction(okAction)
                                        self.present(alert, animated: true, completion: nil)
                                    }
                                }
                                else
                                {
                                    ARSLineProgress.hide()
                                    UIApplication.shared.endIgnoringInteractionEvents()
                                    let alert = UIAlertController(title: "Communiski", message: message, preferredStyle: .alert)
                                    let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
                                    {
                                        UIAlertAction in
                                    }
                                    alert.addAction(okAction)
                                    self.present(alert, animated: true, completion: nil)
                                }
                            }else if  status == "0"{
                                let message = response.object(forKey: "message") as! String
                                ARSLineProgress.hide()
                                UIApplication.shared.endIgnoringInteractionEvents()
                                let alert = UIAlertController(title: "Communiski", message: message, preferredStyle: .alert)
                                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
                                {
                                    UIAlertAction in
                                }
                                alert.addAction(okAction)
                                self.present(alert, animated: true, completion: nil)
                            }
                            else
                            {
                            }
                        }
                    case.failure(let error):
                        ARSLineProgress.hide()
                        UIApplication.shared.endIgnoringInteractionEvents()
                        let alert = UIAlertController(title: "CommuniSki", message: "Connection Timed Out", preferredStyle: .alert)
                        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
                        {
                            UIAlertAction in
                        }
                        alert.addAction(okAction)
                        self.present(alert, animated: true, completion: nil)
                        print("Not Success",error)
                    }
            }
        } else {
            ARSLineProgress.hide()
        }
    }
    
    @IBAction func sign_UpTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func cancel_Tapped(_ sender: Any) {
        pop_UpView.isHidden = true
        po_EmailTxtView.text = ""
        
        
    }
    @IBAction func Submit_Tapped(_ sender: Any) {
        let alertok = UIAlertController.init(title: "Communiski", message: "Verifcation Link Send to your Email please check your email and reset your password.", preferredStyle: .alert)
        alertok.addAction(UIAlertAction.init(title: "OK", style: .default, handler: { (okaction) in
        }))
        self.present(alertok, animated: true, completion: nil)
        pop_UpView.isHidden = true
        po_EmailTxtView.text = ""
    }
    
    
}
extension String{
    func isvaliddemail() -> Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
class MyTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = 0
    }
}
