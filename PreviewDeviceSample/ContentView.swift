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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
            .previewDisplayName("iPhone 11 Pro Max")
            
            ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            .previewDisplayName("iPhone SE")
        }
        
        
        
    }
}
