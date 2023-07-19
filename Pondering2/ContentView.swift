//
//  ContentView.swift
//  Pondering2
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var journalEntry = ""
    
    var body: some View {
        
        var pondTrash = [Image: bananaPeel, Image: trashbag, Image: crushedSoda]
        
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
                        pondTrash.remove (at: 0)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.teal)
                                
                    Spacer()
                        .frame(height:550)
                    
                    
                    Image("bananaPeel")
                        .resizable()
                    
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
