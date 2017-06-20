//
//  TargetViewController.swift
//  nftbox
//
//  Created by Dave Carlton on 6/9/17.
//  Copyright © 2017 Polymicro Systems. All rights reserved.
//

import Cocoa

class TargetViewController: NSViewController {
    
    @IBOutlet weak var targetField: NSTextField!
    @IBOutlet weak var connectButton: NSButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    @IBAction func testTarget(_ sender: Any) {
        let targetHost = targetField.stringValue
        if targetHost.count > 0 {
            testConnection(host: targetHost)
        }
    }
    
    func testConnection(host: String) -> Bool {
        return true
    }
}

