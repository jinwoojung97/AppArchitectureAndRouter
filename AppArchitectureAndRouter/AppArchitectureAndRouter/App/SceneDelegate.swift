//
//  SceneDelegate.swift
//  AppArchitectureAndRouter
//
//  Created by inforex on 2/19/25.
//

import UIKit
import SwiftUI

class SceneDelegate: NSObject, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
 
        window?.makeKeyAndVisible()
        
        let view = RootView()
        
        let vc = UIHostingController(rootView: view)
        window?.rootViewController = vc
    }
}
