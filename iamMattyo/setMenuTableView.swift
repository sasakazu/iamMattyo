//
//  setMenuTableView.swift
//  iamMattyo
//
//  Created by 笹倉 一也 on 2018/09/13.
//  Copyright © 2018年 sasakura.company. All rights reserved.
//

import UIKit
import RealmSwift

class setMenuTableView: UITableViewController {
    
  
//    var setMenuItem = try! Realm().objects(Tranning.self)
    
    
    var setMenuItem: Results<Tranning>!
    
//    var setMenuItem = try! Realm().objects(Tranning.self)

  
//    var setMenuItem: Results<Tranning>!
//    var object:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let realm = try Realm()

            setMenuItem = realm.objects(Tranning.self)

            tableView.reloadData()

        }catch{

        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }


    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return setMenuItem.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let object = setMenuItem[indexPath.row]
        
        cell.textLabel?.text = object.name
        
        return cell
        
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    
       performSegue(withIdentifier: "editContact", sender: nil)
    
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "editContact")
        {
           
       
        }
 

    }
    
    
    
    
    
}
