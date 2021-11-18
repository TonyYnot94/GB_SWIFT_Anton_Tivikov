//
//  PhotoCollectionViewController.swift
//  UI_GB_Тивиков_Антон
//
//  Created by Антон Тивиков on 12.11.2021.
//

import UIKit



class PhotoCollectionViewController: UICollectionViewController {

    
    var photoCard : UIImage?
    
    @IBAction func backToFL(segue: UIStoryboardSegue) {
        if segue.identifier == "toFriendList" {
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendPhoto", for: indexPath) as! PhotoCollectionViewCell
       cell.photoImage.image = photoCard
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowPhoto" {
            guard let cell = sender as? PhotoCollectionViewCell else{return}
            guard let inform = segue.destination as? PhotoController else{return}
            inform.avatarImage = cell.photoImage.image
        }
   }
    
    
    
    
    
    
}


