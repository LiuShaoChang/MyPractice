//
//  ViewController.swift
//  AlertView
//
//  Created by 刘少昌 on 2017/2/18.
//  Copyright © 2017年 S.L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // alertController
    var alertVC:UIAlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Initializing the AlertController
        alertVC = UIAlertController.init(title: "Title", message: "Message", preferredStyle: .alert)
        // creating an action
        let action = UIAlertAction.init(title: "My action!", style: .default) { (UIAlertAction) in
            print("This is my first alert!")
        }
        alertVC?.addAction(action)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.present(alertVC!, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

