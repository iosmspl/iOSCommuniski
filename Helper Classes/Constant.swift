//
//  Constant.swift
//  Libertas
//
//  Created Abhishek rana (Abbie ) 27/03/19.
//  Copyright © 2019 Abhishek. All rights reserved

import UIKit

// For production Server
//public let baseURL = "http://93.188.167.68/projects/communiski/public/api/"

// FOr Development Server
public let baseURL = "https://meander.software/projects/communiski/public/api/"

//public let imgbaseURL = ""

public  let header = "application/x-www-form-urlencoded"

public struct API {
    
    public static let userLogin                =      baseURL+"login"


    public static let userRegister             =      baseURL+"register"
    public static let editProfile              =      baseURL+"edit_profile"
    public static let getprofile               =      baseURL+"get_profile"
    public static let forgotPassword           =      baseURL+"forgot"
    public static let chngPassword             =      baseURL+"change_password"
    public static let getActivities            =      baseURL+"get_activities"
    public static let createActivity           =      baseURL+"create_activity"
    public static let viewAgent                =       baseURL+"view_agents"
    public static let search                   =       baseURL+"search_agent"
    public static let activityagent            =       baseURL+"activityAgents"
    public static let salesagent               =       baseURL+"salesAgents"
    public static let history                  =       baseURL+"history"
    
}
/*********************************  Structures  ********************************/

public struct AppFont {
    public static let helventicaNeue     =     "HelveticaNeue"
    public static let museoSansRegular   =     "MuseoSans-100"
    public static let museoSansBold      =     "MuseoSans-500"
    
}
public struct AppColor {
    
}

public struct AppTitle {
    public static var forgotPassword   =    "Password Recovery"
}

public struct AppKey {
   
    public static let user_name                       = "user_name"
    public static let user_email                      = "user_email"
    public static let user_password                   = "user_password"
    public static let user_age                        = "user_age"

    
    //    public static let message                         = "message"
    public static let message_to                      = "message_to"
    public static let chat_data                       = "chat_data"
    public static let chat_type                       = "chat_type"
  
}

/************************************ Constant ***********************************/

let KAppDelegate: AppDelegate         =      UIApplication.shared.delegate as! AppDelegate
public let clientStoryBoard           =      UIStoryboard(name: "Client", bundle: nil)
public let mainStoryBoard             =      UIStoryboard(name: "Main", bundle: nil)
public let AppUserDefaults            =      UserDefaults.standard
public let AppNotificationCenter      =      NotificationCenter.default
public typealias KeyValue             =      [String : Any]
public let KPasswordMinLength         =       6
public let KDelayTime                 =       2.0
public let KTimeDuration              =       0.3
public let KOffline                   =       "Offline"
public let KSimulatorToken            =      "9bae8226d6e9978802877c55985fccb4"
public let KPhoneMaxLength            =       12
public let KEmailMaxLength            =       100
public let KPasswordMaxLength         =       20
                                        
public let KTankMaxLimit              =       10
public let KAmountMaxLength           =       4
public let KFirstNameLength           =       20
public let KCommentLength             =       300
public var KLoading                   =        "Loading..."
public let KOk                        =        "Ok"
public let KCancel                    =        "Cancel"
public let PoppinsRegular             =      "Poppins-Regular"

/*********************************************************************************/


/************************************ Message ***********************************/
//Commom Messages
public let KAlertTitle                   =      "CommuniSki"
public let KServerError                  =      "An error occurred, Please try again."
public let KInternetConnection           =      "Internet connection is not available."
public let kSessionExpired               =       "Session expired. Please login again"
public let KMinimumPassword              =       "Password length should be minimum \(KPasswordMinLength) characters."
public let KPasswordNotMatch             =       "Password and confirm password does not match."
public let KCheckCameraPermission        =       "You need to provide permission to access camera from settings."
public let KCheckGalleryPermission       =       "You need to provide permission to access gallery from settings."

//Message for Particular Application

public let KFirstNameTitle                  =      "Please enter First name."
public let KStatusCode                      =       "statusCode"
public let KMessage                         =       "message"
public let KLastNameTitle                   =      "Please enter Last name."
public let KPhoneNumberTitle                =      "Please enter Phone."
public let KEmailTitle                      =      "Please enter email."
public let kValidEmailTitle                 =      "Please enter valid Email."
public let KPasswordTitle                   =      "Please enter password."
public let KConfirmPasswordTitle            =      "Please Confirm your password."
public let KNewPasswordTitle                =      "Please enter your new password."
public let KageTitle                        =      "Please enter your age."
public let KIntrestedTitle                  =      "Password enter intrest."
public let kUnKnownError                    =      "Something went wrong."
public let KTitle                           =      "Please enter Title."
public let KDate                            =      "Please enter date and time."
public let KAddressTitle                    =      "Please enter address."
public let KDescriptionTitle                =      "Please enter description."
public let KImageTitle                      =      "Please select an image."
public let Kuseremail                       =      "New password sent to your email id."
public let KEmailAlreadyRegTitle            =      "Email already registered please try again with another email"





