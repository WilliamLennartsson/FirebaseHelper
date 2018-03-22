//
//  ViewController.swift
//  FirebaseTest
//
//  Created by will on 2018-03-21.
//  Copyright © 2018 will. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    @IBOutlet weak var firebaseLabel: UILabel!
    
    let userEmail : String = "Hek@gmail.com"
    let lobbyString : String = "Lobby"
    override func viewWillAppear(_ animated: Bool) {
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path : [String] = ["ekkkk", "tre", "fem", "dad", "dokaodka", "odkaokda", "okdaokdoad", "odka"]
        let item : (key: String, value: String) = ("säkondKey", "Välju2")
        let fb = FirebaseHelper()
        fb.getStringWithPath(path)
        //fb.pushKeyValueWithPath(searchPath: path, item: ((key: "ntjoohoo", value: "Hajjeell")))
        
        
        
        
        
        
        
        //fb.pushItem(path, item: item)
        
        
        //let question2 = Question(title: "kakan går ofta till gymmet", correctAnswer: false)
        
//        myDatabase.child(lobbyString).childByAutoId().setValue(userEmail)
//
//        Auth.auth().createUser(withEmail: "1@gmail.com", password: "123123") { (user, error) in
//            print(user?.displayName)
//        }
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
