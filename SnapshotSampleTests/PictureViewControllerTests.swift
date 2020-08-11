//
//  PictureViewControllerTests.swift
//  SnapshotSampleTests
//
//  Created by Yohta Watanave on 2020/08/11.
//  Copyright © 2020 Yohta Watanave. All rights reserved.
//

import XCTest
import FBSnapshotTestCase
@testable import SnapshotSample

class PictureViewControllerTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        
        self.recordMode = false
    }

    func test_snapshot() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "Picture")
        FBSnapshotVerifyView(viewController.view)
    }

}
