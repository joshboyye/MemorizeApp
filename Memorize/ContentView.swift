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
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)

        }
        .foregroundColor(.green)
        .padding()
    }
}

struct CardView: View{
    @State var isFaceUp = false //state is creating a pointer
    
    var body: some View{
        ZStack {
            let base = RoundedRectangle(cornerRadius:12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }else{
                base.fill()
             }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
