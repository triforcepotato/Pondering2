//
//  ContentView.swift
//  Pondering2
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        @State private var journalEntry = ""
        
        NavigationStack {
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
                    
                    Button("Submit!") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.teal)
                                
                    Spacer()
                        .frame(height:550)
                    
                    NavigationLink(destination: journalEntries()) {
                        Text("View Journal Entries")
                    }
                    .tint(.teal)
                    
                    
                    Spacer()
                    
                }//vstack
                .padding()
                
            }//zstack
        } //navstack
        
    } //view
} //struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//hello
