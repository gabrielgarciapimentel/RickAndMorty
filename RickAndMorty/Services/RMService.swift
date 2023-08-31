//
//  RMService.swift
//  RickAndMorty
//
//  Created by Gabriel Garcia Pimentel Mendonca on 30/08/23.
//

import Foundation


/// Primary API service object to get Rick and Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()

    /// Privatized constructor
    private init() {}
    
    
    /// Send Rick And Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - expecting: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(_ request: RMRequest, expecting type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
