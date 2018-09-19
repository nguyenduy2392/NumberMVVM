//
//  NumberViewModel.swift
//  number
//
//  Created by duy on 9/18/18.
//  Copyright © 2018 app1 name. All rights reserved.
//

import Foundation
import RxSwift

class NumberViewModel {
  var value: Variable<Int> = Variable(0)
  
  func increase() {
    value.value += 2
  }
  
  func decrease() {
    value.value -= 1
  }
}
