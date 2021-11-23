//
//  MenuViewController.swift
//  Homework_iOS_8
//
//  Created by Alexey Makarov on 21.03.2021.
//

import UIKit

class MenuViewController: UIViewController {

    let images = [UIImage(named: "cat2"), UIImage(named: "cat3"), UIImage(named: "cat4"), UIImage(named: "cat5")]
    let text = ["Floppa", "Cow cat", "Eat cat", "Scream cat"]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //задал размер ImageView
        let screenWidth = Double(self.view.frame.size.width)
        let imageWidth = screenWidth / 2 - 10 - 10
        let imageHeight = imageWidth * 1.5
        let labelWidth = screenWidth / 2 - 10 - 10
        let labelPosition = imageHeight + 10
        let labelHeight = 30
        //задал размер LabelView
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: labelWidth, height: 30))
        label.center = CGPoint(x: labelWidth / 2, y: 15)
        label.textAlignment = .center
       

        

        //initialization of variables for coordinates image
        var imageCoordinateX = 0
        var imageCoordinateY = 0
        var textCoordinateX = 0
        var textCoordinateY = 0
        var stepY = 0
        var definitionOfPositonImage = 0

        for i in 0...images.count - 1 {

            //если четная
            if i % 2 == 0 && definitionOfPositonImage % 2 == 0 {
                //set the coordinate value
                imageCoordinateX = 15
                textCoordinateX = 15
                stepY += 1
                //stepYText += 1

            } else {

                imageCoordinateX = 220
                textCoordinateX = 220
            }
                //сдвиг картинки вниз по Y
                definitionOfPositonImage += 1
                imageCoordinateY = stepY * 180
            
                //сдвиг лэйбла
                textCoordinateY = (imageCoordinateY + 290)

            let imageView = UIImageView()
            imageView.image = images[i]
            
            let textView = UILabel()
            textView.font = UIFont.systemFont(ofSize: 20)
            //textView.backgroundColor = .orange
            textView.text = text[i]
            

            //чтобы первые две картинки не смещались по Y
            if i == 0 || i == 1 {
                //задание положения и размера картинки
                imageView.frame = CGRect(x: imageCoordinateX, y: 40, width: Int(imageWidth), height: Int(imageHeight))
                //задание пложения и размера лэйбла
                textView.frame = CGRect(x: textCoordinateX, y: Int(imageView.frame.origin.y + imageView.frame.height) + 8, width: Int(labelWidth), height: Int(labelHeight))
                
            } else {
                //задание положения и размера лэйбла
                imageView.frame = CGRect(x: imageCoordinateX, y: imageCoordinateY, width: Int(imageWidth), height: Int(imageHeight))
                //задани полодения и размера лэйбла
                textView.frame = CGRect(x: textCoordinateX, y: textCoordinateY, width: Int(labelPosition), height: Int(labelHeight))
            }

            
            view.addSubview(imageView)
            view.addSubview(textView)
        }

    }
}
