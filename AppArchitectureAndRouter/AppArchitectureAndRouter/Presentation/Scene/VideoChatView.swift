//
//  VideoChatView.swift
//  AppArchitectureAndRouter
//
//  Created by inforex on 2/18/25.
//

import Foundation
import SwiftUI

public struct VideoChatView: View {
    
    private var router: RouterInterface
    private let memNo: Int
    
    public init(router: RouterInterface, memNo: Int) {
        self.router = router
        self.memNo = memNo
    }
    
    public var body: some View {
        VStack {
            Text("\(self.memNo)과의 영상채팅방")
                .bold()
            
            Spacer().frame(height: 30)
            
            Text("\(self.memNo)이랑 채팅 할래요")
                .onTapGesture {
                    router.push(.chat(self.memNo))
                }
            
            Spacer().frame(height: 30)
            
            Text("pop")
                .onTapGesture {
                    router.pop()
                }
            
            Spacer().frame(height: 30)
            
            Text("pop depth 3")
                .onTapGesture {
                    router.pop(depth: 3)
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
        .background(.green)
    }
}
