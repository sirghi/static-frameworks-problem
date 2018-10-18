//
//  ClassA.swift
//  FrameworkA
//
//  Created by Sergiu Todirascu on 10/18/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import Foundation
import FrameworkB

public class A {

  public init() {}

  public func doA() {
    print("in Framework A")
    B().doB()
  }

}
