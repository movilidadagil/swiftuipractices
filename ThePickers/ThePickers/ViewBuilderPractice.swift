//
//  ViewBuilderPractice.swift
//  ThePickers
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import SwiftUI

struct ViewBuilderPractice: View {
    var body: some View {
        VStack{
            BlueCircle {
                Text("Hello, World!")
            }
            BlueCircle {
                Text("Hello, World!")
                    Rectangle()
                    .fill(Color.red)
                    .frame(width:40,height:40)
            }
        }
    }
}

struct ViewBuilderPractice_Previews: PreviewProvider {
    static var previews: some View {
        ViewBuilderPractice()
    }
}
