//
//  AppDelegate.swift
//  Messenger
//
//  Created by Maria Roodnitsky on 9/21/21.
//

import UIKit
import Firebase
import FBSDKCoreKit
import GoogleSignIn

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        FirebaseApp.configure()
          
        ApplicationDelegate.shared.application(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
        
        GIDSignIn.sharedInstance()?.delegate = self
        GIDSignIn.sharedInstance()?.clientID = FirebaseApp.app()?.options.clientID

        return true
    }
          
    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey : Any] = [:]
    ) -> Bool {

        ApplicationDelegate.shared.application(
            app,
            open: url,
            sourceApplication: options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String,
            annotation: options[UIApplication.OpenURLOptionsKey.annotation]
        )
        
        return GIDSignIn.sharedInstance().handle(url)
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        guard error == nil else {
            if let error = error {
                print("failed to sign in with Google: \(error)")
            }
            return
        }
        
        print("did sign in with google")
        
        guard let email = user.profile.email,
              let firstName = user.profile.givenName,
              let lastName = user.profile.familyName else {
            return
        }
        
        DatabaseManager.shared.userExists(with: email, completion: {exists in
            if !exists{
                DatabaseManager.shared.insertUser(with: ChatAppUser(firstName: firstName, lastName: lastName, emailAddress: email))
            }
        })
        
        guard let authentication = user.authentication else {
            print("missing auth from google")
            return
        }
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
        
        FirebaseAuth.Auth.auth().signIn(with: credential, completion: { authResult, error in
            guard authResult != nil, error == nil else {
                print("failed to log in with google credential")
                return
            }
            
            print("successful google credential signin")
            NotificationCenter.default.post(name: .didLogInNotification, object: nil)
        })
    }
    
    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
        print("Google user was disconnected")
    }
}
    
