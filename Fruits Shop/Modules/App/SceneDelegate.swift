//
//  SceneDelegate.swift
//  Fruits Shop
//
//  Created by EBPearls on 07/07/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appCoordinator:AppCoordinator?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let basecontroller = BaseNavigationController()
        let route = NavigationRoute(rootController: basecontroller)
        appCoordinator = AppCoordinator(route: route)
        window?.rootViewController = basecontroller
        window?.makeKeyAndVisible()
        
        appCoordinator?.start()
        
    }

    

}

