
//  ContentView.swift
//  TapGame
// in progress, come back for updates
//

import SwiftUI

struct ContentView: View {
    
    @State private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State private var currentPicIndex = 0
    
    var possiblePics = ["apple", "dog", "egg"]
    
    var body: some View {
        VStack {
            Image(possiblePics[currentPicIndex]).resizable().aspectRatio(contentMode: .fit).frame(height : 300)
        }
        .onReceive(timer, perform: { _ in
            changePic()
            
        })
    }
    
    func changePic() {
        if currentPicIndex == possiblePics.count - 1{
            currentPicIndex = 0
        }
        else{
            currentPicIndex += 1
        }}
    
}

#Preview {
    ContentView()
}
