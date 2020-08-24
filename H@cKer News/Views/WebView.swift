//
//  WebView.swift
//  H@cKer News
//
//  Created by Arpit Joseph on 22/08/20.
//  Copyright © 2020 Arpit Joseph. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
    }
    }
}
