//
//  ViewController.swift
//  ImageResizer
//
//  Created by Sieder Villareal on 8/24/15.
//  Copyright (c) 2015 Sieder Villareal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var photoOutput: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cameraButton(sender: AnyObject) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .Camera
        presentViewController(picker, animated: true, completion: nil)
    }

    @IBAction func photoLibrary(sender: AnyObject) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        presentViewController(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        
        var imagePhoto: UIImage?
        imagePhoto = info[UIImagePickerControllerOriginalImage] as! UIImage
        let resizer = Resizer()
        let newImage = resizer.RBResizeImage(imagePhoto!, targetSize: CGSizeMake(500, 550))
        photoOutput.image = newImage
        
        dismissViewControllerAnimated(true, completion: nil)
        
        
        
        
        
        
    }
}

