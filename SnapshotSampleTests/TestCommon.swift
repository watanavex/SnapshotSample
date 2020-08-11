//
//  TestCommon.swift
//  SnapshotSampleTests
//
//  Created by Yohta Watanave on 2020/08/11.
//  Copyright © 2020 Yohta Watanave. All rights reserved.
//

import Foundation
import FBSnapshotTestCase

let recordMode = false

extension FBSnapshotTestCase {
    
    func snapshotBothMode(_ viewController: UIViewController, file: StaticString = #file, line: UInt = #line) {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = viewController
        window.makeKeyAndVisible()

        FBSnapshotVerifyView(window, identifier: "light", file: file, line: line)
        window.overrideUserInterfaceStyle = .dark
        FBSnapshotVerifyView(window, identifier: "dark", file: file, line: line)
    }
    
}
