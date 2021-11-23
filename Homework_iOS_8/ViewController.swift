//
//  ViewController.swift
//  Homework_iOS_8
//
//  Created by Alexey Makarov on 16.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "cat0")
    }
    
    var catArray: [UIImage] = [
          UIImage(named: "cat0")!,
          UIImage(named: "cat1")!,
          UIImage(named: "cat2")!,
          UIImage(named: "cat3")!,
          UIImage(named: "cat4")!,
          UIImage(named: "cat5")!,
          UIImage(named: "cat6")!,
          UIImage(named: "cat7")!,
          UIImage(named: "cat8")!,
          UIImage(named: "cat9")!
      ]
    var currentIndex = 0

    @IBAction func backButton(_ sender: Any) {
        
        if currentIndex == 0 {
            imageView.image = catArray[9]
            currentIndex += 10
        }
        
        currentIndex -= 1
        imageView.image = catArray[currentIndex % catArray.count]
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        currentIndex += 1
        imageView.image = catArray[currentIndex % catArray.count]
    }
    
}

