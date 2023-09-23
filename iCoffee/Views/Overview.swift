//
//  Overview.swift
//  iCoffee
//
//  Created by Yousuf Yesil on 20.09.23.
//

import SwiftUI

struct Overview: View {
    @State var showAddDrink = false
    var body: some View {
        NavigationView {
            VStack{
                Text("Koffein Level")
              
                    
                InfoView()
                AddCoffeeView()
            }
            
            
            .navigationTitle("Übersicht")

        }
        .sheet(isPresented: $showAddDrink, content: {
            AddDrinkView()
        })
        
    }
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}
