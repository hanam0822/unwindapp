//
//  AddANewPhoto.swift
//  LaurensInstagram
//
//  Created by Apple on 7/29/19.
//  Copyright © 2019 Lauren Workosky. All rights reserved.
//

import UIKit

class AddANewPhoto: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var shownImage: UIImageView!
    
    
    @IBAction func takeAPhoto(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func chooseFromLibrary(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            let fixedImaged = ImageUtilities.fixImageOrientation(imageSource: selectedImage)
            shownImage.image = fixedImaged
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var captionEntered: UITextView!
    
    
    @IBAction func savePicture(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let photoToSave = Photos(entity: Photos.entity(), insertInto: context)
            photoToSave.caption = captionEntered.text
            
            if let userImage = shownImage.image {
                if let userImageData = userImage.pngData(){
                    photoToSave.imageData = userImageData
                }
            }
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
            
            navigationController?.popViewController(animated: true)
        }
    }
    
    
}
