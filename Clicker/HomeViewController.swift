//
//  ViewController.swift
//  Clicker
//
//  Created by Charlotte Payne on 06/09/2018.
//  Copyright © 2018 Charlotte Payne. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var counter = 0
    var colours:[UIColor] = [UIColor.blue, UIColor.cyan, UIColor.green, UIColor.red]

    @IBAction func buttonTapped(_ sender: Any) {
        counter += 1
        counterButton.setTitle("\(counter)", for: UIControlState.normal)
        view.backgroundColor = colours[counter % colours.count]
    }
    
    @IBOutlet weak var counterButton: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let imageViewController = segue.destination as? ImageViewController {
                imageViewController.counter = counter
        }
    }
}
