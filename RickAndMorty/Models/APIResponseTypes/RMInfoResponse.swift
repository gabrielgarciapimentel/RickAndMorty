//
//  RMInfoResponse.swift
//  RickAndMorty
//
//  Created by Gabriel Garcia Pimentel Mendonca on 31/08/23.
//

import Foundation

struct RMInfoResponse: Codable {
    let count: Int
    let pages: Int
    let next: String
}
