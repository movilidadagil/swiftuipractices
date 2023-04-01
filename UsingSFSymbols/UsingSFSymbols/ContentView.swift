//
//  ContentView.swift
//  UsingSFSymbols
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var wifi_on = false

    var body: some View {
        VStack{
            HStack{
                Image(systemName: "j")
                Image(systemName: "u")
                Image(systemName: "t")
                Image(systemName: "i")
                Image(systemName: "o")

            }.symbolVariant(.fill.circle)
                .foregroundStyle(.yellow, .blue)
                .font(.title)
            
            HStack{
                Image(systemName: "t.circle.fill")
                Image(systemName: "e.circle.fill")
                    .foregroundStyle(.red)
                Image(systemName: "c.circle.fill")
                    .imageScale(.large)
                Image(systemName: "h.circle.fill")
                    .accessibility(identifier: "Letter H")
            }.foregroundColor(.blue)
                .font(.title)
                .padding()
            HStack{
                Image(systemName: "allergens")
                Image(systemName: "ladybug")
                
            }.symbolVariant(.fill)
                .symbolRenderingMode(.multicolor)
                .font(.largeTitle)
            Toggle(isOn: $wifi_on){
                Label("Wifi",systemImage: "wifi")
            }.foregroundStyle(wifi_on ? .blue : .red)
                .padding()

            }

        
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
