//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Игорь Верхов on 30.07.2023.
//

import SwiftUI

// 1. Create Custom Modifier
struct BlueTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

// 2. Add simple way to use modifier using extension to View
extension View {
    func myCustomed() -> some View {
        modifier(BlueTitle())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .myCustomed()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
