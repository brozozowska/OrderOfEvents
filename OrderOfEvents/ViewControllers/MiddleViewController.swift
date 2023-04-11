//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Сергей Розов on 11.04.2023.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet var MiddleLabel: UILabel!

    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }
    
    func addEvent(from: String) {
        if let existingText = MiddleLabel.text {
            MiddleLabel.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    
}
