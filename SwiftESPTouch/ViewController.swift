//
//  ViewController.swift
//  SwiftESPTouch
//
//  Created by Dante on 2016/12/26.
//  Copyright © 2016年 peakhonor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var task: ESPTouchTask!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        task = ESPTouchTask(apSsid: "Coffizz",
                            andApBssid: "",
                            andApPwd: "77882233",
                            andIsSsidHiden: false)
        
        task.setEsptouchDelegate(self)
        
        DispatchQueue.global(qos: .userInitiated).async {
            _ = self.task.executeForResult()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

extension ViewController: ESPTouchDelegate {
    func onEsptouchResultAdded(with result: ESPTouchResult!) {
        print("\(result.description)")
    }
}

