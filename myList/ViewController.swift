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
    @IBOutlet weak var labelNickname: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var evilImageView: UIImageView!
    @IBOutlet weak var details: UITextView!
    @IBOutlet weak var labelEpisode: UILabel!
    @IBOutlet weak var labelGender: UILabel!
    @IBOutlet weak var labelPower: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var labelHardest: UILabel!
    
    
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = person.name
        labelSurname.text = person.surname
        labelNickname.text = person.nick
        imageView.image = UIImage(named: person.imageName)
        evilImageView.image = UIImage(named: person.evilImageName)
        labelEpisode.text = String(person.episode)
        labelGender.text = person.gender
        labelAge.text = String(person.age)
        labelPower.text = person.power
        labelHardest.text = String(person.hardest)
    }


}

