//
//  menuDetailViewController.swift
//  iamMattyo
//
//  Created by 笹倉 一也 on 2018/09/13.
//  Copyright © 2018年 sasakura.company. All rights reserved.
//

import UIKit
import RealmSwift

class menuDetailViewController: UIViewController {

    
    @IBOutlet weak var menuName: UILabel!
    
    var test:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()

        let names = realm.objects(Tranning.self)
        
        for name in names {
        
            menuName.text = name.name
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
}
