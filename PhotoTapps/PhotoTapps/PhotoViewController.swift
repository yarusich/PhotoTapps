//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Антон Сафронов on 23.04.2020.
//  Copyright © 2020 Антон Сафронов. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func shareAction(_ sender: UIButton) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
//        метод сообщающий об успешной отправке
//        Для того чтобы спросить разрешения у пользователя - файл info.plist
//        shareController.completionWithItemsHandler = { _, bool, _, _ in
//            if bool {
//                print("Успешно")
//            }
//
//        }
        
        present(shareController, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image
 
    }

}
