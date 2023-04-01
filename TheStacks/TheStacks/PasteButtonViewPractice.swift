//
//  PasteButtonViewPractice.swift
//  TheStacks
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import Foundation
import SwiftUI

struct PasteButtonViewPractice : View {
    @State var text = String()
    var body : some View {
        VStack{
            Text("PasteButton controls how you paste in MACOS but is not available in IOS for more information check the \"See Also\" section of this recipe").padding()
            
            
        }.navigationBarTitle("Paste Button", displayMode: .inline)
    }
}

struct PasteButtonViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        PasteButtonViewPractice().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
    
  
}
