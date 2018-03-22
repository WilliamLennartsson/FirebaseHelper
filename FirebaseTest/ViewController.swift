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
    @IBOutlet weak var firebaseTextfield: UITextField!
    
    @IBOutlet weak var keyTextfield: UITextField!
    @IBOutlet weak var valueTextfield: UITextField!
    
    
    @IBOutlet weak var addBranchBtn: UIButton!
    @IBOutlet weak var pushItemBtn: UIButton!
    
    let userEmail : String = "Hek@gmail.com"
    let lobbyString : String = "Lobby"
    override func viewWillAppear(_ animated: Bool) {
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path : [String] = ["ekkkk", "tre", "fem", "dad", "dokaodka", "odkaokda", "okdaokdoad", "odka"]
        let item : (key: String, value: String) = ("säkondKey", "Välju2")
        //fb.getStringWithPath(path)
        //fb.pushKeyValueWithPath(searchPath: path, item: ((key: "ntjoohoo", value: "Hajjeell")))
    
        //fb.pushItem(path, item: item)
        
        
        //let question2 = Question(title: "kakan går ofta till gymmet", correctAnswer: false)
        
//        myDatabase.child(lobbyString).childByAutoId().setValue(userEmail)
//
//        Auth.auth().createUser(withEmail: "1@gmail.com", password: "123123") { (user, error) in
//            print(user?.displayName)
//        }
    }
    
    var searchPathArray : [String] = []
    
    @IBAction func addBranchBtnPressed(_ sender: Any) {
        if let labelText = firebaseTextfield?.text! {
            searchPathArray.append(labelText)
            
            var searchPath = ""
            for element in searchPathArray {
                searchPath.append("\(element)/")
            }
            firebaseLabel.text = searchPath
            firebaseTextfield.text = ""
        }
    }
    @IBOutlet weak var pushBtnPressed: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
