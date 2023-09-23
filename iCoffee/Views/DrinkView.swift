//
//  DrinkView.swift
//  iCoffee
//
//  Created by Yousuf Yesil on 20.09.23.
//

import SwiftUI

struct DrinkView: View {
    @State var showAddDrinkView = false
    @State var drinkname = String()
    @State var coffeinlevel = String()
    var body: some View {
        NavigationView {
            
                List {
                    Text("Milchkaffee")
                    Text("Club Mate")
                    Text("Hallo")
                }
                .navigationTitle("Meine Getränke")

                //AddCoffeeView()
                
                .toolbar {
                    Button {
                        showAddDrinkView.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                    
                }

            
        }
        
        
        .sheet(isPresented: $showAddDrinkView) {
            ZStack{
                NavigationView {
                    VStack{
                        List {
                            Section{
                                TextField("🥤Getränkename", text: $drinkname)
                                TextField("Koffein", text: $coffeinlevel)
                            }
                            Text("Icon")
                            Text("Messart")
                            Text("Type")
                        }
                        
                        Button {
                            showAddDrinkView.toggle()
                        } label: {
                            Text("Getränk hinzufügen")
                        }

                    }
                    .navigationTitle("Getränk hinzufügen")
                }
            }
        }
        
        
    }
    
    
    
}



struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkView()
    }
}
