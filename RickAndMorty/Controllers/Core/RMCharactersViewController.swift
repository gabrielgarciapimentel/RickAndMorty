//
//  RMCharactersViewController.swift
//  RickAndMorty
//
//  Created by Gabriel Garcia Pimentel Mendonca on 30/08/23.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharactersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
            
        }
    }
}
