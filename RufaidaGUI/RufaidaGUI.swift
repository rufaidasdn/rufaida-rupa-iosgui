//
//  RufaidaGUI.swift
//  RufaidaGUI
//
//  Created by Md Shahed Hossain on 16/12/2019.
//  Copyright © 2019 Medical Systems Company Ltd. All rights reserved.
//

import Foundation

public final class HelloWorld: NSObject {
    
    func hello(_ name: String) -> String {
        return "Hello, \(name)!"
    }
    
    func info(_ name: String) -> Void {
        print("INFO: \(self.hello(name))")
    }
}
