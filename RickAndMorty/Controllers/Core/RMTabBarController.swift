//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Gabriel Garcia Pimentel Mendonca on 30/08/23.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }
    
    private func setupTabBar() {
        let charactersVC = RMCharactersViewController()
        let locationsVC = RMLocationsViewController()
        let episodesVC = RMEpisodesViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let charactersNC = UINavigationController(rootViewController: charactersVC)
        let locationsNC = UINavigationController(rootViewController: locationsVC)
        let episodesNC = UINavigationController(rootViewController: episodesVC)
        let settingsNC = UINavigationController(rootViewController: settingsVC)
        
        for nav in [charactersNC, locationsNC, episodesNC, settingsNC] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        charactersNC.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person.3"), tag: 0)
        locationsNC.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe.americas"), tag: 1)
        episodesNC.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv.and.mediabox"), tag: 2)
        settingsNC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear.circle"), tag: 3)
        
        setViewControllers(
            [charactersNC, locationsNC, episodesNC, settingsNC],
            animated: true)
    }
}

