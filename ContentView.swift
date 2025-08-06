
//  ContentView.swift
//  TapGame in progress
//come back for more updates

import SwiftUI

struct ContentView: View {
    
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var possiblePics = ["apple", "dog", "egg"]
    
    var body: some View {
        VStack {
            Image(possiblePics[0]).resizable().aspectRatio(contentMode: .fit).frame(height : 300)
        }
        
    }
}

#Preview {
    ContentView()
}
