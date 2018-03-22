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
    @IBOutlet weak var firebaseBtn: UIButton!
    
    let userEmail : String = "Hek@gmail.com"
    let lobbyString : String = "Lobby"
    let fb = FirebaseHelper()
    override func viewWillAppear(_ animated: Bool) {
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path : [String] = ["ekkkk", "tre", "fem", "dad", "dokaodka", "odkaokda", "okdaokdoad", "odka"]
        let item : (key: String, value: String) = ("säkondKey", "Välju2")
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
    
    @IBAction func firebaseBtnPressed(_ sender: Any) {
        let a = fb.keyValuePair
        firebaseLabel.text = a["Key"]
        print(a)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
