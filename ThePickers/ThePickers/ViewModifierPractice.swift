//
//  ViewModifierPractice.swift
//  ThePickers
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import SwiftUI

struct ViewModifierPractice: View {
    var body: some View{
        VStack{
            Text("modifier").modifier(BackgroundStyle(bgColor: .blue))
            Text("extension modifier").backgroundStyle(color: .red)
        }
      
    }
}
struct BackgroundStyle:ViewModifier {
    var bgColor: Color
    func body(content: Content) -> some View {
        content.frame(width: UIScreen.main.bounds.width * 0.3)
            .foregroundColor(Color.black)
            .padding()
            .background(bgColor)
            .cornerRadius(CGFloat(20))

    }
}

extension View {
    func backgroundStyle(color:Color)-> some View{
        self.modifier(BackgroundStyle(bgColor: color))
    }
}
struct ViewModifierPractice_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierPractice()
    }
}
