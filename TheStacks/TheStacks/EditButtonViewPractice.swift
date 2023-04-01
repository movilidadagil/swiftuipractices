//
//  EditButtonViewPractice.swift
//  TheStacks
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import Foundation
import SwiftUI

struct EditButtonViewPractice : View {
    @State private var animals = ["Cats","Yew","Dogs","Goats"]
    var body : some View {
        
        NavigationView() {
            List {
                ForEach(animals, id:\.self) {
                    animal in Text(animal)
                }.onDelete(perform: removeAnimal)
            }
        }
    }
    
    func removeAnimal(at offsets: IndexSet){
        animals.remove(atOffsets: offsets)
    }
}

struct EditButtonViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonViewPractice().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
    
  
}
