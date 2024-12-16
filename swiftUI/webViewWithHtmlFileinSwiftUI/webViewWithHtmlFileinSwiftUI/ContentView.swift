//
//  ContentView.swift
//  webViewWithHtmlFileinSwiftUI
//
//  Created by Naga Murali Akula on 15/07/24.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView()
    }
}

struct WebView: UIViewRepresentable {
    
    let webView: WKWebView
    
    init() {
        webView = WKWebView(frame: .zero)
    }
    
    func makeUIView(context: Context) -> WKWebView {
        webView.allowsBackForwardNavigationGestures = true
        return webView
        
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
       if let url = Bundle.main.url(forResource: "devff5ececf8", withExtension: "html") {
            webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        } else {
            print("File not found")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
