//
//  ContentView.swift
//  spinRandom
//
//  Created by Matus Cuninka on 06/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var fruits = ["cherry", "star", "apple"] as [Any]
    @State private var score = 1000
    @State private var slot1 = Image("apple")
    @State private var slot2 = Image("star")
    @State private var slot3 = Image("cherry")
    var body: some View {
        VStack{
            Text(String(score))
            Spacer()
            HStack { // adding abreast icons
                
                slot1
                .resizable()
                .frame(width: 50.0, height: 50.0)
                slot2
                .resizable()
                .frame(width: 50.0, height: 50.0)
                slot3
                .resizable()
                .frame(width: 50.0, height: 50.0)
                
            }
            Spacer()
            Button("Spin", action: {
                if (slot1 == slot2) && (slot1 == slot3) && (slot2 == slot3){
                    //update slots
                    slot1 = Image(fruits.randomElement() as! String)
                    slot2 = Image(fruits.randomElement() as! String)
                    slot3 = Image(fruits.randomElement() as! String)
                    //update score
                    score += 5
                } else{
                    //update slots
                    slot1 = Image(fruits.randomElement() as! String)
                    slot2 = Image(fruits.randomElement() as! String)
                    slot3 = Image(fruits.randomElement() as! String)
                    //update score
                    score -= 10
                }
                if (score <= 0 ) {
                    score = 1000
                }

                
            })
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
