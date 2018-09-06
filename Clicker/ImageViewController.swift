//
//  ImageViewController.swift
//  Clicker
//
//  Created by Charlotte Payne on 06/09/2018.
//  Copyright © 2018 Charlotte Payne. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://www.hardlineproducts.com/wp-content/uploads/2015/11/DD\(counter)-B.jpg"),
            let data = try? Data(contentsOf: url) {
                imageView.image = UIImage(data: data)
            }
    }
}
