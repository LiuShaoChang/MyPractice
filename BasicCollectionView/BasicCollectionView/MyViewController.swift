//
//  MyViewController.swift
//  BasicCollectionView
//
//  Created by liushaochang on 2017/3/2.
//  Copyright © 2017年 S.L. All rights reserved.
//

import UIKit

class MyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    let dataSource = ["black", "orange", "purple", "blue", "yellow", "red"]
    let indentifier = "CustomCell"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpCollectionView()
        
        
    }
    
    // MARK:set up
    func setUpCollectionView() {
        let layout = UICollectionViewFlowLayout.init()
        layout.itemSize = CGSize.init(width: UIScreen.main.bounds.size.width - 20, height: UIScreen.main.bounds.size.height*4/5);
        layout.minimumInteritemSpacing = 10;
        layout.minimumLineSpacing = 20;
        layout.scrollDirection = .horizontal;
        self.collectionView.isPagingEnabled = true;
        self.collectionView.showsHorizontalScrollIndicator = true;
        self.collectionView.collectionViewLayout = layout
        self.collectionView.register(UINib.init(nibName:"CustomCell", bundle: nil), forCellWithReuseIdentifier: indentifier)
    }
    
    // MARK:<UICollectionViewDataSource>
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: indentifier, for: indexPath) as! CustomCell
        cell.colorLabel.text = self.dataSource[indexPath.item];
        switch indexPath.item {
        case 0:
            cell.colorView.backgroundColor = UIColor.black
        case 1:
            cell.colorView.backgroundColor = UIColor.orange
        case 2:
            cell.colorView.backgroundColor = UIColor.purple
        case 3:
            cell.colorView.backgroundColor = UIColor.blue
        case 4:
            cell.colorView.backgroundColor = UIColor.yellow
        case 5:
            cell.colorView.backgroundColor = UIColor.red
            
        default:
            break
            
        }
        return cell
        
    }
    
    // MARK:<UICollectionViewDelegate>
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell:CustomCell = collectionView.cellForItem(at: indexPath) as! CustomCell
        cell.colorView.backgroundColor = UIColor.black
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
