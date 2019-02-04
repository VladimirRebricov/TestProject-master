//
//  ImagesViewController.swift
//  TestProject
//
//  Created by Владимир Ребриков on 03/02/2019.
//  Copyright © 2019 Владимир Ребриков. All rights reserved.
//

import UIKit

class ImagesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var selectedActor1: Album!
    @IBOutlet var imageTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        navigationItem.largeTitleDisplayMode = .never }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedActor1.images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ImagesTableViewCell") as? ImagesTableViewCell else { return UITableViewCell() }
        let member = "\(selectedActor1.images[indexPath.row].id)" + "id"
        cell.urlLabel.text = member
        //cell.urlLabel.text = selectedActor1.images[indexPath.row].id
        if let profile_picURL = URL(string: selectedActor1.images[indexPath.row].url) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: profile_picURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        
                        cell.imagesView.image = image
                    }
                }
            }
        }
        return cell
    }
  
}

