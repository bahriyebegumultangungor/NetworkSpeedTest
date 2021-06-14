//
//  ViewController.swift
//  NetworkMonitor
//
//  Created by Bahriye Begüm Ültan Güngör on 28.04.2021.
//

import UIKit

class ViewController: UIViewController, NetworkSpeedProviderDelegate {
    func callWhileSpeedChange(networkStatus: NetworkStatus) {
        switch networkStatus {
        case .poor:
            break
        case .good:
            break
        case .disConnected:
            break
        }
    }
    
    let test = NetworkSpeedTest()
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           test.delegate = self
           test.networkSpeedTestStop()
           test.networkSpeedTestStart(UrlForTestSpeed: "https://giantbomb1.cbsistatic.com/uploads/original/15/157771/2312725-a10.jpeg")
           // Do any additional setup after loading the view.
       }
   }

////        test.networkSpeedTestStart(UrlForTestSpeed:"https://images.apple.com/v/imac-with-retina/a/images/overview/5k_image.jpg")
//        test.networkSpeedTestStart(UrlForTestSpeed:"https://giantbomb1.cbsistatic.com/uploads/original/15/157771/2312725-a10.jpeg")
////        test.networkSpeedTestStart(UrlForTestSpeed:"https://i.ibb.co/FxQqWsH/unnamed.jpg")
