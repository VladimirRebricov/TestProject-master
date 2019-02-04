//
//  ViewController.swift
//  TestProject
//
//  Created by Владимир Ребриков on 29/01/2019.
//  Copyright © 2019 Владимир Ребриков. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    final let url = URL(string: "http://appscorporation.ga/api-user/test")
     var actors: [ProfileElement] = []
    
    
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
    downloadJson()
    

}
    func setupNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true }
    
    func downloadJson() {
        guard let downloadURL = url else { return }
        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
            guard let data = data, error == nil, urlResponse != nil else {
                print("something is wrong")
                return
            }
            print("downloaded")
            do
            {
                //                let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! NSDictionary
                //                let result = json.object(forKey: "result") as! NSDictionary
                
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase // This line gets rid of all CodingKeys
                let result = try decoder.decode([ProfileElement].self, from: data)
                
                self.actors = result
                DispatchQueue.main.async {
                    
                    self.tableView.reloadData()
                }
            } catch let error {
                print(error)
            }
            }.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actors.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ActorTableViewCell") as? ActorTableViewCell else { return UITableViewCell() }
        
        cell.nameLbl.text = actors[indexPath.row].user.name + "  " + actors[indexPath.row].user.surname
        cell.nameSurnameLbl.text = actors[indexPath.row].user.name + "  " + actors[indexPath.row].user.surname + "  " + actors[indexPath.row].postTags
        
        let member = "\(actors[indexPath.row].postLikes)" + "   Likes"
        cell.likesLbl.text = member
        //cell.nextPage = actors[indexPath.row].user.albums
        
        
        
        if let profile_picURL = URL(string: actors[indexPath.row].postImage) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: profile_picURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        
                        cell.postPct.image = image
                    }
                }
            }
        }
        if let profile_picURL = URL(string: actors[indexPath.row].user.profilePic) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: profile_picURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.prifilePct.image = image
                        cell.prifilePct.layer.cornerRadius = cell.prifilePct.frame.size.width / 2
                        
                    }
                }
            }
        }
        return cell
    }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let dVC = storyboard.instantiateViewController(withIdentifier:"DataViewController") as! DataViewController

            let selectedActor = actors[indexPath.row]
            dVC.selectedActor = selectedActor

            self.navigationController!.pushViewController(dVC, animated: true)
    
        }
    }

