//
//  ContentView.swift
//  Social Media Post
//
//  Created by Jörg Klausewitz on 27.04.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(){
            
            Image(.post)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .cornerRadius(60)
            

            
        }
        

        
    }
}

#Preview {
    ContentView()
}
