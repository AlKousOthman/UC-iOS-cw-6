//
//  ContentView.swift
//  Cw6part2
//
//  Created by Othman Alkous on 21/09/2022.
//

import SwiftUI

struct ContentView: View {
    let chooseColor = [Color.blue , Color.green , Color.yellow ,Color.red]
        @State var entry = ""
    @State var bachground = Color.red
    var body: some View {
    
        NavigationView{
            ZStack {
                Color.gray
                    .opacity(0.6)
                    .ignoresSafeArea()
                VStack{
                    Text("Pick a color")
                        .font(.system(size: 30, weight: .semibold, design: .monospaced))
                    HStack{
                        ForEach(chooseColor, id:\.self){ color in
                            Circle()
                                .fill(color)
                                .frame(width: 50, height:50)
                                .onTapGesture {
                                bachground = color
                                }
                            
                        }
                    }.padding()
                    
                    TextField("Write your entry", text: $entry)
                        .padding()
                        .frame(width: 350, height: 50, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(15)
                    NavigationLink(destination: secondview(secondbackground: bachground, entry2: entry), label: {
                        Text("Save entry")
                            .frame(width: 150, height: 60, alignment: .center)
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }).padding()
                }
            }.navigationTitle("Diary")
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
