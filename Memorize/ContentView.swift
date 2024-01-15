//
//  ContentView.swift
//  Memorize
//
//  Created by Joshua Wang on 1/14/24.
//
import SwiftUI

struct ContentView: View { //struc
    //let emojis: Array<String> = ["👻","🎃","🕷","😈"] this is the more og way but the bottem one is more simple way
    let emojis: [String] = ["👻","🎃","🕷","😈","😈"]

    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in //emojis.indices - indices = range 
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.green)
        .padding()
    }
}

struct CardView: View{
    let content: String
    @State var isFaceUp = false //state is creating a pointer
    
    var body: some View{
        ZStack {
            let base = RoundedRectangle(cornerRadius:12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
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
 
