//
//  PhotoController.swift
//  UI_GB_Тивиков_Антон
//
//  Created by Антон Тивиков on 17.11.2021.
//

import UIKit

class PhotoController: UIViewController {

    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet var BGView: UIView!
    @IBOutlet weak var likeCounterLabel: UILabel!
    @IBOutlet weak var friendPhotoImg: UIImageView!
    @IBOutlet weak var nameTitle: UINavigationItem!
    @IBOutlet weak var shadowView: UIView!
    
    
    let colors : UIColor = .random
    var avatarImage : UIImage?
    var counter = 0
    var likes = [UIImage(systemName: "heart"),UIImage(systemName: "heart.fill") ]
    
    
    @IBAction func likePressed(_ sender: UIButton) {
        if likeButton.currentImage == likes[0]{
            likeButton.setImage(likes[1], for: .normal)
            counter = counter + 1
            likeCounterLabel.text = String(counter)
        }else if likeButton.currentImage == likes[1]{
            likeButton.setImage(likes[0], for: .normal)
            counter = counter - 1
            likeCounterLabel.text = String(counter)
        }else{
            print("Error")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        likeButton.tintColor = .random
        likeButton.setImage(likes[0], for: .normal)
        likeCounterLabel.text = String(counter)
        LoadImage()
        ShadowCreate()
        BGViewColorSet()
        
    }

    func LoadImage (){
        friendPhotoImg.image = avatarImage
        friendPhotoImg.contentMode = .scaleAspectFill
        friendPhotoImg.layer.cornerRadius = friendPhotoImg.frame.height/2
        friendPhotoImg.layer.cornerRadius = friendPhotoImg.frame.width/2
        
    }
    
    func ShadowCreate (){
        shadowView.layer.cornerRadius = friendPhotoImg.layer.cornerRadius
        shadowView.clipsToBounds = false
        shadowView.layer.shadowColor = colors.cgColor
        shadowView.layer.shadowOffset = CGSize.zero
        shadowView.layer.shadowOpacity = 5
        shadowView.isHidden = false
        shadowView.layer.shadowRadius = 35
        self.view.sendSubviewToBack(shadowView)
    }
    
    func BGViewColorSet (){
        BGView.backgroundColor = UIColor.random
    }
}

// MARK: - Extentions . Random Color

extension CGFloat {
    static var random: CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random, green: .random, blue: .random, alpha: 1.0)
    }
}
