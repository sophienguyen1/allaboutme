//
//  ContentView.swift
//  allaboutme
//
//  Created by scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var funFacts = ["I have two siblings!", "I am interested in pursuing medicine!", "This is my third year in Kode with Klossy!", "I like drinking matcha lattes!", "I like playing volleyball for fun!"]
    @State private var random = Int()
    @State private var randomFact = String()
    
    var body: some View {
        ZStack {
            Color(.systemBrown)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 15) {
                Text("Follow me on Instagram! @sophie.ngu1")
                    .italic()
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(Color.black)
                
                Image("cruise")
                        .resizable()
                        .aspectRatio(contentMode:.fit)
                        .cornerRadius(13)
                        .padding(.horizontal)
                Text("Sophie Nguyen")
                    .font(.title)
                    .fontWeight(.bold)
                
                Button("Click for some fun facts!") {
                    random = Int.random(in: 0..<5)
                    randomFact = funFacts[random]
                } .font(.title2).buttonStyle(.borderedProminent)
                    .tint(Color(hue: 1.0, saturation: 0.722, brightness: 0.561))
                Text(randomFact)
                } // closing vstack
            
            .padding()
            .background(Rectangle().foregroundColor(.white))
            .cornerRadius(4)
            .padding()
            .shadow(radius: 15)
            
        } // closing zstack
            
    }
}
    //functions
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
