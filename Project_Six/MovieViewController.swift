//
//  MovieViewController.swift
//  Project_Six
//
//  Created by Patrick Alston on 1/24/20.
//  Copyright © 2020 Patrick Alston. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import AVKit
import WebKit
//@IBOutlet weak var wv: WKWebView!
class MovieViewController: UIViewController{
    let movieLinks: [String] = ["https://www.youtube.com/watch?v=3YmMNpbFjp0", "https://www.youtube.com/watch?v=MymE8AgCi54" ]
    
//   func randomElement<T>(using generator: inout T) -> Element? where T : RandomNumberGenerator
//      let randomLink = movieLinks.randomElement()!
//    @IBOutlet weak var webView: WKWebView!
    func loadYoutube(videoID:String) {
        // how to pick a random entry from a [String]
        
        
        guard let youtubeURL = URL(string: "https://www.youtube.com/watch?v=3YmMNpbFjp0") else { return }
        print(URLRequest(url: youtubeURL) )
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if urlText == "" {
          
            let url = URL(string: "https://www.youtube.com/watch?v=3YmMNpbFjp0")!
          
            webView.load(URLRequest(url: url))
        } else {
           
            let url = URL(string: "\(urlText)")!
            
            webView.load(URLRequest(url: url))
        }
    }
    var urlText: String = ""
     var webView: WKWebView!
    override func loadView(){
        
        webView = WKWebView()
        
       
      
        view = webView
    }
   
   
    
}
