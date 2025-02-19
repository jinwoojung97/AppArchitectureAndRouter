//
//  RouterInterface.swift
//  AppArchitectureAndRouter
//
//  Created by inforex on 2/18/25.
//

import Foundation
import SwiftUI

public protocol RouterInterface {
//    associatedtype Body: View
    
//    var route: [AppScene] { get }
    func logIn()
    func logOut()
    func push(_ scene: AppScene)
    func pop()
    func pop(depth: Int)
    func popToRoot()
    
//    @ViewBuilder
//    func sceneView(type: AppScene) -> Body
//    func sceneView(type: AppScene) -> some View
}
