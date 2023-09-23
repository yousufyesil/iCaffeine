//
//  AddCoffeeView.swift
//  iCoffee
//
//  Created by Yousuf Yesil on 20.09.23.
//

import SwiftUI

struct AddCoffeeView: View {
    @State var showAddDrink = false
    var body: some View {
        Button {
            showAddDrink.toggle()
        } label: {
            Text("Add Drink")
                .padding(50)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .background {
                    
                    Capsule()
                        .foregroundColor(.brown)
                        .frame(width: 180, height: 60)
                        .shadow(radius: 10)
                }
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .sheet(isPresented: $showAddDrink, content: {
            
            VStack{
                List {
                    Text("Club Mate")
                    Text("Milchkaffee")

                }

                Button(action: {
                    showAddDrink.toggle()
                }, label: {
                    Text("Hinzufügen")
                })
            }

        })
        
    }
}

struct AddCoffeeView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeeView()
    }
}
