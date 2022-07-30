//
//  ContentView.swift
//  ViewModifier_tutorial
//
//  Created by minkyuLee on 2022/07/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world!")
                .modifier(MyRoundedText())
            
            Text("Hello, world!")
                .myRoundedTextStyle()
            
            Image(systemName: "pencil")
                .myRoundedTextStyle()
            
            Rectangle().frame(width: 100, height: 100, alignment: .center)
                .myRoundedTextStyle()
                
        }
    }
}

struct MyRoundedText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .background(Color.cyan)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth:10)
            .foregroundColor(.blue))
    }
}

extension View {
    func myRoundedTextStyle() -> some View {
        modifier(MyRoundedText())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
