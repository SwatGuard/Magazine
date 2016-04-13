//
//  ViewController.swift
//  structBaseline
//
//  Created by Cosmin Stroilescu on 13/04/16.
//  Copyright © 2016 Cosmin Stroilescu. All rights reserved.
//

import UIKit

struct Shop {
    var workingDays : String
    var sambata : String
    var duminica : String
    
    var logo : UIImage?
    
    var open = false
}


class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{


    @IBOutlet weak var tableView: UITableView!
    
    
    let openSign: UIImage = UIImage(named: "open")!
    let closedSign: UIImage = UIImage(named: "closed")!
    
    var shops = [Shop]()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shops.append(Shop(workingDays: "09:00-20:00", sambata: "10:00-16:00", duminica: "10:00-15:00", logo: UIImage(named: "shop1"), open: true))
        shops.append(Shop(workingDays: "10:00-21:00", sambata: "10:30-13:00", duminica: "09:00-14:00", logo: UIImage(named: "shop2"), open: false))
        shops.append(Shop(workingDays: "09:30-19:30", sambata: "09:00-13:00", duminica: "10:30-15:00", logo: UIImage(named: "shop3"), open: true))
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shops.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! Cell
        let shop = shops[indexPath.row]
        cell.logo.image = shop.logo
        cell.programWorkingDays.text = "Luni-Vineri: \(shop.workingDays)"
        cell.programSambata.text = "Sambata: \(shop.sambata)"
        cell.programDuminica.text = "Duminica: \(shop.duminica)"
        cell.openClosed.image = shop.open ? openSign : closedSign
        return cell
    }
    
    
    func checkEmagOpen {
        if 
    }


}

