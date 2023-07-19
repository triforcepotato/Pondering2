//
//  ContentView.swift
//  Pondering2
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var journalEntry = ""
    @State private var lily = Image("lilyPad")
    
    var body: some View {
        
            ZStack {
                
                Image ("Pond")
                    .resizable()
                    .ignoresSafeArea()
                    .aspectRatio(contentMode: .fill)
                
                VStack (spacing : 20) {
                    
                    Spacer()
                        
                    
                    Text("pick-me-ups!")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.green)
                    
                    TextField("what made you smile today?", text: $journalEntry)
                        .multilineTextAlignment(.center)
                        .border(Color.green, width: 2)
                        .cornerRadius(5)
                    
                    Button("Submit") {
                        // edit later 
                            
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.teal)
                                
                    Spacer()
                        .frame(height:550)
                    
                    
                    
                    Spacer()
                    
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
