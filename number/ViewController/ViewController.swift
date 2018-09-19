//
//  ViewController.swift
//  number
//
//  Created by duy on 9/18/18.
//  Copyright © 2018 app1 name. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

  @IBOutlet weak var increaseButton: UIButton!
  @IBOutlet weak var decreaseButton: UIButton!
  @IBOutlet weak var numberLable: UILabel!
  var number = NumberViewModel()
  override func viewDidLoad() {
    super.viewDidLoad()
    setDefaultLayoutButton()
    _ = number.value.asObservable().subscribe(onNext: {[weak self] nextNumber in
      if nextNumber == 0 {
        self?.decreaseButton.backgroundColor = .red
        self?.decreaseButton.isEnabled = false
      } else {
        self?.decreaseButton.backgroundColor = .white
        self?.decreaseButton.isEnabled = true
      }
      self?.numberLable.text = String(nextNumber)
    })
  }
  
  @IBAction func IncreaseButtonDidTouched(_ sender: Any) {
    number.increase()
  }
  @IBAction func decreaseButtonDidTouched(_ sender: Any) {
    number.decrease()
  }
  

}

// layout
extension ViewController {
  func setDefaultLayoutButton() {
    increaseButton.layer.borderWidth = 1
    decreaseButton.layer.borderWidth = 1
  }
}

