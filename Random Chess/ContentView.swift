//
//  ContentView.swift
//  Random Chess
//
//  Created by Nicolas Bravo on 6/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RandomView()
            .tabItem { Text("Randomizer") }
            .tag(0)
                            
            WhiteView()
            .tabItem { Text("White Pieces") }
            .tag(1)
            
            BlackView()
            .tabItem { Text("Black Pieces") }
            .tag(2)
        }
    }
}

struct RandomView: View {
    @State var piece = ""
    var body: some View {
        VStack{
            if piece == "" {
                Text("Click button below to begin")
            }
            else {
                Text(globalData.color + " " + piece)
            }
            Button(action: {
                if globalData.color == "White" {
                    globalData.color = "Black"
                    piece = globalData.blackArray.randomElement()!
                }
                else {
                    globalData.color = "White"
                    piece = globalData.whiteArray.randomElement()!
                }
            }) {
                Text("Randomize")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
            }
        }
    }
}

struct WhiteView: View {
    @State var queen = true
    @State var rook = true
    @State var bishop = true
    @State var knight = true
    @State var pawn = true
    var body: some View {
        VStack{
            Text("White")
                .fontWeight(.heavy)
            Toggle(isOn: $queen) {
                Text("Queen")
            }
            .onChange(of: queen, perform: { value in
                if queen && !globalData.whiteArray.contains("Queen") {
                    globalData.whiteArray.append("Queen")
                }
                else if !queen && globalData.whiteArray.contains("Queen") {
                    let index = globalData.whiteArray.firstIndex(of: "Queen")
                    globalData.whiteArray.remove(at: index!)
                }
            })
            Toggle(isOn: $rook) {
                Text("Rook")
            }
            .onChange(of: rook, perform: { value in
                if rook && !globalData.whiteArray.contains("Rook") {
                    globalData.whiteArray.append("Rook")
                }
                else if !rook && globalData.whiteArray.contains("Rook") {
                    let index = globalData.whiteArray.firstIndex(of: "Rook")
                    globalData.whiteArray.remove(at: index!)
                }
            })
            Toggle(isOn: $bishop) {
                Text("Bishop")
            }
            .onChange(of: bishop, perform: { value in
                if bishop && !globalData.whiteArray.contains("Bishop") {
                    globalData.whiteArray.append("Bishop")
                }
                else if !bishop && globalData.whiteArray.contains("Bishop") {
                    let index = globalData.whiteArray.firstIndex(of: "Bishop")
                    globalData.whiteArray.remove(at: index!)
                }
            })
            Toggle(isOn: $knight) {
                Text("Knight")
            }
            .onChange(of: knight, perform: { value in
                if knight && !globalData.whiteArray.contains("Knight") {
                    globalData.whiteArray.append("Knight")
                }
                else if !knight && globalData.whiteArray.contains("Knight") {
                    let index = globalData.whiteArray.firstIndex(of: "Knight")
                    globalData.whiteArray.remove(at: index!)
                }
            })
            Toggle(isOn: $pawn) {
                Text("Pawn")
            }
            .onChange(of: pawn, perform: { value in
                if pawn && !globalData.whiteArray.contains("Pawn") {
                    globalData.whiteArray.append("Pawn")
                }
                else if !pawn && globalData.whiteArray.contains("Pawn") {
                    let index = globalData.whiteArray.firstIndex(of: "Pawn")
                    globalData.whiteArray.remove(at: index!)
                }
            })
        }
        .padding(.horizontal)
    }
}

struct BlackView: View {
    @State var queen = true
    @State var rook = true
    @State var bishop = true
    @State var knight = true
    @State var pawn = true
    var body: some View {
        VStack{
            Text("Black")
                .fontWeight(.heavy)
            Toggle(isOn: $queen) {
                Text("Queen")
            }
            .onChange(of: queen, perform: { value in
                if queen && !globalData.blackArray.contains("Queen") {
                    globalData.blackArray.append("Queen")
                }
                else if !queen && globalData.blackArray.contains("Queen") {
                    let index = globalData.blackArray.firstIndex(of: "Queen")
                    globalData.blackArray.remove(at: index!)
                }
            })
            Toggle(isOn: $rook) {
                Text("Rook")
            }
            .onChange(of: rook, perform: { value in
                if rook && !globalData.blackArray.contains("Rook") {
                    globalData.blackArray.append("Rook")
                }
                else if !rook && globalData.blackArray.contains("Rook") {
                    let index = globalData.blackArray.firstIndex(of: "Rook")
                    globalData.blackArray.remove(at: index!)
                }
            })
            Toggle(isOn: $bishop) {
                Text("Bishop")
            }
            .onChange(of: bishop, perform: { value in
                if bishop && !globalData.blackArray.contains("Bishop") {
                    globalData.blackArray.append("Bishop")
                }
                else if !bishop && globalData.blackArray.contains("Bishop") {
                    let index = globalData.blackArray.firstIndex(of: "Bishop")
                    globalData.blackArray.remove(at: index!)
                }
            })
            Toggle(isOn: $knight) {
                Text("Knight")
            }
            .onChange(of: knight, perform: { value in
                if knight && !globalData.blackArray.contains("Knight") {
                    globalData.blackArray.append("Knight")
                }
                else if !knight && globalData.blackArray.contains("Knight") {
                    let index = globalData.blackArray.firstIndex(of: "Knight")
                    globalData.blackArray.remove(at: index!)
                }
            })
            Toggle(isOn: $pawn) {
                Text("Pawn")
            }
            .onChange(of: pawn, perform: { value in
                if pawn && !globalData.blackArray.contains("Pawn") {
                    globalData.blackArray.append("Pawn")
                }
                else if !pawn && globalData.blackArray.contains("Pawn") {
                    let index = globalData.blackArray.firstIndex(of: "Pawn")
                    globalData.blackArray.remove(at: index!)
                }
            })
        }
        .padding(.horizontal)
    }
}

struct globalData {
    static var whiteArray : [String] = ["Queen", "Rook", "Bishop", "Knight", "Pawn"]
    static var blackArray : [String] = ["Queen", "Rook", "Bishop", "Knight", "Pawn"]
    static var color = "Black"
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
