//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Maciej Michalik on 10/03/2023.
//

import SwiftUI
import SafariServices
struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
            SFSafariViewController(url: url)
        }
        func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
