//
//  ViewController.swift
//  imagepick
//
//  Created by Nirmal Ghediya on 30/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imge3: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_3(_ sender: Any) {
        let photo = UIImagePickerController()
        photo.delegate = self
       
        present(photo, animated: true, completion: nil)
    }
    @IBAction func btn_2(_ sender: Any) {
        let photo = UIImagePickerController()
        photo.delegate = self
       
        present(photo, animated: true, completion: nil)
    }
    @IBAction func btn_open(_ sender: Any) {
        let photo = UIImagePickerController()
        photo.delegate = self
       
        present(photo, animated: true, completion: nil)
    }
}

extension ViewController:  UIImagePickerControllerDelegate & UINavigationControllerDelegate {

func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    let img = info[.originalImage] as! UIImage
    image.image=img
    dismiss(animated: true, completion: nil)
}
}

