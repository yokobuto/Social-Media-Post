//
//  ContentView.swift
//  Social Media Post
//
//  Created by Jörg Klausewitz on 27.04.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLiked = false
    
    var body: some View {
        ZStack(){
            
            VStack(alignment: .leading){
                Image(.post)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .cornerRadius(60)
                    .onTapGesture(count: 2) {
                        likeUnlikePosting()
                    }
                
                HStack(alignment: .bottom){
                    
                    Text("Me with my girls")
                        .font(.callout)
                        .fontWeight(.bold)
                        
                    Text("Barcelona")
                        .font(.caption)
                    
                    
                }.padding(.leading)
                
            }
            
            
            Image (systemName: "heart")
                .symbolVariant(isLiked ? .fill : .none)
                .animation(.spring, value: isLiked)
                .imageScale(.large)
                .foregroundStyle(.red)
                .onTapGesture {
                    likeUnlikePosting()
                }

            
        }

    }
    
    func likeUnlikePosting(){
        isLiked.toggle()
    }
    
}

#Preview {
    ContentView()
}
