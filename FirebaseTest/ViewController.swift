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
    @IBOutlet weak var clearPathBtn: UIButton!
    
    let fbHelper = FirebaseHelper()
    var searchPathArray : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
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
    
    @IBAction func pushBtnPressed(_ sender: Any) {
        if let keyString = keyTextfield?.text! {
            if let valueString = valueTextfield?.text! {
                fbHelper.pushKeyValueWithPath(searchPath: searchPathArray, item: (key: keyString, value: valueString))
            }
        }
    }
    
    @IBAction func clearPathBtnPressed(_ sender: Any) {
        searchPathArray = []
        firebaseLabel.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
