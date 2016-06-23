//
//  SecondViewController.swift
//  calendar
//
//  Created by YUMAKOMORI on 2016/06/23.
//  Copyright © 2016年 YUMAKOMORI. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var Date: String!
    @IBOutlet var dateLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let formatter: NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = "M月d日"
        
        dateLabel.text = Date

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
