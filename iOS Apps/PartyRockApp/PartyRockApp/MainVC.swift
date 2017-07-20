//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Michel Kansou on 20/07/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/KQ6zr6kCPj8/hqdefault.jpg?sqp=-oaymwEWCKgBEF5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBIURtmlCBFXzDWNCtliZcZd4v_QA",
                           videoURL: urlTest, videoTitle: "LMFAO - Party Rock Anthem ft. Lauren Bennett, GoonRock")
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/SkTt9k4Y-a8/hqdefault.jpg?sqp=-oaymwEWCKgBEF5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCpcR0vTUCU-sNGaehBRqb-vFe56Q",
                           videoURL: urlTest, videoTitle: "LMFAO - Sorry For Party Rocking")
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/SaWVlXXTvCg/hqdefault.jpg?sqp=-oaymwEWCKgBEF5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLDeYXhGkaJdoCdwaPapLmOENYMoMA",
                           videoURL: urlTest, videoTitle: "Sexy and I Know It LMFAO! ")
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/SkTt9k4Y-a8/hqdefault.jpg?sqp=-oaymwEWCKgBEF5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCpcR0vTUCU-sNGaehBRqb-vFe56Q",
                           videoURL: urlTest, videoTitle: "LMFAO - Sorry For Party Rocking")
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/SaWVlXXTvCg/hqdefault.jpg?sqp=-oaymwEWCKgBEF5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLDeYXhGkaJdoCdwaPapLmOENYMoMA",
                           videoURL: urlTest, videoTitle: "Sexy and I Know It LMFAO! ")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }
}

