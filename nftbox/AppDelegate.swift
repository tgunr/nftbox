//
//  AppDelegate.swift
//  nftbox
//
//  Created by Dave Carlton on 6/9/17.
//  Copyright © 2017 Polymicro Systems. All rights reserved.
//

import Cocoa
import Sequence

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        var t = NFT()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

