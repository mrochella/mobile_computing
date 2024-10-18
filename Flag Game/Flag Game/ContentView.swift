//
//  ContentView.swift
//  Flag Game
//
//  Created by student on 18/10/24.
//

import SwiftUI

struct ContentView: View {
    let flags = [
        "🇮🇩", "🇺🇸", "🇬🇧", "🇮🇩", "🇰🇷",
        "🇫🇷", "🇩🇪", "🇮🇹", "🇧🇷", "🇨🇦",
        "🇨🇳", "🇦🇺", "🇮🇳", "🇲🇾", "🇲🇽",
        "🇸🇬", "🇪🇸", "🇿🇦", "🇸🇪", "🇷🇺",
        "🇵🇭", "🇦🇷", "🇹🇷", "🇳🇱", "🇦🇪"  ]
    
    @State private var currentFlag = "🇯🇵"
    
    var body: some View {
        VStack {
            
            Text("👋🏻")
                .font(.system(size: 50))
                .font(.headline)
                .padding()
            
            Text("Welcome to the flag randomizer!")
                .font(.headline)
                .padding()
            
            Text("Click the button to choose your fighter :)")
                .font(.headline)
                .padding()
            
            Text(currentFlag)
                .font(.system(size: 300))
                .padding()

            Button(action: {
                currentFlag = flags.randomElement() ?? "🇯🇵"
            }) {
                Text("Go to the next fighter!")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(70)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
