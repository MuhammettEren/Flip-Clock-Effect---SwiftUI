//
//  ContentView.swift
//  FlipClock
//
//  Created by Muhammet Eren on 5.02.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    var body: some View {
        NavigationStack {
            VStack {
                FlipClockTextEffect(value: $count, size: CGSize(width: 100, height: 150), fontSize: 70, cornerRadius: 10, foreground: .white, background: .black)
                
                Button{
                    count += 1
                }label: {
                    Text("Update")
                        .font(.system(size: 25,weight: .bold))
                        .foregroundColor(.black)
                }
                .padding(.top,45)
            }
            .frame(width: UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
            .background(.white)
            .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    ContentView()
}
