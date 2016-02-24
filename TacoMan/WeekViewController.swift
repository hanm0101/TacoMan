//
//  WeekViewController.swift
//  TacoMan
//
//  Created by hana on 10/2/2016.
//  Copyright © 2016 hana. All rights reserved.
//

import UIKit
//protocol claim
class WeekViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //tableview used in storyboard
    @IBOutlet var table: UITableView!
    //var tableCell : WeekTableViewCell = WeekTableViewCell()
    
    //
    var weekNameArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //data method belongs to the view controller class
        table.dataSource = self
        
        //
        table.delegate = self
        
        //
        weekNameArray = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    }
    
    func Date() -> [String] {
//        NSCalendar.autoupdatingCurrentCalendar()
//        
//        let date = NSDate()
//        let calendar = NSCalendar.currentCalendar()
//        let components = calendar.components([.Day , .Month], fromDate: date)
//        
//        let month = components.month
//        let day = components.day
//        
//        print(month)
//        print(day)

        var dt : [String] = []
        for i in 1..<6 {
            let from = NSDate(timeIntervalSinceNow: Double(24*60*60*i))
            let components = NSCalendar.currentCalendar().components([.Day , .Month], fromDate: from)
            let month = components.month
            let day = components.day
            let dt2 = String(month) + "/" + String(day)
        }
    
        return dt
        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    //the number of cells
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weekNameArray.count
    }
    
    //appear as asdf
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")! as! WeekTableViewCell
        
        cell.Weekday.text = weekNameArray[indexPath.row]
        cell.Date.text = Date()[indexPath.row]
        return cell
    }
        
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
