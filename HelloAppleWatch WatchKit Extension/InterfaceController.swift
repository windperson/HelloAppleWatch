//
//  InterfaceController.swift
//  HelloAppleWatch WatchKit Extension
//
//  Created by 鮑承佑 on 02/04/2017.
//  Copyright © 2017 windperson. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    var count = 1
    @IBAction func btnClicked() {
        let s = "Click " + String(count) + " times"
        aLabel.setText(s)
        count += 1
    }
    @IBOutlet var aLabel: WKInterfaceLabel!
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBOutlet var resetSwitch: WKInterfaceSwitch!
    @IBAction func resetSwitched(_ value: Bool) {
        count = 0
        aLabel.setText("Reseted!")
        resetSwitch.setOn(true)
    }

}
