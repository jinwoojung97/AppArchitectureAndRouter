//
//  LoginView.swift
//  AppArchitectureAndRouter
//
//  Created by inforex on 2/18/25.
//

import Foundation
import SwiftUI

public struct LoginView: View {
    private var router: RouterInterface
    
    public init(router: RouterInterface) {
        self.router = router
    }
    
    public var body: some View {
        VStack {
            Text("Login")
                .bold()
            
            Spacer().frame(height: 30)
            
            Text("Login 할래요")
                .onTapGesture {
                    router.logIn()
                }
        }
        .background(.red)
    }
}
