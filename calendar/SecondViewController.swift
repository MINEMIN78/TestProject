//
//  SecondViewController.swift
//  calendar
//
//  Created by YUMAKOMORI on 2016/06/23.
//  Copyright © 2016年 YUMAKOMORI. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    var Date: String!
    @IBOutlet var dateLabel:UILabel!
    @IBOutlet weak var previewImageView: UIImageView!

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
    
    @IBAction func addImageTapped(sender: AnyObject) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        
        imagePicker.mediaTypes = UIImagePickerController.availableMediaTypesForSourceType(.PhotoLibrary)!
        imagePicker.allowsEditing = false
        self.presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        self.previewImageView.image = image
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func composeTapped() {
        
        let imageToBeUploaded = self.previewImageView.image
        
        let imageData:NSData = UIImagePNGRepresentation(imageToBeUploaded!)!
        
        let imageOneData = UIImageJPEGRepresentation(imageToBeUploaded!,0.5)
        
        
        do {
            
            //save
        } catch {
            // Error handling...
        }
        
        //        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("postController")
        //        self.presentViewController(vc! as UIViewController, animated: true, completion: nil)
        
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
