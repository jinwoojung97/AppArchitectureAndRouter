//
//  ChatView.swift
//  AppArchitectureAndRouter
//
//  Created by inforex on 2/18/25.
//

import Foundation
import SwiftUI

public struct ChatView: View {
    private var router: RouterInterface
    private let memNo: Int
    
    public init(router: RouterInterface, memNo: Int) {
        self.router = router
        self.memNo = memNo
    }
    
    public var body: some View {
        VStack {
            Text("\(self.memNo)과의 채팅방")
                .bold()
            
            Spacer().frame(height: 30)
            
            Text("\(self.memNo)이랑 영상통화 할래요")
                .onTapGesture {
                    router.push(.videoChat(self.memNo))
                }
            
            Spacer().frame(height: 30)
            
            Text("pop")
                .onTapGesture {
                    router.pop()
                }
            
            Spacer().frame(height: 30)
            
            Text("popToRoot")
                .onTapGesture {
                    router.popToRoot()
                }
            
            Spacer().frame(height: 30)
            
            Text("로그아웃")
                .onTapGesture {
                    router.logOut()
                }
        }
        .background(.blue)
    }
}
