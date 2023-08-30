//
//  RMEndPoint.swift
//  RickAndMorty
//
//  Created by Gabriel Garcia Pimentel Mendonca on 30/08/23.
//

import Foundation


/// Rpresents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    
    /// Endpoint to get location info
    case location
    
    /// Endpoint to get episode info
    case episode
}
