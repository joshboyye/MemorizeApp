//
//  ContentView.swift
//  Memorize
//
//  Created by Joshua Wang on 1/14/24.
//
import SwiftUI

struct ContentView: View { //struc
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.green)
        .padding()
    }
}

struct CardView: View{
    var isFaceUp: Bool=false
    
    var body: some View{
        ZStack {
            if isFaceUp{
                RoundedRectangle(cornerRadius:12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius:12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }else{
                RoundedRectangle(cornerRadius:12)
             }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
