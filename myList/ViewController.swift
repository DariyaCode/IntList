//
//  ViewController.swift
//  myList
//
//  Created by Dariya Gecher on 05.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelSurname: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = person.name
        labelSurname.text = person.surname
        imageView.image = UIImage(named: person.imageName)
    }


}

