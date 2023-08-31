//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Gabriel Garcia Pimentel Mendonca on 31/08/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
