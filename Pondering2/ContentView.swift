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
                        lily = "lilyPad"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.teal)
                                
                    Spacer()
                        .frame(height:550)
                    
                    Image(lily)
                        
                   
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom)
                    
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
