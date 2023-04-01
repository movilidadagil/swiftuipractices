//
//  MenuButtonViewPractice.swift
//  TheStacks
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import Foundation
import SwiftUI

struct MenuButtonViewPractice : View {
    var body : some View {
        Text("Menu buttons are currently available on MACOS")
            .padding()
            .navigationBarTitle("Menu Buttons", displayMode: .inline)
    }
}

struct MenuButtonViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonViewPractice().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
    
  
}
