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

    let userEmail : String = "Hek@gmail.com"
    let lobbyString : String = "Lobby"
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //let question2 = Question(title: "kakan går ofta till gymmet", correctAnswer: false)
        
//        myDatabase.child(lobbyString).childByAutoId().setValue(userEmail)
//
//        Auth.auth().createUser(withEmail: "1@gmail.com", password: "123123") { (user, error) in
//            print(user?.displayName)
//        }
    }

    struct Question {
        let title : String
        let correctAnswer : Bool
        init(title : String, correctAnswer : Bool) {
            self.title = title
            self.correctAnswer = correctAnswer
        }
        
    }
    
    func loadQuestions(){
        //Not done
        let myDatabase = Database.database().reference()
        let question : String = myDatabase.child("Questions").description()
        
        print(question)
    }
    
    func pushQuestion (newQuestion: Question){
//        let question1 = Question(title: "kakan går ofta till gymmet", correctAnswer: false)
//        pushQuestion(newQuestion: question1)
//        pushQuestion(newQuestion: Question(title: "Jean hatar pizza", correctAnswer: false))
//        pushQuestion(newQuestion: Question(title: "Fem myror är fler än fyra elefanter", correctAnswer: true))
        
        let myDatabase = Database.database().reference()
        myDatabase.child("Questions").child(newQuestion.title).setValue(newQuestion.correctAnswer)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
