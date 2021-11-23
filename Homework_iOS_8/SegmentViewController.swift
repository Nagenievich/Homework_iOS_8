//
//  SegmentViewController.swift
//  Homework_iOS_8
//
//  Created by Alexey Makarov on 21.03.2021.
//

import UIKit

class SegmentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        button1.isHidden = true
        button2.isHidden = true
        text1.isHidden = false
        text2.isHidden = false
        image1.isHidden = true
        image2.isHidden = true
        viewColor.backgroundColor = .green
    }
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var viewColor: UIView!

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var button1: UIView!
    @IBOutlet weak var button2: UIView!
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    @IBAction func segmentVIew(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            text1.isHidden = false
            text2.isHidden = false
            button1.isHidden = true
            button2.isHidden = true
            image2.isHidden = true
            image1.isHidden = true

            viewColor.backgroundColor = .green
        case 1:
            text1.isHidden = true
            text2.isHidden = true
            button1.isHidden = false
            button2.isHidden = false
            image2.isHidden = true
            image1.isHidden = true
          
            viewColor.backgroundColor = .blue
        case 2:
            text1.isHidden = true
            text2.isHidden = true
            button1.isHidden = true
            button2.isHidden = true
            image2.isHidden = false
            image1.isHidden = false

            viewColor.backgroundColor = .purple
        default:
            break
        }
    }
  
}
