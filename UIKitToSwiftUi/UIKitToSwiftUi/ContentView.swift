//
//  ContentView.swift
//  UIKitToSwiftUi
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {

    @State var animate = true
    
    var body: some View {
        VStack{
            ActivityIndicator(animating: animate)
            HStack{
                Toggle(isOn: $animate){
                    Text("Toggle Activity")
                }
            }.padding()
        }
    }


}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
