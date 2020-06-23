//
//  ViewController.swift
//  DemoRxSwift
//
//  Created by megahertz on 2020/6/23.
//  Copyright © 2020 megahertz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = "销售额"
        cell.detailTextLabel?.text = String(indexPath.row) + "万"
        cell.backgroundColor = UIColor.yellow
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row % 2 == 1 {
            let twoVC = TwoViewController();
            twoVC.title = String(indexPath.row);
            twoVC.titleName = String(indexPath.row);
            self.navigationController?.pushViewController(twoVC, animated: true)
        } else {
            let oneVC = OneViewController();
            oneVC.title = String(indexPath.row);
            oneVC.titleName = String(indexPath.row);
            var tempInfoDic = [String: String]();
            tempInfoDic["name"] = "Megahertz";
            tempInfoDic["titleName"] = "Couter";
            oneVC.infoDic = tempInfoDic as NSDictionary;
            let tempKeyArray = [String](tempInfoDic.keys);
            let tempValueArray = [String](tempInfoDic.values);
            oneVC.keyArray = tempKeyArray;
            oneVC.valueArray = tempValueArray;
            self.navigationController?.pushViewController(oneVC, animated: true)
        }

    }

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

