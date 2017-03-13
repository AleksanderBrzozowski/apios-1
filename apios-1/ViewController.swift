//
//  ViewController.swift
//  apios-1
//
//  Created by apios on 13/03/2017.
//  Copyright (c) 2017 com.brzozowski. All rights reserved.
//

import UIKit
import RxSwift
import RxAlamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        requestJSON(.get, "https://gturnquist-quoters.cfapps.io/api/random")
                .observeOn(MainScheduler.instance)
                .subscribe { print($0) }
    }
}
