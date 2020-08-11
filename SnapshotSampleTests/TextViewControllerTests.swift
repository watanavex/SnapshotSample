//
//  TextViewControllerTests.swift
//  SnapshotSampleTests
//
//  Created by Yohta Watanave on 2020/08/11.
//  Copyright © 2020 Yohta Watanave. All rights reserved.
//

import XCTest
import FBSnapshotTestCase
@testable import SnapshotSample

class TextViewControllerTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        
        self.recordMode = SnapshotSampleTests.recordMode
    }

    func test_snapshot() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "Text")
        snapshotBothMode(viewController)
    }

}
