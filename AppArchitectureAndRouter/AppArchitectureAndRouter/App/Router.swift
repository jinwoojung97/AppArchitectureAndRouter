//
//  Router.swift
//  AppArchitectureAndRouter
//
//  Created by inforex on 2/18/25.
//

import SwiftUI

public final class Router: ObservableObject, RouterInterface {
    @Published public var route: [AppScene] = []
    @Published public var isLogin: Bool = false
    
    public init() { }
    
    public func logIn() {
        isLogin = true
    }
    
    public func logOut() {
        isLogin = false
    }
    
    public func push(_ scene: AppScene) {
        route.append(scene)
    }
    
    public func pop() {
        guard !route.isEmpty else { return }
        route.removeLast()
    }
    
    public func pop(depth: Int) {
        guard route.count >= depth else { return }
        route.removeLast(depth)
    }
    
    public func popToRoot() {
        route.removeAll()
    }
    
    @ViewBuilder
    public func sceneView(type: AppScene) -> some View {
        switch type {
        case .login:
            LoginView(router: self)
            
        case .main:
            MainView(router: self)
            
        case .chat(let memNo):
            ChatView(router:self, memNo: memNo)
            
        case .videoChat(let memNo):
            VideoChatView(router: self, memNo: memNo)
        }
    }
}
