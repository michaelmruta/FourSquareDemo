//
//  DetailViewController.swift
//  FourSquareDemo
//
//  Created by Meku's MacBook Pro on 10/2/18.
//
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var address: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let name = name {
                name.text = detail["name"] as? String
            }
            if let address = address {
                let location = detail["location"] as? Dictionary<String,AnyObject>
                address.text = location?["address"] as? String
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Dictionary<String, AnyObject>? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

