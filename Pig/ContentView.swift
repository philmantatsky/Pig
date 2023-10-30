//
//  ContentView.swift
//  Pig
//
//  Created by Phillip Mantatsky on 10/30/23.
//

import SwiftUI

struct ContentView: View {
    @State var turnScore = 0
    @State var gameScore = 0
    @State var randomValue = 0
    @State var rotation = 0.0
    var body: some View {
        ZStack{
            Color.gray.opacity(0.7).ignoresSafeArea()
            VStack {
                Image("Pig").resizable().frame(width: 150, height: 150)
                CustomText(text: "Pig")
                Image("Pips \(randomValue)")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .rotationEffect(.degrees(rotation))
                    .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 1))
                    .padding(50)
                CustomText(text: "Turn Score: \(turnScore)")
                HStack{
                    Button("Roll") {
                        
                    }
                    .buttonStyle(CustomButtomStyle())
                    Button("Hold") {
                        
                    }
                    .buttonStyle(CustomButtomStyle())
                }
                CustomText(text: "Game Score: \(gameScore)")
                    }
                }
                Spacer()
            }
        }
struct CustomText: View {
    let text : String
    var body: some View{
        Text(text).font(Font.custom("Marker Felt", size: 36))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct CustomButtomStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 50)
            .font(Font.custom("Marker Felt", size: 24))
            .padding()
            .background(.red).opacity(configuration.isPressed ? 0.0 : 1.0 )
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
