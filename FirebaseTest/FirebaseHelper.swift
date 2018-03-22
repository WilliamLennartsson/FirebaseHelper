//
//  FirebaseHelper.swift
//  FirebaseTest
//
//  Created by will on 2018-03-22.
//  Copyright © 2018 will. All rights reserved.
//

import UIKit
import Firebase
class FirebaseHelper : NSObject {
    
    var keyValuePair : [String : String] = ["Key":"", "Value":""]
    
    func setEventListenerForObject (){
        
    }
    
    
    //Push array of strings to chosen path
    func pushStringArrayWithPath (_ searchPath: [String], items : [String]){
        var stringSearchPath : String? = ""
        for keyWord in searchPath {
            stringSearchPath?.append("\(keyWord)/")
        }
        if let stringPath = stringSearchPath {
            let myDatabase = Database.database().reference(withPath: stringPath)
            myDatabase.setValue(items)
        } else {
            print("Something went with pushing to firebase")
            return
        }
    }
    
    
    // Push a tuple containing two string values to chosen path
    func pushKeyValueWithPath (searchPath : [String], item : (key: String, value: String)){
        var stringSearchPath : String? = ""
        for keyWord in searchPath {
            stringSearchPath?.append("\(keyWord)/")
        }
        if let stringPath = stringSearchPath {
            let myDatabase = Database.database().reference(withPath: stringPath)
            myDatabase.child(item.key).setValue(item.value)
        } else {
            print("Something went with pushing to firebase")
            return
        }
    }
    
    //NOTE: Only loads the global value with information. Doesnt return anything
    //Return / Sets value of object at given indexpath
    func getStringWithPath (_ searchPath : [String]){
        var stringSearchPath : String? = ""
        for keyWord in searchPath {
            stringSearchPath?.append("\(keyWord)/")
        }
        
        if let stringPath = stringSearchPath {
            //Successful Searchpath
            let myDatabase = Database.database().reference(withPath: stringPath)
            myDatabase.observeSingleEvent(of: .childAdded, with: { (snapshot) in
                print("\(snapshot.key) - snapshot key \n \(String(describing: snapshot.value ?? nil)) - snapshot Value")
                if let snapshotValue = snapshot.value as? String{
                    self.keyValuePair["Key"] = snapshot.key
                    self.keyValuePair["Value"] = snapshotValue

                }
            }, withCancel: { (error) in
                print("Error")
            })
        }
        
        if let a : String = keyValuePair["Key"]{
            print("\(a) ODKAODKAODKAOKFOAKFOAKFOKAOFKAOFKAOFKOAKFOAKFOAKFOKAOFKAOKFOAKFOK")
        } else {
            print("Nothing in the key - - - - - ")
        }
        if let b : String = keyValuePair["Value"]{
            print(b)
        }
    }
}




//    struct KeyValueItem {
//        let key : String?
//        let value : String?
//        let keyArray : [String]?
//        let valueArray : [String]?
//        init(_ key : String, _ value : String, _ keyArray : [String], _ valueArray : [String]) {
//            self.key = key
//            self.value = value
//            self.keyArray = keyArray
//            self.valueArray = valueArray
//        }
//    }


// Takes a searchpath of strings. The path can be empty
// The item added needs a key and a value in order to work
// Max index = 4
//    func pushKeyValueItem(_ searchPath: [String], item: (key: String, value: String)){
//        let myDatabase = Database.database().reference()
//        switch searchPath.count {
//        case 0: myDatabase.child(item.key).setValue(item.value)
//        case 1: myDatabase.child(searchPath[0]).child(item.key).setValue(item.value)
//        case 2: myDatabase.child(searchPath[0]).child(searchPath[1]).child(item.key).setValue(item.value)
//        case 3: myDatabase.child(searchPath[0]).child(searchPath[1]).child(searchPath[2]).child(item.key).setValue(item.value)
//        case 4: myDatabase.child(searchPath[0]).child(searchPath[1]).child(searchPath[2]).child(searchPath[3]).child(item.key).setValue(item.value)
//        default: return
//        }
//    }


//        //        let question1 = Question(title: "kakan går ofta till gymmet", correctAnswer: false)
//        //        ce()
//        myDatabase.child("Questions").child(newQuestion.title).setValue(newQuestion.correctAnswer)
