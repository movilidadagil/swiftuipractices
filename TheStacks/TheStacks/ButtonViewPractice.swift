//
//  ButtonViewPractice.swift
//  TheStacks
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import Foundation
import SwiftUI

struct ButtonViewPractice : View {
    var body : some View {
        Text("this is button view practice")
    }
}

struct ButtonViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        ButtonViewPractice().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
    
  
}
