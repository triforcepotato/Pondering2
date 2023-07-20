//
//  ContentView.swift
//  Pondering2
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var journalEntry = ""
    @State private var lily = ""
    @State private var duck = ""
    @State private var flower = ""
    
    var body: some View {
        
            ZStack {
                
                ZStack {
                    Image ("Pond")
                        .resizable()
                        .ignoresSafeArea()
                        .aspectRatio(contentMode: .fill)
                    
                    VStack {
                        
                        Spacer()
                            .frame(height : 170)
                        Image(lily)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 75)
                        
                        Spacer()
                            .frame (height : 50)
                        
                        
                        HStack {
                            
                            Spacer()
                                .frame(height : 30)
                            Image(duck)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 75)
                        } //hstack
                        
                        Spacer()
                            .frame(height : 90)
                        HStack {
                            Image (flower)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 75)
                            Spacer()
                                .frame(height : 30)
                        } //hstack2
                        
                    } //vstack
                } //zstack
                
                VStack (spacing : 20) {
                    
                    Spacer()
                        .frame(height : 30)
                        
                    
                    Text("pick-me-ups!")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 149/255, green: 172/255, blue: 129/255))
                    
                    TextField("what made you smile today?", text: $journalEntry)
                        .multilineTextAlignment(.center)
                        .border((Color(red: 149/255, green: 172/255, blue: 129/255)), width: 2)
                        .cornerRadius(5)
                    
                    Button("Submit") {
                        lily = "lilyPad"
                        duck = "duckArt"
                        flower = "flower"
                        journalEntry = "" 
                    }
                    .buttonStyle(.borderedProminent)
                    .tint((Color(red: 149/255, green: 172/255, blue: 129/255)))
                                
                    Spacer()
                        .frame(height:550)
                    
                    
                }//vstack
                .padding()
                
            }//zstack
        
    } //view
    
} //struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//hello
