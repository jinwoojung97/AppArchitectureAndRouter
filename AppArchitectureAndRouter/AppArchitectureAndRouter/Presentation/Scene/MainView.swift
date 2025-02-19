//
//  MainView.swift
//  AppArchitectureAndRouter
//
//  Created by inforex on 2/18/25.
//
import SwiftUI

public struct MainView: View {
    
    private var router: RouterInterface
    
    public init(router: RouterInterface) {
        self.router = router
    }
    
    public var body: some View {
        VStack {
            Text("Main")
                .bold()
            
            Spacer().frame(height: 30)
            
            Text("123이랑 채팅할래요")
                .onTapGesture {
                    router.push(.chat(123))
                }
            
            Spacer().frame(height: 30)
            
            Text("123이랑 영상대화할래요")
                .onTapGesture {
                    router.push(.videoChat(123))
                }
            
            Spacer().frame(height: 30)
            
            Text("로그아웃")
                .onTapGesture {
                    router.logOut()
                }
        }
        .background(.orange)
    }
}
