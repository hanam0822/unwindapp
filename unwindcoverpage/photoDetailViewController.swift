//
//  PhotoDetailViewController.swift
//  LaurensInstagram
//
//  Created by Apple on 7/30/19.
//  Copyright © 2019 Lauren Workosky. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let realPhoto = photo {
            journalText.text = realPhoto.caption
            
            if let cellPhotoImageData = realPhoto.imageData {
                if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                    photoOutlet.image = cellPhotoImage
                }
            }
        }
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var photoOutlet: UIImageView!
    var photo : Photos? = nil
    
    @IBOutlet weak var journalText: UITextView!
    
}
