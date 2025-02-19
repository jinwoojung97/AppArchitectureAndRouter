//
//  ContentView.swift
//  AppArchitectureAndRouter
//
//  Created by inforex on 2/18/25.
//

import SwiftUI

struct RootView: View {
    @ObservedObject private var router: Router = Router()
    var body: some View {
        NavigationStack(path: $router.route) {
            defaultView
                .navigationDestination(for: AppScene.self) { type in
                    router.sceneView(type: type)
                }
        }
    }
    
    @ViewBuilder
    var defaultView: some View {
        ZStack {
            Color.white
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            if router.isLogin {
                MainView(router: router)
            } else {
                LoginView(router: router)
            }
        }
    }
}

#Preview {
    RootView()
}
