//
//  ViewController.swift
//  AulaDeCloudKitTamara
//
//  Created by Tamara Erlij on 03/03/20.
//  Copyright © 2020 Tamara Erlij. All rights reserved.
//

import UIKit
import CloudKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let container = CKContainer.default()
        let db = container.privateCloudDatabase
        
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "Aluno", predicate: predicate)
        
        db.perform(query, inZoneWith: nil) { (records, error) in
            print(records)
            print(error)
    }
    }

}

