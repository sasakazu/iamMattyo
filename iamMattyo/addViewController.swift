//
//  addViewController.swift
//  iamMattyo
//
//  Created by 笹倉 一也 on 2018/09/12.
//  Copyright © 2018年 sasakura.company. All rights reserved.
//

import UIKit
import RealmSwift

class addViewController: UIViewController {
    
    
    @IBOutlet weak var addTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func setAdd(_ sender: Any) {
        
        let tranning = Tranning()
        
        tranning.name = addTextField.text!
        
        
        do{
            let realm = try Realm()
            try realm.write({ () -> Void in
                realm.add(tranning)
                
                print("ToDo Saved")
            
            })
            
        } catch {
            
            print("Save is Faild")
            
        }
        
        self.navigationController?.popToRootViewController(animated: true)
        
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
