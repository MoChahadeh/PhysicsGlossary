//
//  WikiSheet.swift
//  PhysicsGlossary
//
//  Created by Mohamad Chahadeh on 9/8/23.
//

import SwiftUI
import WebKit

struct WikiSheet: View {
    
    var itemName:String;
    
    var body: some View {
        WebViewContainer(urlString: "https://en.wikipedia.org/wiki/\(itemName.replacingOccurrences(of: " ", with: "_"))").frame(maxWidth:.infinity, maxHeight: .infinity).ignoresSafeArea()
    }
}

struct WebViewContainer: UIViewRepresentable {
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}

