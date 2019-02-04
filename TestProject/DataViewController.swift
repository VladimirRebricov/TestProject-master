//
//  DataViewController.swift
//  TestProject
//
//  Created by Владимир Ребриков on 29/01/2019.
//  Copyright © 2019 Владимир Ребриков. All rights reserved.
//

import UIKit


class DataViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

//    @IBOutlet var titleLbl1: UILabel!
//    @IBOutlet var titleLbl2: UILabel!
//    @IBOutlet var titleLbl3: UILabel!
//    @IBOutlet var imageV1: UIImageView!
    
    @IBOutlet var dataTableView: UITableView!

    var selectedActor: ProfileElement!
    var selectedActor2: Album!
      override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        navigationItem.largeTitleDisplayMode = .never }



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedActor.user.albums.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DataTableViewCell") as? DataTableViewCell else { return UITableViewCell() }
        
        cell.titleLbl.text = selectedActor.user.albums[indexPath.row].title
        //cell.titleLbl.text = selectedActor2.images[0].url
        if let profile_picURL = URL(string: selectedActor2.images[indexPath.row].url) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: profile_picURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        
                        cell.firstImage.image = image
                    }
                }
            }
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let dvC = storyboard.instantiateViewController(withIdentifier:"ImagesViewController") as! ImagesViewController
        let selectedActor1 = selectedActor.user.albums[indexPath.row]
        dvC.selectedActor1 = selectedActor1
        
        
        self.navigationController!.pushViewController(dvC, animated: true)
        
    }
}

