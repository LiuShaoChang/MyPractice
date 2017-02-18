//
//  ViewController.swift
//  BasicTableView
//
//  Created by liushaochang on 2017/2/18.
//  Copyright © 2017年 S.L. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // datasource
    // fileprivate 文件内私有,在该文件内,其他类也可访问
    // private 绝对的私有,只能在该类中访问,出了该类就不能访问
    let dataSorce = ["Sleepy", "Sneezy", "Bashful", "Happy",
                                 "Doc", "Grumpy", "Dopey",
                                 "Thorin", "Dorin", "Nori", "Ori",
                                 "Balin", "Dwalin", "Fili", "Kili",
                                 "Oin", "Gloin", "Bifur", "Bofur",
                                 "Bombur"]
    let Identifier = "identifier"
    let tableview = UITableView.init(frame: UIScreen.main.bounds, style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableview.dataSource = self
        tableview.delegate = self
        view.addSubview(tableview)
        
    }
    
    // MARK:UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSorce.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: Identifier) as UITableViewCell!
        if cell == nil {
            cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: Identifier)
        }
        // adding the images
        let image = UIImage.init(named: "star")
        let highlitedImage = UIImage.init(named: "stars")
        cell?.imageView?.image = image
        cell?.imageView?.highlightedImage = highlitedImage
        // adding detail text
        if indexPath.row < 7 {
            cell?.detailTextLabel?.text = "Mr ben"
        }else {
            cell?.detailTextLabel?.text = "Mr Token"
        }
        cell?.textLabel?.text = dataSorce[indexPath.row]
        cell?.textLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        return cell!
        
    }
    
    // MARK:UITableViewDelegate
    func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int {
        return indexPath.row % 4
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if indexPath.row == 0 {
            return nil
        }else {
            return indexPath
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowVlaue = dataSorce[indexPath.row]
        let message = "You selected\(rowVlaue)"
        let alertController = UIAlertController.init(title: "Row Selected", message: message, preferredStyle: .alert)
        let action = UIAlertAction.init(title: "Yes,I did", style: .default, handler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 0 ? 120 : 70
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

