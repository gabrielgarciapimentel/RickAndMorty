//
//  RMGetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Gabriel Garcia Pimentel Mendonca on 31/08/23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    let info: RMInfoResponse
    let results: [RMCharacter]
}
