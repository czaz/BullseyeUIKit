//
//  AboutViewController.swift
//  BullseyeUI
//
//  Created by Wm. Zazeckie on 1/29/21.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    // Tells UIKit to close the About screen with an animation
    // doing animated: false would make the dismiss have no page flip animation 
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "Bullseye",
                                     withExtension: "html"){
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

}
