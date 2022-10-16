//
//  ContentView.swift
//  The Scroll
//
//  Created by Test User on 10/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            //Image("Scroll")
                //.padding()
            Spacer()
            Text("The Scroll")
            Spacer()
            //Image("Scroll")
                //.padding()
        }
        ScrollView() {
            VStack {
                category(tilesArray:tiles_row1,title:"Dynamic Duos")
            }
            .padding()
        }
        .multilineTextAlignment(.leading)
    }
}

struct tile: View  {
    var emoji: String
    var color: Color
    var image: String
    var title: String
    var description: String
    
    
    
    var body: some View {
            ZStack {
                Button(action: {
                    // What to perform
                }) {
                    // How the button looks like
                }
                .cornerRadius(14)
                .frame(width: 100, height: 160)
                .background(color)
                .buttonBorderShape(<#T##shape: ButtonBorderShape##ButtonBorderShape#>)
//                overlay(
//                                RoundedRectangle(cornerRadius: 25)
//                                    .stroke(Color.white, lineWidth: 2)
//                        )
                Text(emoji)
            }
        }
}
    
struct category: View {
    var tilesArray: [tile] = []
    var title: String
    var body: some View {
        
        VStack {
            Text(title)
            ScrollView(.horizontal) {
                HStack {
                    tilesArray[0]
                    tilesArray[1]
                    tilesArray[2]
                    tilesArray[3]
                    tilesArray[4]
                }
            }
        }
    }
}



var t1 = tile(emoji: "🌲🌞", color: Color.green, image: "", title: "Alphabet Attack", description:"Learn the alphabet with this fun game!")
var t2 = tile(emoji: "🌲🌞", color: Color.blue, image: "", title: "Alphabet Attack", description:"Learn the alphabet with this fun game!")
var t3 = tile(emoji: "🌲🌞", color: Color.blue, image: "", title: "Alphabet Attack", description:"Learn the alphabet with this fun game!")
var t4 = tile(emoji: "🌲🌞", color: Color.blue, image: "", title: "Alphabet Attack", description:"Learn the alphabet with this fun game!")
var t5 = tile(emoji: "🌲🌞", color: Color.blue, image: "", title: "Alphabet Attack", description:"Learn the alphabet with this fun game!")

var tiles_row1 = [t1, t2, t3, t4, t5]

// var emojiArray: [String] = [😍, 🌈, 🌊, 🌞]


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
