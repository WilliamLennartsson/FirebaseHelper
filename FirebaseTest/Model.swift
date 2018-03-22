//
//  Model.swift
//  FirebaseTest
//
//  Created by will on 2018-03-21.
//  Copyright © 2018 will. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class Model{
    // funcitons
    // load up array and return it
    func getQuestionArray() -> [Question]{
        var questionArray : [Question] = []
        
        return questionArray
    }

    func pushQuestion (newQuestion: Question){
        
    }
    // win conditions

    // player struct - score , name
    struct Question{
        let title : String
        let correctAnswer : Bool
    }
}
