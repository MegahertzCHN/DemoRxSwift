//
//  OneViewController.swift
//  DemoRxSwift
//
//  Created by megahertz on 2020/6/23.
//  Copyright © 2020 megahertz. All rights reserved.
//

import UIKit

class OneViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.keyArray.count + self.valueArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sourceArray = self.keyArray + self.valueArray;
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = sourceArray[indexPath.row]
        cell.backgroundColor = UIColor.purple;
        cell.selectionStyle = UITableViewCell.SelectionStyle.none;
        return cell;
    }
    
    var titleName = ""
    var infoDic = NSDictionary()
    var keyArray = Array<String>()
    var valueArray = Array<String>()
    @IBOutlet weak var infoNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.title = "单数VC"
        self.infoNameLabel.text = self.infoDic.object(forKey: "name") as? String
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
