//
//  ViewController.swift
//  ActionSheetDemo
//
//  Created by liushaochang on 2017/2/6.
//  Copyright © 2017年 YJYX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Controller
    var controller:UIAlertController?
    var actionViaEmail:UIAlertAction?
    var actionDelete:UIAlertAction?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        controller = UIAlertController.init(title: "My action sheet", message: "how do you want to send a meesage?", preferredStyle: .actionSheet)
        
        // actions
        actionViaEmail = UIAlertAction.init(title: "via email", style: .default, handler: { (action:UIAlertAction!) in
            print("message sent by email")
        })
        
        actionDelete = UIAlertAction.init(title: "delete", style: .cancel, handler: { (UIAlertAction) in
            print("message deleted!")
        })
        
        // connecting the actions to the controller
        controller?.addAction(actionViaEmail!)
        controller?.addAction(actionDelete!)
 
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // present the actionSheet
        self.present(controller!, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

