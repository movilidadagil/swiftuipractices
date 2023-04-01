//
//  TextView.swift
//  TheStacks
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import Foundation
import SwiftUI

struct TextViewPractice : View {
    @State var password = "1234"
    @State var someText = "hasan.gul"
    var body : some View {
        VStack{
          
            Text("entered password: \(password)").fontWeight(.medium).italic()
            
            TextField("Enter some text here", text:$someText)
                .padding(.horizontal,100)
            Text("Typed text \(someText)").font(.largeTitle).underline()
            HStack{
                Text("Password:").padding(.horizontal)
                SecureField("Enter a password", text: $password).padding(.horizontal)
            }.padding()
            Text("Changing text color and make it bold")
                .foregroundColor(Color.blue)
                .bold()
            Text("Use kerning to change space between lines of text")
                .kerning(7)
            Text("Changing baseline offset")
                .baselineOffset(100)
            Text("Strikethrough")
                .strikethrough()
            Text("This is a multiline text implemented in SwiftUI. The trailing modifier was added rto the text. this text also implements multiple modifiers")
                .background(Color.yellow)
                .multilineTextAlignment(.leading)
                .lineSpacing(10)
            
           
            
        }
    }
}
struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextViewPractice().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
