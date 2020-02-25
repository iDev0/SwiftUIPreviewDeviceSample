//
//  ContentView.swift
//  PreviewDeviceSample
//
//  Created by MakeItSimple on 2020/02/23.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Text("다중 디바이스 테스트")
                    .font(.largeTitle)
                
                Rectangle()
                    .foregroundColor(.blue)
                    .padding(.horizontal, 10)
                
                Text("테스팅").font(.title)
                Spacer()
            }
        }
        // 다크모드 적용은 NavigationView 에 붙여 사용하거나, Preview 에 붙여 사용이 가능하다.
        // 단 우선순위는 ContentView > Preview
        // ContentView 에 다크모드가 적용되어 있다면, Preview로는 light모드를 볼수없다.
        .environment(\.colorScheme, .dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
            .previewDisplayName("iPhone 11 Pro Max")
            .environment(\.colorScheme, .dark)
            
            ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            .previewDisplayName("iPhone SE")
            .environment(\.colorScheme, .light)
            
            
        }
        
        
        
    }
}
