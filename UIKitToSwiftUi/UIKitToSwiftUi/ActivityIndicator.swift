//
//  ActivityIndicator.swift
//  UIKitToSwiftUi
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import SwiftUI
struct ActivityIndicator: UIViewRepresentable {
    var animating: Bool
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    func updateUIView(_ activityIndicator:
                       UIActivityIndicatorView, context: Context) {
        if animating{
            activityIndicator.startAnimating()
        }
        else
        {
            activityIndicator.stopAnimating()
        }
    }
}
