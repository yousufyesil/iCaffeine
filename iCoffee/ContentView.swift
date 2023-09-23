//
//  ContentView.swift
//  iCoffee
//
//  Created by Yousuf Yesil on 20.09.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            TabView{
                
                Overview()
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                DrinkView()
                    .tabItem {
                        Image(systemName: "mug.fill")
                    }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
